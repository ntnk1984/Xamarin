using Newtonsoft.Json.Linq;
using Plugin.Fingerprint;
using Plugin.Fingerprint.Abstractions;
using System;
using System.Collections.Generic;
using System.IO;
using System.Net;
using System.Threading;
using TabbedPageWithNavigationPage.Model;
using Xamarin.Essentials;
using Xamarin.Forms;

namespace TabbedPageWithNavigationPage
{
	public partial class SettingsPage : ContentPage
	{
        User user = new User();
        IDownloader downloader = DependencyService.Get<IDownloader>();

        public SettingsPage ()
		{
			InitializeComponent ();
            downloader.OnFileDownloaded += OnFileDownloaded;



        }

        private void OnFileDownloaded(object sender, DownloadEventArgs e)
        {
            if (e.FileSaved)
            {
                //DisplayAlert("Update", "File Saved Successfully", "Close");
                DependencyService.Get<ICheckFilePermission>().Install("com.blueridge.csf.apk");

            }
            else
            {
                DisplayAlert("Update", "Error while saving the file", "Close");
            }
        }



        protected override async void OnAppearing()
        {
            base.OnAppearing();

            usernameEntry.Text = App.UserInfo.UserName ?? "";
            passwordEntry.Text = App.UserInfo.Password ?? "";
            emailEntry.Text = App.UserInfo.Email ?? "";
            emailPasswordEntry.Text = App.UserInfo.EmailPassword ?? "";
            fpSwitch.IsToggled = App.UserInfo.FP;
            versionEntry.Text = VersionTracking.CurrentVersion;

        }

        async void OnCheckUpdateButtonClicked(object sender, EventArgs e)
        {
            //LoadingBusy.IsRunning = true;
            //loginButton.IsEnabled = false;

            string result = SendGetRequest("http://csf-beta-test.northstar.edu.vn" + "/api/RemoteConfigV1/CheckVersion");

            AppVersion appVersion;

            if (result != null)
            {
                try
                {
                    App.IsUserLoggedIn = true;

                    JObject obj = JObject.Parse(result);

                    appVersion = obj.ToObject<AppVersion>();

                    if (appVersion.is_update == "1")
                    {
                        if (VersionTracking.CurrentVersion.ToString() != appVersion.version)
                        {
                            DependencyService.Get<ICheckFilePermission>().CheckPermission();

                            Thread.Sleep(1000);

                            downloader.DownloadFile(appVersion.update_url, "Download");


                        }
                        else
                        {
                            await DisplayAlert("Info", "Current version is up to date", "OK");
                        }

                    }


                    //LoadingBusy.IsRunning = false;
                    //loginButton.IsEnabled = true;

                }
                catch (Exception ex)
                {
                    //LoadingBusy.IsRunning = false;
                    //loginButton.IsEnabled = true;

                    await DisplayAlert("Error", ex.Message, "OK");

                }


            }
            else
            {
                messageLabel.Text = "Login failed";
                passwordEntry.Text = string.Empty;
                //LoadingBusy.IsRunning = false;
                //loginButton.IsEnabled = true;
            }


        }

        async void OnSaveButtonClicked(object sender, EventArgs e)
        {
            var user = App.UserDatabase.GetUserAsync(1).Result;

            user.EmailPassword = emailPasswordEntry.Text;

            App.UserInfo.Email = emailEntry.Text;

            App.UserInfo.EmailPassword = emailPasswordEntry.Text;

            user.FP = fpSwitch.IsToggled;

            await App.UserDatabase.SaveUserAsync(user);

            await DisplayAlert("Info", "Success", "OK");


        }

        async void OnLogOutButtonClicked(object sender, EventArgs e)
        {
            var user = App.UserDatabase.GetUserAsync(1).Result;

            await App.UserDatabase.DeleteUserAsync(user);

            await Navigation.PushModalAsync(new LoginPage());



        }

        async void OnToggled(object sender, ToggledEventArgs e)
        {
            if (fpSwitch.IsToggled)
            {
                if (fpSwitch.IsToggled != App.UserInfo.FP)
                {
                    var result = await CrossFingerprint.Current.IsAvailableAsync(true);
                    if (result)
                    {

                        AuthenticationRequestConfiguration authConfig = new AuthenticationRequestConfiguration("Login", "Use fingerprint to access");

                        var auth = await CrossFingerprint.Current.AuthenticateAsync(authConfig);
                        if (auth.Authenticated)
                        {
                            var user = App.UserDatabase.GetUserAsync(1).Result;

                            user.FP = fpSwitch.IsToggled;

                            await App.UserDatabase.SaveUserAsync(user);

                        }
                        else
                        {
                            await DisplayAlert("Authentication Failed", "Fingerprint authentication failed", "OK");
                        }
                    }
                }
                

            }
            else
            {
                var user = App.UserDatabase.GetUserAsync(1).Result;

                user.FP = fpSwitch.IsToggled;

                App.UserInfo.FP = fpSwitch.IsToggled;

                await App.UserDatabase.SaveUserAsync(user);
            }



        }

        public string SendGetRequest(string RequestUrl)
        {
            Uri address = new Uri(RequestUrl);
            HttpWebRequest request;
            HttpWebResponse response = null;
            StreamReader reader;
            if (address == null) { throw new ArgumentNullException("address"); }
            try
            {
                request = WebRequest.Create(address) as HttpWebRequest;
                request.UserAgent = ".NET Sample";
                request.KeepAlive = false;
                request.Timeout = 15 * 10000;
                response = request.GetResponse() as HttpWebResponse;
                if (request.HaveResponse == true && response != null)
                {
                    reader = new StreamReader(response.GetResponseStream());
                    string result = reader.ReadToEnd();
                    result = result.Replace("</string>", "");
                    return result;
                }
            }
            catch (WebException wex)
            {
                if (wex.Response != null)
                {
                    using (HttpWebResponse errorResponse = (HttpWebResponse)wex.Response)
                    {
                        Console.WriteLine(
                            "The server returned '{0}' with the status code {1} ({2:d}).",
                            errorResponse.StatusDescription, errorResponse.StatusCode,
                            errorResponse.StatusCode);
                    }
                }
            }
            finally
            {
                if (response != null) { response.Close(); }
            }
            return null;
        }

    }


}


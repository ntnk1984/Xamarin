using Newtonsoft.Json.Linq;
using System;
using System.IO;
using System.Net;
using TabbedPageWithNavigationPage.Model;
using Xamarin.Forms;
using Plugin.Fingerprint;
using Plugin.Fingerprint.Abstractions;
using Xamarin.Essentials;
using System.Threading;

namespace TabbedPageWithNavigationPage
{
    public partial class LoginPage : ContentPage
    {
        IDownloader downloader = DependencyService.Get<IDownloader>();

        public LoginPage()
        {
            InitializeComponent();
            downloader.OnFileDownloaded += OnFileDownloaded;

        }

        private void OnFileDownloaded(object sender, DownloadEventArgs e)
        {
            if (e.FileSaved)
            {
                DisplayAlert("XF Downloader", "File Saved Successfully", "Close");
            }
            else
            {
                DisplayAlert("XF Downloader", "Error while saving the file", "Close");
            }
        }

        private void DownloadClicked(object sender, EventArgs e)
        {
            if (DeviceInfo.Platform.ToString() == Device.Android)
            {
                DependencyService.Get<ICheckFilePermission>().CheckPermission();



                //DependencyService.Get<SDCard>().ApkInstall();


                //downloader.DownloadFile("https://www.mediafire.com/file/y30k4dsmvvm974o/myfirstgame.apk/file", "Download");

                //var filePath = "https://github.com/angelinn/TramlineFive.Xamarin/releases/download/2.8/com.TramlineFive.beta.v2.8.apk";

                //downloader.DownloadFile(filePath, "Download");

                DependencyService.Get<ICheckFilePermission>().Install("com.blueridge.csf.apk");


            }


        }

        protected override async void OnAppearing()
        {
            base.OnAppearing();

            var users = App.UserDatabase.GetUsersAsync();

            if (users.Result.Count > 0)
            {
                if (users.Result[0].Remember)
                {
                    usernameEntry.Text = users.Result[0].UserName;
                    passwordEntry.Text = users.Result[0].Password;
                    rememberEntry.IsChecked = users.Result[0].Remember;

                }

            }

            CheckUpdate();


        }
    

        //async void OnSignUpButtonClicked(object sender, EventArgs e)
        //{
        //    await Navigation.PushAsync(new SignUpPage());
        //}

        [Obsolete]
        async void OnAppButtonClicked(object sender, EventArgs e)
        {
            Device.OpenUri(new Uri("sip:1555000000"));
        }
        
        async void OnLoginFPButtonClicked(object sender, EventArgs e)
        {
            var result = await CrossFingerprint.Current.IsAvailableAsync(true);
            if (result)
            {
                AuthenticationRequestConfiguration authConfig = new AuthenticationRequestConfiguration("Login", "Use fingerprint to access");

                var auth = await CrossFingerprint.Current.AuthenticateAsync(authConfig);
                if (auth.Authenticated)
                {
                    var users = App.UserDatabase.GetUsersAsync();

                    if (users.Result.Count > 0)
                    {

                        App.UserInfo.UserName = users.Result[0].UserName;
                        App.UserInfo.Password = users.Result[0].Password;
                        App.UserInfo.Email = users.Result[0].Email;
                        App.UserInfo.EmailPassword = users.Result[0].EmailPassword;
                        App.UserInfo.Remember = users.Result[0].Remember;
                        

                        App.IsUserLoggedIn = true;

                        Navigation.InsertPageBefore(new MainPage(), this);
                        await Navigation.PopAsync();


                    }

                  
                }
                else{
                    await DisplayAlert("Authentication Failed", "Fingerprint authentication failed", "OK");
                }
            }
        }
        
        async void OnLoginButtonClicked(object sender, EventArgs e)
        {
            //App.UserInfo.UserName = usernameEntry.Text;
            //App.UserInfo.Pwd = passwordEntry.Text;
            //Navigation.InsertPageBefore(new MainPage(), this);
            //await Navigation.PopAsync();
            LoadingBusy.IsRunning = true;
            loginButton.IsEnabled = false;
            //string result = SendGetRequest("http://csf-beta.northstar.edu.vn" + "/api/AccountV1/Authenticate?Username=admin&Password=csvvi@2020");
            string result = SendGetRequest("http://csf-beta.northstar.edu.vn" + "/api/AccountV1/Authenticate?Username=" + usernameEntry.Text + "&Password=" + passwordEntry.Text);


            User user;

            if (result != null)
            {
                try {
                    App.IsUserLoggedIn = true;

                    JObject obj = JObject.Parse(result);

                    user = obj.ToObject<User>();



                    App.UserInfo.UserName = user.UserName;
                    App.UserInfo.Password = passwordEntry.Text;
                    App.UserInfo.Email = user.Email;
                    App.UserInfo.EmailPassword = passwordEntry.Text;
                    App.UserInfo.Remember = rememberEntry.IsChecked;

                    var user1 = App.UserDatabase.GetUserAsync(1).Result;

                    await App.UserDatabase.DeleteUserAsync(user1);

                    user.Id = 1;
                    user.Password = passwordEntry.Text;
                    user.EmailPassword = passwordEntry.Text;
                    user.Remember = rememberEntry.IsChecked;
                    await App.UserDatabase.SaveUserAsync(user);

                    App.IsUserLoggedIn = true;

                    LoadingBusy.IsRunning = false;
                    loginButton.IsEnabled = true;

                    Navigation.InsertPageBefore(new MainPage(), this);
                    await Navigation.PopAsync();

                }
                catch (Exception ex)
                {
                    LoadingBusy.IsRunning = false;
                    loginButton.IsEnabled = true;

                    await DisplayAlert("Error", ex.Message, "OK");

                }


            }
            else
            {
                messageLabel.Text = "Login failed";
                passwordEntry.Text = string.Empty;
                LoadingBusy.IsRunning = false;
                loginButton.IsEnabled = true;
            }


        }

        async void CheckUpdate()
        {
            LoadingBusy.IsRunning = true;
            loginButton.IsEnabled = false;

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
                            var resultDlg = await DisplayAlert("New Verison Available", "Please update to new version to continue use", "Update", "Cancel"); // since we are using async, we should specify the DisplayAlert as awaiting.
                            if (resultDlg == true)
                            {
                                DependencyService.Get<ICheckFilePermission>().CheckPermission();

                                Thread.Sleep(1000);

                                downloader.DownloadFile(appVersion.update_url, "Download");

                                Thread.Sleep(1000);

                                DependencyService.Get<ICheckFilePermission>().Install("com.blueridge.csf.apk");

                            }
                            else
                            {
                                return;
                            }
                        }
                        
                    }

                   
                    LoadingBusy.IsRunning = false;
                    loginButton.IsEnabled = true;

                }
                catch (Exception ex)
                {
                    LoadingBusy.IsRunning = false;
                    loginButton.IsEnabled = true;

                    await DisplayAlert("Error", ex.Message, "OK");

                }


            }
            else
            {
                messageLabel.Text = "Check failed";
                passwordEntry.Text = string.Empty;
                LoadingBusy.IsRunning = false;
                loginButton.IsEnabled = true;
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

    public class AppVersion
    {
        public string is_update { get; set; }
        public string version { get; set; }
        public string infomation { get; set; }
        public string update_url { get; set; }


    }
}


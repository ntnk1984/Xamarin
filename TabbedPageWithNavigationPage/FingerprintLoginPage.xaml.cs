using Newtonsoft.Json.Linq;
using System;
using System.IO;
using System.Net;
using TabbedPageWithNavigationPage.Model;
using Xamarin.Forms;
using Plugin.Fingerprint;
using Plugin.Fingerprint.Abstractions;

namespace TabbedPageWithNavigationPage
{
    public partial class FingerprintLoginPage : ContentPage
    {
        public FingerprintLoginPage()
        {
            InitializeComponent();
        }

        protected override async void OnAppearing()
        {
            base.OnAppearing();

            var result = await CrossFingerprint.Current.IsAvailableAsync(true);
            if (result)
            {
                AuthenticationRequestConfiguration authConfig = new AuthenticationRequestConfiguration("Login", "Use fingerprint to access");

                var auth = await CrossFingerprint.Current.AuthenticateAsync(authConfig);
                if (auth.Authenticated)
                {
                    Navigation.InsertPageBefore(new MainPage(), this);
                    await Navigation.PopAsync();

                }
                else
                {

                }
            }



        }



    }
}


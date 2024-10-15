using Plugin.Fingerprint;
using Plugin.Fingerprint.Abstractions;
using System;
using System.Collections.Generic;
using System.IO;
using TabbedPageWithNavigationPage.Data;
using TabbedPageWithNavigationPage.Model;
using Xamarin.Forms;
using Microsoft.AppCenter;
using Microsoft.AppCenter.Analytics;
using Microsoft.AppCenter.Crashes;

namespace TabbedPageWithNavigationPage
{
	public class App : Application
	{
		public static bool IsUserLoggedIn { get; set; }
		static UserDb database;
		public static object ParentWindow { get; set; }

		public static UserDb UserDatabase
		{
			get
			{
				if (database == null)
				{
					database = new UserDb(Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "User.db3"));
				}
				return database;
			}
		}

		public static User UserInfo { get; set; } = new User();

		public App ()
		{
			var users = App.UserDatabase.GetUsersAsync();

            if (users.Result.Count > 0)
            {
                App.UserInfo = users.Result[0];

                if (App.UserInfo.FP)
                {
                    MainPage = new NavigationPage(new FingerprintLoginPage());

                }
                else
                {
                    if (!App.UserInfo.Remember)
                    {
                        MainPage = new NavigationPage(new LoginPage());
                    }
                    else
                    {
                        MainPage = new NavigationPage(new MainPage());

                    }
                }
            }

            else
            {
                MainPage = new NavigationPage(new LoginPage());

            }



            //MainPage = new NavigationPage(new LoginPage());
        }

		protected override void OnStart ()
		{
			AppCenter.Start("android=4428cfaa-ce11-458d-b421-56aa49723dde;" +
				  "uwp={Your UWP App secret here};" +
				  "ios={Your iOS App secret here}",
				  typeof(Analytics), typeof(Crashes));
		}

		protected override void OnSleep ()
		{
			// Handle when your app sleeps
		}

		protected override void OnResume ()
		{
			// Handle when your app resumes
		}
	}
}


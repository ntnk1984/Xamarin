using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using TabbedPageWithNavigationPage.Droid;

[assembly: Xamarin.Forms.Dependency(typeof(CheckFilePermission))]
namespace TabbedPageWithNavigationPage.Droid
{
    public class CheckFilePermission : ICheckFilePermission
    {
        MainActivity mainActivity;

        public bool CheckPermission()
        {
            mainActivity = (TabbedPageWithNavigationPage.Droid.MainActivity)App.ParentWindow;
            if (mainActivity.CheckAppPermissions())
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        [Obsolete]
        public void ApkInstall(string pathfile)
        {
            mainActivity = (TabbedPageWithNavigationPage.Droid.MainActivity)App.ParentWindow;
            mainActivity.ApkInstall(pathfile);


        }

        public bool Install(string filename)
        {
            mainActivity = (TabbedPageWithNavigationPage.Droid.MainActivity)App.ParentWindow;
            if (mainActivity.Install(filename))
            {
                return true;
            }
            else
            {
                return false;
            }


        }
    }
}
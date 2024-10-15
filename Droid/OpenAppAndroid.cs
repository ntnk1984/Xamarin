using Android;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Support.V4.App;
using Android.Support.V4.Content;
using Android.Views;
using Android.Widget;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using TabbedPageWithNavigationPage.Droid;

[assembly: Xamarin.Forms.Dependency(typeof(OpenAppAndroid))]
namespace TabbedPageWithNavigationPage.Droid
{
    [Activity(Label = "OpenAppAndroid")]
    public class OpenAppAndroid : Activity, IOpenApp
    {
        public OpenAppAndroid() { }

        [Obsolete]
        public void OpenExternalApp()
        {
            Intent intent = Android.App.Application.Context.PackageManager.GetLaunchIntentForPackage("com.tcx.sipphone14");

            // If not NULL run the app, if not, take the user to the app store

            if (intent != null)
            {
                //intent.AddFlags(ActivityFlags.NewTask);


                //String number = "7777777777";
                //Uri call = Uri.parse("tel:" + number);
                //Intent surf = new Intent(Intent.ActionCall, call);

                //Intent intent1 = new Intent(Intent.ActionDial, Android.Net.Uri.Parse("tel:11111"));
                
                //var permissionCheck = Android.App.Application.Context.CheckSelfPermission(Manifest.Permission.CallPhone);

                //ActivityCompat.RequestPermissions(this,new String[] { Manifest.Permission.CallPhone}, 123);

                //StartActivity(intent1);
                //Intent callIntent = new Intent(Intent.ActionCall);
                //callIntent.SetData(Android.Net.Uri.Parse("tel:123457"));

                //if (ContextCompat.CheckSelfPermission(this, "CALL_PHONE") == PackageManager.per)
                //{
                //   this.StartActivity(callIntent);
                //}
                //else
                //{
                //    RequestPermissions(new String[] { "CALL_PHONE" }, 1);
                //}

                //global::Xamarin.Forms.Forms.Context.StartActivity(intent1);



            }
            else
            {
                intent = new Intent(Intent.ActionView);
                intent.AddFlags(ActivityFlags.NewTask);
                intent.SetData(Android.Net.Uri.Parse("market://details?id=com.tcx.sipphone14"));
                global::Xamarin.Forms.Forms.Context.StartActivity(intent);
            }
        }
    }
}
using System;
using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Android.OS;
using Plugin.CurrentActivity;
using Plugin.Fingerprint;
using Xamarin.Forms;
using Android.Support.V4.Content;
using Android;
using Android.Support.V4.App;
using System.IO;
using Android.Webkit;
using Android.Text;
using Java.Lang;

namespace TabbedPageWithNavigationPage.Droid
{
	[Activity (Label = "CSF", Icon = "@drawable/icon", Theme = "@style/Theme.Splash", MainLauncher = true, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation)]
	public class MainActivity : global::Xamarin.Forms.Platform.Android.FormsAppCompatActivity
	{
		private static Intent phoneCallIntent;

		protected override void OnCreate (Bundle bundle)
		{
			SetTheme(Resource.Style.MainTheme);

			base.OnCreate (bundle);

			

		//global::Xamarin.Forms.DependencyService.Register<OpenAppAndroid>();



		    CrossCurrentActivity.Current.Init(this, bundle);

		//CrossFingerprint.SetCurrentActivityResolver(() => CrossCurrentActivity.Current.Activity);

		    global::Xamarin.Forms.Forms.Init (this, bundle);


			LoadApplication (new App ());

			//DependencyService.Get<IOpenApp>().OpenExternalApp();

			App.ParentWindow = this;

		}

		public bool CheckAppPermissions()
		{
			if ((int)Build.VERSION.SdkInt < 23)
			{
				return true;
			}

			if (!(ContextCompat.CheckSelfPermission(this, Manifest.Permission.WriteExternalStorage) == (int)Permission.Granted) && !(ContextCompat.CheckSelfPermission(this, Manifest.Permission.ReadExternalStorage) == (int)Permission.Granted))
			{
				var permissions = new string[] { Manifest.Permission.ReadExternalStorage, Manifest.Permission.WriteExternalStorage, Manifest.Permission.InstallPackages, Manifest.Permission.InstantAppForegroundService };
				ActivityCompat.RequestPermissions(this, permissions, 0);
				return false;
			}
			return true;

		}

        [Obsolete]
        public void ApkInstall(string filename)
		{
			//var filename = "XYZ.apk";
			//System.Diagnostics.Debug.WriteLine("The file name is" + filename);
			var path = "Download/";
            //var destination = Path.Combine(Android.OS.Environment.ExternalStorageDirectory.AbsolutePath.ToString(), path + filename);
            //         //System.Diagnostics.Debug.WriteLine("The destination is" + destination);
            //         //Android.Net.Uri uri = Android.Net.Uri.("file://" + destination);
            //         Intent install = new Intent(Intent.ActionView);
            //         //Intent install = new Intent(Intent.ActionInstallPackage);

            //         //install.AddFlags(ActivityFlags.ClearTask);
            //         //install.SetFlags(ActivityFlags.ClearTask | ActivityFlags.NewTask);
            //install.AddFlags(ActivityFlags.GrantReadUriPermission);
            ////install.SetFlags(ActivityFlags.NewTask);
            //install.SetDataAndType(Android.Net.Uri.FromFile(new Java.IO.File(Android.OS.Environment.ExternalStorageDirectory.AbsolutePath.ToString() + "/Download/" + filename)), "application/vnd.android.package-archive");
            //install.SetFlags(ActivityFlags.NewTask);
            //Forms.Context.StartActivity(install);

            //Intent promptInstall = new Intent(Intent.ActionView).SetDataAndType(Android.Net.Uri.FromFile(new Java.IO.File(Android.OS.Environment.ExternalStorageDirectory + "/download/" + filename)), "application/vnd.android.package-archive");
            //Intent promptInstall = new Intent(Intent.ActionView).SetDataAndType(Android.Net.Uri.FromFile(new Java.IO.File("/storage/emulated/0/Download/app.apk")), "application/vnd.android.package-archive");
            //promptInstall.AddFlags(ActivityFlags.NewTask);
            //// The PendingIntent to launch our activity if the user selects this notification
            //PendingIntent contentIntent = PendingIntent.GetActivity(this, 0, promptInstall, 0);


            //var filePath = "https://github.com/angelinn/TramlineFive.Xamarin/releases/download/2.8/com.TramlineFive.beta.v2.8.apk";
   //         var filePath = "file://storage/emulated/0/Download/app.apk";
   //         var mimeTypeMap = MimeTypeMap.Singleton;
   //         var mimeType = mimeTypeMap.GetMimeTypeFromExtension(System.IO.Path.GetExtension(filePath));

   //         var intent = new Intent();
   //         intent.SetAction(Intent.ActionView);
   //         intent.SetDataAndType(Android.Net.Uri.FromFile(new Java.IO.File(Android.OS.Environment.ExternalStorageDirectory + "/download/" + "app.apk")), "application/vnd.android.package-archive");

			////PendingIntent contentIntent = PendingIntent.GetActivity(this, 0, promptInstall, 0);
			//var pendingIntent = PendingIntent.GetActivity(this, 0, intent, PendingIntentFlags.OneShot);

			//DateTime appDate = DateTime.Now;
			//DateTime Jan1St1970 = new DateTime(1970, 1, 1, 0, 0, 0, DateTimeKind.Utc);
			///// <summary>Get extra long current timestamp</summary>
			//long Millis = (long)((appDate - Jan1St1970).TotalMilliseconds);
			//Millis = Millis - 7200000; //current Time
			//long time = DateTime.Now.Ticks;

			//Notification notification = new Notification(Resource.Drawable.home, "Updates", Millis);
			//notification.Flags = NotificationFlags.AutoCancel;
			//notification.Flags = NotificationFlags.OngoingEvent;

			//notification.SetLatestEventInfo(this, "Update Complete", "Click to Install", pendingIntent);



			

		}

        [Obsolete]
        public bool Install(string filePath)
        {
            try
            {
                if (TextUtils.IsEmpty(filePath))
                    return false;

                //Java.IO.File file = new Java.IO.File(Android.OS.Environment.ExternalStorageDirectory + "/download/" + filePath);
                //Java.IO.File file = new Java.IO.File(filePath);
                Java.IO.File file = new Java.IO.File("/storage/emulated/0/DOWNLOAD/" + filePath);

                if (!file.Exists())
                {
                    return false;
                }
                Intent intent = new Intent(Intent.ActionView);
                intent.SetFlags(ActivityFlags.NewTask);
                if (Build.VERSION.SdkInt >= Android.OS.Build.VERSION_CODES.N)
                {
                    intent.AddFlags(ActivityFlags.GrantReadUriPermission);//add read and write permissions
                }
                //intent.SetDataAndType(GetPathUri(Forms.Context, filePath), "application/vnd.android.package-archive");

                var mimeTypeMap = MimeTypeMap.Singleton;
                var mimeType = mimeTypeMap.GetMimeTypeFromExtension(System.IO.Path.GetExtension(filePath));

                intent.SetDataAndType(FileProvider.GetUriForFile(Forms.Context, "com.blueridge.csf" + ".fileProvider", file), "application/vnd.android.package-archive");
                Forms.Context.StartActivity(intent);
            }
            catch (System.Exception e)
            {
                //e.PrintStackTrace();
                Toast.MakeText(Forms.Context, "Installation failed. Please download again", ToastLength.Short).Show();
                return false;
            }
            //catch (Error error)
            //{
            //    error.PrintStackTrace();
            //    Toast.MakeText(con, "Installation failed. Please download again", ToastLength.Short).Show();
            //    return false;
            //}
            return true;
        }

        [Obsolete]
        public static Android.Net.Uri GetPathUri(Context context, string filePath)
        {
            Android.Net.Uri uri;
            if (Build.VERSION.SdkInt >= Android.OS.Build.VERSION_CODES.N)
            {
                string packageName = context.PackageName;
                uri = FileProvider.GetUriForFile(context, packageName + ".fileProvider", new Java.IO.File(filePath));
            }
            else
            {
                uri = Android.Net.Uri.FromFile(new Java.IO.File(filePath));
            }
            return uri;
        }

    }




}


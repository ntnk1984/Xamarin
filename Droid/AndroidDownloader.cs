using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Xamarin.Forms;
using TabbedPageWithNavigationPage.Droid;
using System.IO;
using System.Net;
using System.ComponentModel;

[assembly: Dependency(typeof(AndroidDownloader))]
namespace TabbedPageWithNavigationPage.Droid
{
    public class AndroidDownloader : IDownloader
    {
        public event EventHandler<DownloadEventArgs> OnFileDownloaded;

        public void DownloadFile(string url, string folder)
        {
            string pathToNewFolder = Path.Combine(Android.OS.Environment.ExternalStorageDirectory.AbsolutePath, folder);
            Directory.CreateDirectory(pathToNewFolder);

            try
            {
                WebClient webClient = new WebClient();
                webClient.DownloadFileCompleted += new AsyncCompletedEventHandler(Completed);
                //string pathToNewFile = Path.Combine(pathToNewFolder, Path.GetFileName(url));
                string pathToNewFile = Path.Combine(pathToNewFolder, "com.blueridge.csf.apk");

                Java.IO.File file = new Java.IO.File("/storage/emulated/0/DOWNLOAD/com.blueridge.csf.apk");

                if (file.Exists())
                {
                    file.Delete();
                }

                webClient.DownloadFileAsync(new Uri(url), pathToNewFile);

            }
            catch (Exception ex)
            {
                if (OnFileDownloaded != null)
                    OnFileDownloaded.Invoke(this, new DownloadEventArgs(false));
            }
        }

        private void Completed(object sender, AsyncCompletedEventArgs e)
        {
            if (e.Error != null)
            {
                if (OnFileDownloaded != null)
                    OnFileDownloaded.Invoke(this, new DownloadEventArgs(false));
            }
            else
            {
                if (OnFileDownloaded != null)
                    OnFileDownloaded.Invoke(this, new DownloadEventArgs(true));
            }
        }
    }
}
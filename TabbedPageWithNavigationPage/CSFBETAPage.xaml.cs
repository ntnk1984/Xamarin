using Xamarin.Forms;

namespace TabbedPageWithNavigationPage
{
	public partial class CSFBETAPage : ContentPage
	{
		public CSFBETAPage()
		{
			InitializeComponent ();

			
		}

		protected override async void OnAppearing()
		{
			base.OnAppearing();

			var username = App.UserInfo.UserName ?? "";
			var pass = App.UserInfo.Password ?? "";

			webView.Navigated += (o, s) => {
				webView.EvaluateJavaScriptAsync("document.getElementById('Username').value = '" + username.Trim() + "';");
				webView.EvaluateJavaScriptAsync("document.getElementById('Password').value = '" + pass.Trim() + "';");
			};



		}

	}
}


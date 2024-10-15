using Xamarin.Forms;

namespace TabbedPageWithNavigationPage
{
	public partial class HelpDeskPage : ContentPage
	{
		public HelpDeskPage()
		{
			InitializeComponent ();

		}

		protected override async void OnAppearing()
		{
			var username = App.UserInfo.Email ?? "";
			var pass = App.UserInfo.EmailPassword ?? "";

			webView.Navigated += (o, s) => {
				webView.EvaluateJavaScriptAsync("document.getElementById('name').value = '" + username.Trim() + "';");
				webView.EvaluateJavaScriptAsync("document.getElementById('pass').value = '" + pass.Trim() + "';");
			};

			webView.Reload();

			base.OnAppearing();

			



		}


	}
}


using Xamarin.Forms;

namespace TabbedPageWithNavigationPage
{
	public partial class LeavePage : ContentPage
	{
		public LeavePage()
		{
			InitializeComponent ();

		}

		protected override async void OnAppearing()
		{
			var email = App.UserInfo.Email ?? "";
			var passemail = App.UserInfo.EmailPassword ?? "";

			var username = App.UserInfo.UserName ?? "";
			var pass = App.UserInfo.Password ?? "";

			webView.Navigated += (o, s) => {
				webView.EvaluateJavaScriptAsync("document.getElementById('email').value = '" + email.Trim() + "';");
				webView.EvaluateJavaScriptAsync("document.getElementById('pass').value = '" + passemail.Trim() + "';");

				webView.EvaluateJavaScriptAsync("document.getElementById('Username').value = '" + username.Trim() + "';");
				webView.EvaluateJavaScriptAsync("document.getElementById('Password').value = '" + pass.Trim() + "';");
			};

			webView.Reload();

			base.OnAppearing();

			



		}


	}
}


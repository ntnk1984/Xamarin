using Xamarin.Forms;

namespace TabbedPageWithNavigationPage
{
	public partial class MainPage : TabbedPage
	{
		public MainPage ()
		{
			InitializeComponent ();

			var users = App.UserDatabase.GetUsersAsync();

			if (users.Result.Count > 0)
			{
				App.UserInfo.UserName = users.Result[0].UserName;
				App.UserInfo.Password = users.Result[0].Password;
				App.UserInfo.Email = users.Result[0].Email;
				App.UserInfo.EmailPassword = users.Result[0].EmailPassword;
				App.UserInfo.Remember = users.Result[0].Remember;

			}
		}
	}
}


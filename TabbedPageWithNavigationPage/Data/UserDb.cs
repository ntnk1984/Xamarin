using SQLite;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using TabbedPageWithNavigationPage.Model;

namespace TabbedPageWithNavigationPage.Data
{
    public class UserDb
    {
        readonly SQLiteAsyncConnection _database;

        public UserDb(string dbPath)
        {
            _database = new SQLiteAsyncConnection(dbPath);
            _database.CreateTableAsync<User>().Wait();
        }

        public Task<List<User>> GetUsersAsync()
        {
            return _database.Table<User>().ToListAsync();
        }


        public Task<User> GetUserAsync(int id)
        {
            return _database.Table<User>()
                            .Where(i => i.Id == id)
                            .FirstOrDefaultAsync();
        }

        public Task<User> GetUserByUserNameAsync(string username)
        {
            return _database.Table<User>()
                            .Where(i => i.UserName == username)
                            .FirstOrDefaultAsync();
        }



        public Task<int> SaveUserAsync(User User)
        {
            if (User.Id != 0)
            {
                return _database.UpdateAsync(User);
            }
            else
            {
                User.Id = 1;
                return _database.InsertAsync(User);
            }
        }

        public Task<int> DeleteUserAsync(User User)
        {
            return _database.DeleteAsync(User);
        }
    }
}

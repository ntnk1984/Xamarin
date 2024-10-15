using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace TabbedPageWithNavigationPage.Model
{
    public class User
    {
        //[PrimaryKey, AutoIncrement]
        [PrimaryKey]
        public int Id { get; set; }
        public string UserType { get; set; }
        public bool IsPost { get; set; }
        public bool IsPrint { get; set; }
        public bool IsDel { get; set; }
        public bool IsEditAll { get; set; }
        public bool IsEdit { get; set; }
        public bool IsNew { get; set; }
        public bool IsAssign { get; set; }
        public bool IsAccess { get; set; }
        public bool canAccess { get; set; }
        public string crrMenu { get; set; }
        public string ExtensionNumber { get; set; }
        public string r_post { get; set; }
        public string r_print { get; set; }
        public string r_del_all { get; set; }
        public string r_edit_all { get; set; }
        public string r_search_all { get; set; }
        public string FullName { get; set; }
        public string UserName { get; set; }
        public string Email { get; set; }
        public string isTeacher { get; set; }
        public bool IsActive { get; set; }
        public string Pwd { get; set; }
        public string Divisions { get; set; }
        public string r_menus { get; set; }
        public string r_access { get; set; }
        public string r_assign { get; set; }
        public string r_new { get; set; }
        public string r_edit { get; set; }
        public string r_del { get; set; }
        public string GroupUser { get; set; }
        public string IsAdmin { get; set; }
        public string Password { get; set; }
        public string EmailPassword { get; set; }
        public Boolean Remember { get; set; } = false;
        public Boolean FP { get; set; } = false;


    }
}

using System;
using System.Collections.Generic;
using System.Text;

namespace TabbedPageWithNavigationPage
{
    public interface ICheckFilePermission
    {
        bool CheckPermission();

        bool Install(string filename);

        void ApkInstall(string pathfile);
    }
}

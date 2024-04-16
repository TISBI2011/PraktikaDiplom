using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Praktika2011.Pages
{
    /// <summary>
    /// Логика взаимодействия для LoginPage.xaml
    /// </summary>
    public partial class LoginPage : Page
    {
        public LoginPage()
        {
            InitializeComponent();

        }

        private void BLogin_Click(object sender, RoutedEventArgs e)
        {
            var loggedUser = App.DB.users.FirstOrDefault(x => x.login == TBLogin.Text && x.password == TBPassword.Text);
            if (loggedUser == null || loggedUser.secretWord != TBSecret.Text)
            {
                MessageBox.Show("Wrong Login or password or secret word");
                return;
            }

            if (loggedUser.idRole == 1)
                NavigationService.Navigate(new ManagerMainPage());
            if (loggedUser.idRole == 2)
                NavigationService.Navigate(new CallCenterMainPage());
            if (loggedUser.idRole == 3)
                NavigationService.Navigate(new EmployeeMainPage());

         


        }
    }
}

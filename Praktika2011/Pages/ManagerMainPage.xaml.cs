using Praktika2011.Models;
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
    /// Логика взаимодействия для ManagerMainPage.xaml
    /// </summary>
    public partial class ManagerMainPage : Page
    {
        public ManagerMainPage()
        {
            InitializeComponent();
            var roles = App.DB.role.ToList();
            roles.Insert(0, new role() { name = "Все" });
            CBRoles.ItemsSource = roles;
            DGUsers.ItemsSource = App.DB.users.ToList();
        }

        private void BSearch_Click(object sender, RoutedEventArgs e)
        {
            Refresh();
        }

        private void Refresh()
        {
            var searchText = TBSearch.Text;
            var selectedRole = CBRoles.SelectedItem as role;
            var users = App.DB.users.ToList();
        
            if (string.IsNullOrWhiteSpace(searchText) == false)
                users = users.Where(x => x.name.Contains(searchText)).ToList();


            if (CBRoles.SelectedIndex != 0 )
                users = users.Where(x => x.idRole == selectedRole.id).ToList();

            DGUsers.ItemsSource = users.ToList();
        }

        private void BClean_Click(object sender, RoutedEventArgs e)
        {
            TBSearch.Text = "";
            CBRoles.SelectedIndex = 0;
            Refresh();
        }
    }
}

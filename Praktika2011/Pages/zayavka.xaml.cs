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
    /// Логика взаимодействия для zayavka.xaml
    /// </summary>
    public partial class zayavka : Page
    {
        Praktika2011.Models.zayavka contextZayavka1;
        public zayavka(Praktika2011.Models.zayavka zayavka)
        {
            InitializeComponent();
            contextZayavka1 = zayavka;
            DataContext = contextZayavka1;
        }

        public void Save()
        {
            App.DB.zayavka.Add(contextZayavka1);
            App.DB.SaveChanges();
        }
    }
}

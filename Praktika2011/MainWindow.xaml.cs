using Praktika2011.Models;
using Praktika2011.Pages;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Interop;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Praktika2011
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            MainFrame.Navigate(new LoginPage());
            var encoder = new MessagingToolkit.QRCode.Codec.QRCodeEncoder();
            var user = new users();
            var image = encoder.Encode($"hi {user.login}, {user.password}", Encoding.UTF8);

            QRCode.Source = Imaging.CreateBitmapSourceFromHBitmap(image.GetHbitmap(),
                                                                    IntPtr.Zero,
                                                                    Int32Rect.Empty,
                                                                    BitmapSizeOptions.FromEmptyOptions());
        }
    }
}

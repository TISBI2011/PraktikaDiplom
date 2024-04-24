using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Interop;
using System.Windows.Media.Imaging;

namespace Praktika2011.Models
{
    public partial class users
    {
        public BitmapSource QrCode
        {
            get
            {
                var encoder = new MessagingToolkit.QRCode.Codec.QRCodeEncoder();
                var image = encoder.Encode($"{mail}", Encoding.UTF8);

                var qrcode = Imaging.CreateBitmapSourceFromHBitmap(image.GetHbitmap(),
                                                                         IntPtr.Zero,
                                                                         Int32Rect.Empty,
                                                                         null);
                return qrcode;
            }
        }
    }
}

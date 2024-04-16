using Praktika2011.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;

namespace Praktika2011
{
    public partial class App : Application
    {
        public static DemoExamKurtEntities DB = new DemoExamKurtEntities();
    }
}

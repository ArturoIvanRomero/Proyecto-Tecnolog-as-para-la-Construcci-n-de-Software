using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;

namespace SerpientesYEscaleras {
  public partial class App : Application {
    App() {
      System.Threading.Thread.CurrentThread.CurrentCulture = System.Globalization.CultureInfo.CreateSpecificCulture("");
      System.Threading.Thread.CurrentThread.CurrentCulture = System.Globalization.CultureInfo.CreateSpecificCulture("en-US");
      System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("");
    }
  }
}

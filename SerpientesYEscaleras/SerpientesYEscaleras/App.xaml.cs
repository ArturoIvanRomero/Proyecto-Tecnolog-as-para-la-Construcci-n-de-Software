using System;
using System.IO;
using System.Windows;

namespace SerpientesYEscaleras {
  public partial class App : Application {
    App() {
      String idioma = "";
      try {
        idioma = File.ReadAllText(AppDomain.CurrentDomain.BaseDirectory + "\\Configuracion.txt").Substring(0, 5);
      } catch (FileNotFoundException) {
        File.WriteAllText(AppDomain.CurrentDomain.BaseDirectory + "\\Configuracion.txt", "es-MX");
      } catch (ArgumentOutOfRangeException) {
        File.WriteAllText(AppDomain.CurrentDomain.BaseDirectory + "\\Configuracion.txt", "es-MX");
      }
      System.Threading.Thread.CurrentThread.CurrentCulture = System.Globalization.CultureInfo.CreateSpecificCulture("");
      System.Threading.Thread.CurrentThread.CurrentCulture = System.Globalization.CultureInfo.CreateSpecificCulture("en-US");
      if (idioma.Equals("en-US")) {
        System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("en-US");
      } else {
        System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("");
      }
    }
  }
}

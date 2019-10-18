using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Text.RegularExpressions;
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

namespace SerpientesYEscaleras {
  public partial class MainWindow : Window {
    public MainWindow() {
      InitializeComponent();
    }

    private void Lb_Registrarse_MouseUp(object sender, MouseButtonEventArgs e) {
      Registrarse registrarse =  new Registrarse();
      registrarse.ShowDialog();
    }

    private void Lb_ValidarCuenta_MouseUp(object sender, MouseButtonEventArgs e) {
      ValidarCuenta validarCuenta = new ValidarCuenta();
      validarCuenta.ShowDialog();
    }

    private void Bt_Ingresar_Click(object sender, RoutedEventArgs e) {
      if (ValidarDatosCompletos()) {
        if (ValidarNombreUsuario()) {
          String contrasenia = ComputeSha256Hash(pb_Contrasenia.Password);
          ServiceSYE.JugadorClient cliente = new ServiceSYE.JugadorClient();
          ServiceSYE.Jugador jugador = cliente.IniciarSesion(tb_NombreUsuario.Text, contrasenia);
          if (!jugador.NombreUsuario.Equals("")) {
            if (jugador.Codigo.Equals("00000")) {
              MenuPrincipal menuPrincipal = new MenuPrincipal(jugador);
              menuPrincipal.Show();
              this.Close();
            } else {
              tb_NombreUsuario.Text = "";
              pb_Contrasenia.Password = "";
              MessageBox.Show(Properties.Resources.mb_CuentaNoValidada, Properties.Resources.mb_Alerta);
            }
          } else {
            tb_NombreUsuario.Text = "";
            pb_Contrasenia.Password = "";
            MessageBox.Show(Properties.Resources.mb_NombreUsuarioOContraseniaIncorrectos, Properties.Resources.mb_Alerta);
          }
        } else {
          MessageBox.Show(Properties.Resources.mb_CaracteresInvalidos, Properties.Resources.mb_Alerta);
        }
      } else {
        MessageBox.Show(Properties.Resources.mb_NombreUsuarioOContraseniaVacios, Properties.Resources.mb_Alerta);
      }
    }

    private Boolean ValidarDatosCompletos() {
      Boolean validar = false;
      if (tb_NombreUsuario.Text != null && tb_NombreUsuario.Text.Length > 0) {
        if (pb_Contrasenia.Password != null && pb_Contrasenia.Password.Length > 0) {
          validar = true;
        }
      }
      return validar;
    }

    private Boolean ValidarNombreUsuario() {
      Boolean validar = true;
      for (int i = 0; i < tb_NombreUsuario.Text.Length; i++) {
        if (!((tb_NombreUsuario.Text[i] >= 65 && tb_NombreUsuario.Text[i] <= 90) || 
          (tb_NombreUsuario.Text[i] >= 97 && tb_NombreUsuario.Text[i] <= 122) ||
          (tb_NombreUsuario.Text[i] >= 48 && tb_NombreUsuario.Text[i] <= 57) ||
          tb_NombreUsuario.Text[i].Equals('ñ') || tb_NombreUsuario.Text[i].Equals('Ñ') ||
          tb_NombreUsuario.Text[i].Equals('Á') || tb_NombreUsuario.Text[i].Equals('É') ||
          tb_NombreUsuario.Text[i].Equals('Í') || tb_NombreUsuario.Text[i].Equals('Ó') ||
          tb_NombreUsuario.Text[i].Equals('Ó') || tb_NombreUsuario.Text[i].Equals('Ú') ||
          tb_NombreUsuario.Text[i].Equals('á') || tb_NombreUsuario.Text[i].Equals('é') ||
          tb_NombreUsuario.Text[i].Equals('í') || tb_NombreUsuario.Text[i].Equals('ó') ||
          tb_NombreUsuario.Text[i].Equals(' '))) {
          validar = false;
          break;
        }
      }
      return validar;
    }

    private string ComputeSha256Hash(string rawData) { 
      using (SHA256 sha256Hash = SHA256.Create()) {
        byte[] bytes = sha256Hash.ComputeHash(Encoding.UTF8.GetBytes(rawData));
        StringBuilder builder = new StringBuilder();
        for (int i = 0; i < bytes.Length; i++) {
          builder.Append(bytes[i].ToString("x2"));
        }
        return builder.ToString();
      }
    }

    private void Mi_Español_Click(object sender, RoutedEventArgs e) {
      if (mi_Idioma.Header.Equals("Language")) {
        System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("");
        MainWindow mainWindow = new MainWindow();
        mainWindow.Show();
        this.Close();
      }
    }

    private void Mi_Ingles_Click(object sender, RoutedEventArgs e) {
      if (mi_Idioma.Header.Equals("Idioma")) {
        System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("en-US");
        MainWindow mainWindow = new MainWindow();
        mainWindow.Show();
        this.Close();
      }
    }
  }
}

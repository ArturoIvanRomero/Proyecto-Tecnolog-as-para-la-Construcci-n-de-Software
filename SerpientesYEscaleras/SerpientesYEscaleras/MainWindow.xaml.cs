using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
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

namespace SerpientesYEscaleras {
  /// <summary>
  /// Lógica de interacción para MainWindow.xaml
  /// </summary>
  public partial class MainWindow : Window {
    public MainWindow() {
      InitializeComponent();
    }

    private void LbRegistrarse_MouseUp(object sender, MouseButtonEventArgs e) {
      Registrarse registrarse =  new Registrarse();
      registrarse.ShowDialog();
    }

    private void Lb_ValidarCuenta_MouseUp(object sender, MouseButtonEventArgs e) {
      ValidarCuenta validarCuenta = new ValidarCuenta();
      validarCuenta.ShowDialog();
    }

    private void BtIngresar_Click(object sender, RoutedEventArgs e) {
      if (validarDatosCompletos()) {
        String contrasenia = ComputeSha256Hash(pb_Contrasenia.Password);
        ServiceSYE.JugadorClient cliente = new ServiceSYE.JugadorClient();
        ServiceSYE.Jugador jugador = cliente.GetJugador(tb_NombreUsuario.Text, contrasenia);
        if (!jugador.NombreUsuario.Equals("")) {
          Partidas partidas = new Partidas(jugador);
          //Partida partidas = new Partida();
          partidas.Show();
          this.Close();
        } else {
          tb_NombreUsuario.Text = "";
          pb_Contrasenia.Password = "";
          MessageBox.Show("Correo o contraseña incorrectos. Verifique sus datos.", "Alerta");
        }
      } else {
        MessageBox.Show("Correo o contraseña vacios. Ingrese sus datos.", "Alerta");
      }
    }

    private Boolean validarDatosCompletos() {
      if (tb_NombreUsuario.Text != null && tb_NombreUsuario.Text.Length > 0) {
        if (pb_Contrasenia.Password != null && pb_Contrasenia.Password.Length > 0) {
          return true;
        }
      }
      return false;
    }

    private string ComputeSha256Hash(string rawData) {
      // Create a SHA256   
      using (SHA256 sha256Hash = SHA256.Create()) {
        // ComputeHash - returns byte array  
        byte[] bytes = sha256Hash.ComputeHash(Encoding.UTF8.GetBytes(rawData));
        // Convert byte array to a string   
        StringBuilder builder = new StringBuilder();
        for (int i = 0; i < bytes.Length; i++) {
          builder.Append(bytes[i].ToString("x2"));
        }
        return builder.ToString();
      }
    }
  }
}

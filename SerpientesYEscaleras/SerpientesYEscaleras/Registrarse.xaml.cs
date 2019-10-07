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
using System.Windows.Shapes;

namespace SerpientesYEscaleras {
  /// <summary>
  /// Lógica de interacción para Window1.xaml
  /// </summary>
  public partial class Registrarse : Window {
    public Registrarse() {
      InitializeComponent();
    }

    private void bt_Registrarse_Click(object sender, RoutedEventArgs e) {
      if (validarDatosCompletos()) {
        if (verificarContraseña()) {
          String codigo = generarCodigo();
          ServiceSYE.JugadorClient cliente = new ServiceSYE.JugadorClient();
          cliente.AddJugador(new ServiceSYE.Jugador {
            NombreUsuario = tb_NombreUsuario.Text,
            Contrasenia = ComputeSha256Hash(pb_Contrasenia.Password),
            CorreoElectronico = tb_CorreoElectronico.Text,
            Puntos = 1000,
            Victorias = 0,
            Codigo = ComputeSha256Hash(codigo),
            Validado = true,
          });
          MessageBox.Show("Se registró correctamente.", "Listo");
          ValidarCuenta validarCuenta = new ValidarCuenta();
          validarCuenta.Show();
          this.Close();
        } else {
          MessageBox.Show("No coincide la confirmación de la contraseña. Verifique su contraseña.", "Alerta");
        }
      } else {
        MessageBox.Show("No ingreso todos los campos. Ingrese sus datos.", "Alerta");
      }
    }

    private void bt_Cancelar_Click(object sender, RoutedEventArgs e) {
      this.Close();
    }

    private Boolean validarDatosCompletos() {
      if (tb_NombreUsuario.Text != null && tb_NombreUsuario.Text.Length > 0) {
        if (tb_CorreoElectronico.Text != null && tb_CorreoElectronico.Text.Length > 0) {
          if (pb_Contrasenia.Password != null && pb_Contrasenia.Password.Length > 0) {
            if (pb_ConfirmarContrasenia.Password != null && pb_ConfirmarContrasenia.Password.Length > 0) {
              return true;
            }
          }
        }
      }
      return false;
    }

    private Boolean verificarContraseña() {
      if (pb_Contrasenia.Password.Equals(pb_ConfirmarContrasenia.Password)) {
        return true;
      }
      return false;
    }

    private String generarCodigo() {
      String codigo = "";
      Random random = new Random();
      for (int i = 0; i < 5; i++) {
        codigo = codigo + random.Next(9);
      }
      return codigo;
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

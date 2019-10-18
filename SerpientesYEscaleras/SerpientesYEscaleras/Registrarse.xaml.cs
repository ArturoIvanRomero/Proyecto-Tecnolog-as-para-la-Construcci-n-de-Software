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
  public partial class Registrarse : Window {
    public Registrarse() {
      InitializeComponent();
    }

    private void Bt_Registrarse_Click(object sender, RoutedEventArgs e) {
      if (ValidarDatosCompletos() && ValidarContrasenia() && VerificarContrasenia() && ValidarNombreUsuario() &&
        ValidarCorreoElectronico() && VerificarNombreUsuario() && VerificarCorreoElectronico()) {
        ServiceSYE.JugadorClient cliente = new ServiceSYE.JugadorClient();
        ServiceSYE.Jugador jugador = new ServiceSYE.Jugador {
          NombreUsuario = tb_NombreUsuario.Text,
          Contrasenia = ComputeSha256Hash(pb_Contrasenia.Password),
          CorreoElectronico = tb_CorreoElectronico.Text,
          Codigo = GenerarCodigo(),
          Estadisticas = new ServiceSYE.Estadisticas {
            Puntos = 1000,
            Victorias = 0,
          }
        };
        cliente.RegistrarJugador(jugador);
        cliente.EnviarCodigoACorreo(jugador, Properties.Resources.ms_Asunto, Properties.Resources.ms_IngresaCodigo, Properties.Resources.ms_Mensaje);
        MessageBox.Show(Properties.Resources.mb_RegistroExitoso, Properties.Resources.mb_Listo);
        MessageBox.Show(Properties.Resources.mb_CorreoEnviado, Properties.Resources.mb_Codigo);
        ValidarCuenta validarCuenta = new ValidarCuenta();
        validarCuenta.Show();
        this.Close();
      }
    }

    private void Bt_Cancelar_Click(object sender, RoutedEventArgs e) {
      this.Close();
    }

    private Boolean ValidarDatosCompletos() {
      Boolean validar = false;
      if (tb_NombreUsuario.Text != null && tb_NombreUsuario.Text.Length > 0) {
        if (tb_CorreoElectronico.Text != null && tb_CorreoElectronico.Text.Length > 0) {
          if (pb_Contrasenia.Password != null && pb_Contrasenia.Password.Length > 0) {
            if (pb_ConfirmarContrasenia.Password != null && pb_ConfirmarContrasenia.Password.Length > 0) {
              validar = true;
            }
          }
        }
      }
      if (!validar) {
        MessageBox.Show(Properties.Resources.mb_DatosVacios, Properties.Resources.mb_Alerta);
      }
      return validar;
    }

    private Boolean ValidarNombreUsuario() {
      Boolean validar = true;
      for (int i = 0; i < tb_NombreUsuario.Text.Length; i++) {
        if (!((tb_NombreUsuario.Text[i] >= 65 && tb_NombreUsuario.Text[i] <= 90) ||
          (tb_NombreUsuario.Text[i] >= 97 && tb_NombreUsuario.Text[i] <= 122) ||
          (tb_NombreUsuario.Text[i] >= 48 && tb_NombreUsuario.Text[i] <= 57) ||
          tb_NombreUsuario.Text[i].Equals('ñ') || tb_NombreUsuario.Text[i].Equals('Ñ') || tb_NombreUsuario.Text[i].Equals('Á') || 
          tb_NombreUsuario.Text[i].Equals('É') || tb_NombreUsuario.Text[i].Equals('Í') || tb_NombreUsuario.Text[i].Equals('Ó') ||
          tb_NombreUsuario.Text[i].Equals('Ó') || tb_NombreUsuario.Text[i].Equals('Ú') || tb_NombreUsuario.Text[i].Equals('á') || 
          tb_NombreUsuario.Text[i].Equals('é') || tb_NombreUsuario.Text[i].Equals('í') || tb_NombreUsuario.Text[i].Equals('ó') ||
          tb_NombreUsuario.Text[i].Equals(' '))) {
          validar = false;
          break;
        }
      }
      if (!validar) {
        MessageBox.Show(Properties.Resources.mb_CaracteresInvalidos, Properties.Resources.mb_Alerta);
      }
      return validar;
    }

    private Boolean ValidarContrasenia() {
      Boolean validar = true;
      if (pb_Contrasenia.Password.Length < 8) {
        validar = false;
      }
      if (validar) {
        validar = false;
        Boolean letra = false;
        for (int i = 0; i < pb_Contrasenia.Password.Length; i++) {
          if (!letra && ((pb_Contrasenia.Password[i] >= 65 && pb_Contrasenia.Password[i] <= 90) ||
          (pb_Contrasenia.Password[i] >= 97 && pb_Contrasenia.Password[i] <= 122) ||
          pb_Contrasenia.Password[i].Equals('ñ') || pb_Contrasenia.Password[i].Equals('Ñ') || pb_Contrasenia.Password[i].Equals('Á') || 
          pb_Contrasenia.Password[i].Equals('É') || pb_Contrasenia.Password[i].Equals('Í') || pb_Contrasenia.Password[i].Equals('Ó') ||
          pb_Contrasenia.Password[i].Equals('Ó') || pb_Contrasenia.Password[i].Equals('Ú') || pb_Contrasenia.Password[i].Equals('á') || 
          pb_Contrasenia.Password[i].Equals('é') || pb_Contrasenia.Password[i].Equals('í') || pb_Contrasenia.Password[i].Equals('ó'))) {
            letra = true;
          }
          if (letra && (pb_Contrasenia.Password[i] >= 48 && pb_Contrasenia.Password[i] <= 57)) {
            validar = true;
            break;
          }
        }
      }
      if (!validar) {
        pb_ConfirmarContrasenia.Password = "";
        pb_Contrasenia.Password = "";
        MessageBox.Show(Properties.Resources.mb_ContraseniaInvalida, Properties.Resources.mb_Alerta);
      }
      return validar;
    }

    private Boolean VerificarContrasenia() {
      Boolean verificar = false;
      if (pb_Contrasenia.Password.Equals(pb_ConfirmarContrasenia.Password)) {
        verificar = true;
      } else {
        pb_ConfirmarContrasenia.Password = "";
        MessageBox.Show(Properties.Resources.mb_ContraseniaNoCoincide, Properties.Resources.mb_Alerta);
      }
      return verificar;
    }

    private Boolean ValidarCorreoElectronico() {
      Boolean validar = false;
      int posicionArroba = 0;
      for (int i = 0; i < tb_CorreoElectronico.Text.Length; i++) {
        if (tb_CorreoElectronico.Text[i].Equals(' ')) {
          validar = false;
          break;
        }
        if (tb_CorreoElectronico.Text[i].Equals('@') && i > 0) {
          if (posicionArroba > 0 || tb_CorreoElectronico.Text[i-1].Equals('.')) {
            validar = false;
            break;
          } else {
            posicionArroba = i;
          }
        }
        if (tb_CorreoElectronico.Text[i].Equals('.') && posicionArroba > 0 && i > posicionArroba + 1) {
          if (i < tb_CorreoElectronico.Text.Length - 1) {
            validar = true;
          } else {
            validar = false;
          }
        }
      }
      if (!validar) {
        MessageBox.Show(Properties.Resources.mb_CorreoInvalido, Properties.Resources.mb_Alerta);
      }
      return validar;
    }

    private Boolean VerificarNombreUsuario() {
      Boolean verificar = false;
      ServiceSYE.JugadorClient cliente = new ServiceSYE.JugadorClient();
      ServiceSYE.Jugador jugador = cliente.ObtenerJugadorPorNombre(tb_NombreUsuario.Text);
      if (jugador.NombreUsuario.Equals("")) {
        verificar = true;
      } else {
        tb_NombreUsuario.Text = "";
        MessageBox.Show(Properties.Resources.mb_NombreOcupado, Properties.Resources.mb_Alerta);
      }
      return verificar;
    }

    private Boolean VerificarCorreoElectronico() {
      Boolean verificar = false;
      ServiceSYE.JugadorClient cliente = new ServiceSYE.JugadorClient();
      ServiceSYE.Jugador jugador = cliente.ObtenerJugadorPorCorreo(tb_CorreoElectronico.Text);
      if (jugador.CorreoElectronico.Equals("")) {
        verificar = true;
      } else {
        tb_CorreoElectronico.Text = "";
        MessageBox.Show(Properties.Resources.mb_CorreoOcupado, Properties.Resources.mb_Alerta);
      }
      return verificar;
    }

    private String GenerarCodigo() {
      String codigo = "";
      while (codigo.Equals("")) {
        Random random = new Random();
        for (int i = 0; i < 5; i++) {
          codigo = codigo + random.Next(9);
        }
        ServiceSYE.JugadorClient cliente = new ServiceSYE.JugadorClient();
        if (!cliente.ValidarCodigo(codigo) || codigo.Equals("00000")) {
          codigo = "";
        }
      }
      return codigo;
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
  }
}

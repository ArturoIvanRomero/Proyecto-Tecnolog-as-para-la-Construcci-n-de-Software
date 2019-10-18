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
using System.Windows.Shapes;

namespace SerpientesYEscaleras {
  public partial class ValidarCuenta : Window {
    public ValidarCuenta() {
      InitializeComponent();
    }

    private void Bt_Aceptar_Click(object sender, RoutedEventArgs e) {
      ServiceSYE.JugadorClient cliente = new ServiceSYE.JugadorClient();
      ServiceSYE.Jugador jugador = cliente.ObtenerJugadorPorCodigo(tb_CodigoVerificacion.Text);
      if (!tb_CodigoVerificacion.Text.Equals("")) {
        if (ValidarCodigo(jugador)) {
          cliente.ValidarJugador(tb_CodigoVerificacion.Text);
          MessageBox.Show(Properties.Resources.mb_CuentaValidada + jugador.NombreUsuario + ".", Properties.Resources.mb_Listo);
          this.Close();
        }
      } else {
        MessageBox.Show(Properties.Resources.mb_CodigoVacio, Properties.Resources.mb_Alerta);
      }
    }

    private Boolean ValidarCodigo(ServiceSYE.Jugador jugador) {
      Boolean validar = false, numero = true;
      for (int i = 0; i < tb_CodigoVerificacion.Text.Length; i++) {
        if (!(tb_CodigoVerificacion.Text[i] >= 48 && tb_CodigoVerificacion.Text[i] <= 57)) {
          numero = false;
          tb_CodigoVerificacion.Text = "";
          MessageBox.Show(Properties.Resources.mb_SoloNumeros, Properties.Resources.mb_Alerta);
          break;
        }
      }
      if (numero && jugador.Codigo.Equals(tb_CodigoVerificacion.Text)) {
        validar = true;
      } else {
        if (numero) {
          tb_CodigoVerificacion.Text = "";
          MessageBox.Show(Properties.Resources.mb_CodigoIncorrecto, Properties.Resources.mb_Alerta);
        }
      }
      return validar;
    }

    private void Bt_Cancelar_Click(object sender, RoutedEventArgs e) {
      this.Close();
    }

    private void Bt_Enviar_Click(object sender, RoutedEventArgs e) {
      if (tb_NombreUsuario.Text != null && tb_NombreUsuario.Text.Length > 0) {
        if (ValidarNombreUsuario()) {
          ServiceSYE.JugadorClient cliente = new ServiceSYE.JugadorClient();
          ServiceSYE.Jugador jugador = cliente.ObtenerJugadorPorNombre(tb_NombreUsuario.Text);
          if (!jugador.NombreUsuario.Equals("")) {
            if (!jugador.Codigo.Equals("00000")) {
              String codigo = GenerarCodigo();
              ServiceSYE.Jugador jugadorModificado = cliente.ModificarCodigo(jugador.Codigo, codigo);
              cliente.EnviarCodigoACorreo(jugadorModificado, Properties.Resources.ms_Asunto, Properties.Resources.ms_IngresaCodigo, Properties.Resources.ms_Mensaje);
              MessageBox.Show(Properties.Resources.mb_CodigoEnviado + jugador.CorreoElectronico + Properties.Resources.mb_IngreseCodigo, Properties.Resources.mb_Alerta);
            } else { 
              MessageBox.Show(Properties.Resources.mb_CuentaYaVerificada, Properties.Resources.mb_Alerta);
            }
          } else {
            MessageBox.Show(Properties.Resources.mb_JugadorInexistente, Properties.Resources.mb_Alerta);
          }
        } else {
          MessageBox.Show(Properties.Resources.mb_CaracteresInvalidos, Properties.Resources.mb_Alerta);
        }
      } else {
        MessageBox.Show(Properties.Resources.mb_IngreseJugador, Properties.Resources.mb_Alerta);
      }
      tb_NombreUsuario.Text = "";
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

    private String GenerarCodigo() {
      String codigo = "";
      Random random = new Random();
      for (int i = 0; i < 5; i++) {
        codigo = codigo + random.Next(9);
      }
      return codigo;
    }
  }
}

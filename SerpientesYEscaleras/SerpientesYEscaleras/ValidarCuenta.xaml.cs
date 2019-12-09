using System;
using System.ServiceModel;
using System.Windows;

namespace SerpientesYEscaleras {
  /// <summary>
  /// Clase parcial ValidarCuenta.
  /// Contiene métodos necesarios de la ventana de Validar cuenta.
  /// </summary>
  public partial class ValidarCuenta : Window {
    private ServiceSYE.JugadorClient cliente;

    /// <summary>
    /// Construtor de la ventana ValidarCuenta.
    /// </summary>
    /// <param name="prueba">
    /// Valor boolean que sirve para indicar que es el contructor que se debe ejecutar cuando se realizan pruebas.
    /// </param>
    public ValidarCuenta(Boolean prueba) {
    }

    /// <summary>
    /// Construtor de la ventana ValidarCuenta.
    /// </summary>
    public ValidarCuenta() {
      InitializeComponent();
      this.cliente = new ServiceSYE.JugadorClient();
    }

    /// <summary>
    /// Realiza el proceso para validar una cuenta.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    private void Bt_Aceptar_Click(object sender, RoutedEventArgs e) {
      if (!tb_CodigoVerificacion.Text.Equals("")) {
        if (ValidarCodigo(tb_CodigoVerificacion.Text)) {
          try {
            ServiceSYE.Jugador jugador = cliente.ObtenerJugadorPorCodigo(tb_CodigoVerificacion.Text);
            if (!jugador.NombreUsuario.Equals("*")) {
              ValidarCuentaJugador(jugador);
            } else {
              MessageBox.Show(Properties.Resources.mb_ConexionBD, Properties.Resources.mb_Alerta);
            }
          } catch (CommunicationException) {
            MessageBox.Show(Properties.Resources.mb_ConexionServidor, Properties.Resources.mb_Alerta);
          }
        } else {
          tb_CodigoVerificacion.Text = "";
          MessageBox.Show(Properties.Resources.mb_SoloNumeros, Properties.Resources.mb_Alerta);
        }
      } else {
        MessageBox.Show(Properties.Resources.mb_CodigoVacio, Properties.Resources.mb_Alerta);
      }
    }

    /// <summary>
    /// Cancela la validación de una cuenta.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    private void Bt_Cancelar_Click(object sender, RoutedEventArgs e) {
      this.Close();
    }

    /// <summary>
    /// Realiza el proceso para enviar, nuevamente, el código de verificación al correo del jugador.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    private void Bt_Enviar_Click(object sender, RoutedEventArgs e) {
      if (ValidarDatos()) {
        try {
          ServiceSYE.Jugador jugador = cliente.ObtenerJugadorPorNombre(tb_NombreUsuario.Text);
          if (ValidarJugador(jugador)) {
            if (!jugador.Codigo.Equals("00000")) {
              Registrarse registrarse = new Registrarse();
              String codigo = registrarse.GenerarCodigo();
              if (!codigo.Equals("*") && !codigo.Equals("**")) {
                EnviarNuevoCodigo(jugador, codigo);
              } else {
                MandarMensajeErrorCodigo(codigo);
              }
            } else {
              MessageBox.Show(Properties.Resources.mb_CuentaYaVerificada, Properties.Resources.mb_Alerta);
            }
          }
        } catch (CommunicationException) {
          MessageBox.Show(Properties.Resources.mb_ConexionServidor, Properties.Resources.mb_Alerta);
        }
      }
      tb_NombreUsuario.Text = "";
    }

    /// <summary>
    /// Valida que el código de verificación sólo contenga números.
    /// </summary>
    /// <param name="codigoVerificacion">
    /// Código de verificación que se quiere validar.
    /// </param>
    /// <returns>
    /// Valor boolean que es True si el código sólo tiene números, y si no es False.
    /// </returns>
    public Boolean ValidarCodigo(String codigoVerificacion) {
      Boolean validar = true;
      for (int i = 0; i < codigoVerificacion.Length; i++) {
        if (!(codigoVerificacion[i] >= 48 && codigoVerificacion[i] <= 57)) {
          validar = false;
          break;
        }
      }
      return validar;
    }

    /// <summary>
    /// Valida la cuenta de un jugador en el sistema.
    /// </summary>
    /// <param name="jugador">
    /// Objeto jugador que contiene los datos de la cuenta del jugador que se va a validar.
    /// </param>
    private void ValidarCuentaJugador(ServiceSYE.Jugador jugador) {
      if (jugador.Codigo.Equals(tb_CodigoVerificacion.Text)) {
        if (cliente.ValidarCuentaJugador(tb_CodigoVerificacion.Text)) {
          MessageBox.Show(Properties.Resources.mb_CuentaValidada + jugador.NombreUsuario + ".", Properties.Resources.mb_Listo);
          this.Close();
        } else {
          MessageBox.Show(Properties.Resources.mb_ConexionBD, Properties.Resources.mb_Alerta);
        }
      } else {
        tb_CodigoVerificacion.Text = "";
        MessageBox.Show(Properties.Resources.mb_CodigoIncorrecto, Properties.Resources.mb_Alerta);
      }
    }

    /// <summary>
    /// Valida los datos del jugador al que se le va a enviar el código de verificación.
    /// </summary>
    /// <returns>
    /// Valor boolean que es True si todos los datos son correctos y si no es False.
    /// </returns>
    private Boolean ValidarDatos() {
      Boolean validar = false;
      if (tb_NombreUsuario.Text != null && tb_NombreUsuario.Text.Length > 0) {
        if (ValidarNombreUsuario(tb_NombreUsuario.Text)) {
          validar = true;
        } else {
          MessageBox.Show(Properties.Resources.mb_CaracteresInvalidos, Properties.Resources.mb_Alerta);
        }
      } else {
        MessageBox.Show(Properties.Resources.mb_IngreseJugador, Properties.Resources.mb_Alerta);
      }
      return validar;
    }

    /// <summary>
    /// Valida que el nombre de usuario, con el que se quiere ingresar, no tenga caracteres especiales.
    /// Sólo se pueden ingresar letras del alfabeto (minúsculas y mayúsculas), vocales con acento, números y espacios.
    /// </summary>
    /// <param name="nombreUsuario">
    /// Nombre de usuario con el que se quiere ingresar.
    /// </param>
    /// <returns>
    /// Valor boolean que es True si el nombre de usuario tiene los caracteres permitidos, si no es False.
    /// </returns>
    public Boolean ValidarNombreUsuario(String nombreUsuario) {
      Boolean validar = true;
      for (int i = 0; i < nombreUsuario.Length; i++) {
        if (!((nombreUsuario[i] >= 65 && nombreUsuario[i] <= 90) ||
          (nombreUsuario[i] >= 97 && nombreUsuario[i] <= 122) ||
          (nombreUsuario[i] >= 48 && nombreUsuario[i] <= 57) ||
          nombreUsuario[i].Equals('ñ') || nombreUsuario[i].Equals('Ñ') ||
          nombreUsuario[i].Equals('Á') || nombreUsuario[i].Equals('É') ||
          nombreUsuario[i].Equals('Í') || nombreUsuario[i].Equals('Ó') ||
          nombreUsuario[i].Equals('Ó') || nombreUsuario[i].Equals('Ú') ||
          nombreUsuario[i].Equals('á') || nombreUsuario[i].Equals('é') ||
          nombreUsuario[i].Equals('í') || nombreUsuario[i].Equals('ó') ||
          nombreUsuario[i].Equals(' '))) {
          validar = false;
          break;
        }
      }
      return validar;
    }

    /// <summary>
    /// Valida que se haya encontrado el jugador y que no hubo algún error.
    /// </summary>
    /// <param name="jugador">
    /// Objeto jugador que se quiere validar.
    /// </param>
    /// <returns></returns>
    private Boolean ValidarJugador(ServiceSYE.Jugador jugador) {
      Boolean validar = false;
      if (!jugador.NombreUsuario.Equals("*")) {
        if (!jugador.NombreUsuario.Equals("")) {
          validar = true;
        } else {
          MessageBox.Show(Properties.Resources.mb_JugadorInexistente, Properties.Resources.mb_Alerta);
        }
      } else {
        MessageBox.Show(Properties.Resources.mb_ConexionBD, Properties.Resources.mb_Alerta);
      }
      return validar;
    }

    /// <summary>
    /// Envía el correo electrónico al jugador con el nuevo código de verificación.
    /// </summary>
    /// <param name="jugador">
    /// Objeto jugador que contiene los datos del jugador al que se le va a enviar el correo.
    /// </param>
    /// <param name="codigo">
    /// Código que se enviará al jugador.
    /// </param>
    private void EnviarNuevoCodigo(ServiceSYE.Jugador jugador, String codigo) {
      if (cliente.ModificarCodigo(jugador.Codigo, codigo)) {
        jugador.Codigo = codigo;
        if (cliente.EnviarCodigoACorreo(jugador, Properties.Resources.ms_Asunto, Properties.Resources.ms_IngresaCodigo, Properties.Resources.ms_Mensaje)) {
          MessageBox.Show(Properties.Resources.mb_CodigoEnviado + jugador.CorreoElectronico + Properties.Resources.mb_IngreseCodigo, Properties.Resources.mb_Alerta);
        } else {
          MessageBox.Show(Properties.Resources.mb_EnvioFallido, Properties.Resources.mb_Alerta);
        }
      } else {
        MessageBox.Show(Properties.Resources.mb_ConexionBD, Properties.Resources.mb_Alerta);
      }
    }

    /// <summary>
    /// Muestra mensaje de error de las base de datos o con el servidor, que ocurrieron al verificar que no exita el nuevo código de verificación.
    /// </summary>
    /// <param name="codigo">
    /// Código que contiene un marcador para identificar el error.
    /// </param>
    private void MandarMensajeErrorCodigo(String codigo) {
      if (codigo.Equals("*")) {
        MessageBox.Show(Properties.Resources.mb_ConexionBD, Properties.Resources.mb_Alerta);
      } else {
        MessageBox.Show(Properties.Resources.mb_ConexionServidor, Properties.Resources.mb_Alerta);
      }
    }
  }
}

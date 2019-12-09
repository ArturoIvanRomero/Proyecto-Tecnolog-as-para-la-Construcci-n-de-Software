using System;
using System.Security.Cryptography;
using System.ServiceModel;
using System.Text;
using System.Windows;

namespace SerpientesYEscaleras {
  /// <summary>
  /// Clase parcial Registrarse.
  /// Contiene métodos necesarios de la ventana de Registrarse.
  /// </summary>
  public partial class Registrarse : Window {
    private ServiceSYE.JugadorClient cliente;

    /// <summary>
    /// Construtor de la ventana ValidarCuenta.
    /// </summary>
    /// <param name="prueba">
    /// Valor boolean que sirve para indicar que es el contructor que se debe ejecutar cuando se realizan pruebas.
    /// </param>
    public Registrarse(Boolean prueba) {
      InitializeComponent();
    }

    /// <summary>
    /// Construtor de la ventana ValidarCuenta.
    /// </summary>
    public Registrarse() {
      InitializeComponent();
      this.cliente = new ServiceSYE.JugadorClient();
    }

    /// <summary>
    /// Realiza el proceso para registrar a un jugador.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    private void Bt_Registrarse_Click(object sender, RoutedEventArgs e) {
      if (ValidarDatos()) {
        ServiceSYE.Jugador jugador = CrearNuevoJugador();
        if (!jugador.Codigo.Equals("*") && !jugador.Codigo.Equals("**")) {
          RegistrarJugador(jugador);
        } else {
          if (jugador.Codigo.Equals("*")) {
            MessageBox.Show(Properties.Resources.mb_ConexionBD, Properties.Resources.mb_Alerta);
          } else {
            MessageBox.Show(Properties.Resources.mb_ConexionServidor, Properties.Resources.mb_Alerta);
          }
        }
      }
    }

    /// <summary>
    /// Cancela el registro de un jugador.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    private void Bt_Cancelar_Click(object sender, RoutedEventArgs e) {
      this.Close();
    }

    /// <summary>
    /// Muestra el mensaje de los Términos y Condiciones.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    private void Bt_Terminos_Click(object sender, RoutedEventArgs e) {
      MessageBox.Show(Properties.Resources.mb_TerminosCondiciones, Properties.Resources.bt_TerminosYPolitica);
    }

    /// <summary>
    /// Crear un objeto jugador con los datos ingresados en la interfaz gráfica.
    /// </summary>
    /// <returns>
    /// Objeto jugador con los datos del jugador que se va a registrar.
    /// </returns>
    private ServiceSYE.Jugador CrearNuevoJugador() {
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
      return jugador;
    }

    /// <summary>
    /// Registra al jugador en el sistema.
    /// </summary>
    /// <param name="jugador">
    /// Objeto jugador con los datos del jugador que se va a registrar. 
    /// </param>
    private void RegistrarJugador(ServiceSYE.Jugador jugador) {
      try {
        if (cliente.EnviarCodigoACorreo(jugador, Properties.Resources.ms_Asunto, Properties.Resources.ms_IngresaCodigo, Properties.Resources.ms_Mensaje)) {
          if (cliente.RegistrarJugador(jugador)) {
            MessageBox.Show(Properties.Resources.mb_RegistroExitoso, Properties.Resources.mb_Listo);
            MessageBox.Show(Properties.Resources.mb_CorreoEnviado, Properties.Resources.mb_Codigo);
            ValidarCuenta validarCuenta = new ValidarCuenta();
            validarCuenta.Show();
            this.Close();
          } else {
            MessageBox.Show(Properties.Resources.mb_ConexionBD, Properties.Resources.mb_Alerta);
          }
        } else {
          MessageBox.Show(Properties.Resources.mb_RegistroFallido, Properties.Resources.mb_Alerta);
        }
      } catch (CommunicationException) {
        MessageBox.Show(Properties.Resources.mb_ConexionServidor, Properties.Resources.mb_Alerta);
      }
    }

    /// <summary>
    /// Valida los datos para registrar al jugador.
    /// </summary>
    /// <returns>
    /// Valor booleano que es True si los datos son validos y False si no lo son.
    /// </returns>
    private Boolean ValidarDatos() {
      Boolean validar = false;
      if (ValidarDatosCompletos(tb_NombreUsuario.Text, tb_CorreoElectronico.Text, pb_Contrasenia.Password, pb_ConfirmarContrasenia.Password)) {
        if (ValidarContrasenia(pb_Contrasenia.Password) && ValidarNombreUsuario(pb_Contrasenia.Password)) {
          if (VerificarContrasenia(pb_Contrasenia.Password, pb_ConfirmarContrasenia.Password)) {
            if (ValidarDatosPersonales()) {
              validar = ValidarTerminosYCondiciones();
            }
          } else {
            pb_ConfirmarContrasenia.Password = "";
            MessageBox.Show(Properties.Resources.mb_ContraseniaNoCoincide, Properties.Resources.mb_Alerta);
          }
        } else {
          pb_Contrasenia.Password = "";
          pb_ConfirmarContrasenia.Password = "";
          MessageBox.Show(Properties.Resources.mb_ContraseniaInvalida, Properties.Resources.mb_Alerta);
        }
      } else {
        MessageBox.Show(Properties.Resources.mb_DatosVacios, Properties.Resources.mb_Alerta);
      }
      return validar;
    }

    /// <summary>
    /// Valida que los datos estén completos.
    /// </summary>
    /// <param name="nombre">
    /// Nombre de usuario con el que se quiere registrar el jugador.
    /// </param>
    /// <param name="correo">
    /// Correo electrónico con el que se quiere registrar el jugador.
    /// </param>
    /// <param name="contrasenia">
    /// Contraseña con el que se quiere registrar el jugador.
    /// </param>
    /// <param name="confirmarcontrasenia">
    /// Confirmación de la contraseña con el que se quiere registrar el jugador.
    /// </param>
    /// <returns>
    /// Valor boolean que es True si los datos son completos y si no es False.
    /// </returns>
    public Boolean ValidarDatosCompletos(string nombre, string correo, string contrasenia, string confirmarcontrasenia) {
      Boolean validar = false;
      if ((nombre != null && nombre.Length > 0) &&
         (correo != null && correo.Length > 0) &&
         (contrasenia != null && contrasenia.Length > 0) &&
         (confirmarcontrasenia != null && confirmarcontrasenia.Length > 0)) {
        validar = true;
      }
      return validar;
    }

    /// <summary>
    /// Valida que la contraseña sea mayor o igual a 8 caracteres y que tenga números y letras.
    /// </summary>
    /// <param name="contrasenia">
    /// Contraseña que se quiere validar.
    /// </param>
    /// <returns></returns>
    public Boolean ValidarContrasenia(String contrasenia) {
      Boolean validar = true, letra = false, numero = false;
      if (contrasenia.Length < 8) {
        validar = false;
      }
      if (validar) {
        validar = false;
        for (int i = 0; i < contrasenia.Length; i++) {
          letra = ValidarLetraEnContrasenia(letra, contrasenia, i);
          if (!numero && contrasenia[i] >= 48 && contrasenia[i] <= 57) {
            numero = true;
          }
        }
      }
      if (letra && numero) {
        validar = true;
      }
      return validar;
    }

    /// <summary>
    /// Valida que una letra de la contraseña sea una letra.
    /// </summary>
    /// <param name="letra">
    /// Valor boolean que indica que ya se encontró una letra en la contraseña.
    /// </param>
    /// <param name="contrasenia">
    /// Contraseña en la que se quiere validar si es una letra.
    /// </param>
    /// <param name="i">
    /// Posición de la contraseña en la que la que se quiere validar.
    /// </param>
    /// <returns>
    /// Valor boolean que es True si es una letra y si no es False.
    /// </returns>
    public Boolean ValidarLetraEnContrasenia(Boolean letra, String contrasenia, int i) {
      Boolean validar = letra;
      if (!letra && ((contrasenia[i] >= 65 && contrasenia[i] <= 90) ||
          (contrasenia[i] >= 97 && contrasenia[i] <= 122) ||
          contrasenia[i].Equals('ñ') || contrasenia[i].Equals('Ñ') || contrasenia[i].Equals('Á') ||
          contrasenia[i].Equals('É') || contrasenia[i].Equals('Í') || contrasenia[i].Equals('Ó') ||
          contrasenia[i].Equals('Ó') || contrasenia[i].Equals('Ú') || contrasenia[i].Equals('á') ||
          contrasenia[i].Equals('é') || contrasenia[i].Equals('í') || contrasenia[i].Equals('ó'))) {
        validar = true;
      }
      return validar;
    }

    /// <summary>
    /// Verifica que la contraseña y la confirmación de la contraseña coincidan.
    /// </summary>
    /// <param name="contrasenia">
    /// Contraseña que se quiere verificar.
    /// </param>
    /// <param name="confirmaContrasenia">
    /// Confirmación de contraseña que se quiere verificar.
    /// </param>
    /// <returns>
    /// Valor boolean que es True si los dos parámetros coinciden y si no es False.
    /// </returns>
    public Boolean VerificarContrasenia(string contrasenia, string confirmaContrasenia) {
      Boolean verificar = false;
      if (contrasenia.Equals(confirmaContrasenia)) {
        verificar = true;
      }
      return verificar;
    }

    /// <summary>
    /// Valida que el nombre de usuario y la contraseña con la que se quiere registrar el jugador son validos.
    /// </summary>
    /// <returns>
    /// Valor boolean que es True si los datos son validos y si no es False.
    /// </returns>
    private Boolean ValidarDatosPersonales() {
      Boolean validar = false;
      if (ValidarNombreUsuario(tb_NombreUsuario.Text)) {
        if (ValidarCorreoElectronico(tb_CorreoElectronico.Text)) {
          int verificarNombre = VerificarNombreUsuario(tb_NombreUsuario.Text);
          if (verificarNombre == 0) {
            int verificarCorreo = VerificarCorreoElectronico(tb_CorreoElectronico.Text);
            if (verificarCorreo == 0) {
              validar = true;
            } else {
              MandarMensajesError(verificarCorreo, false);
            }
          } else {
            MandarMensajesError(verificarNombre, true);
          }
        } else {
          MessageBox.Show(Properties.Resources.mb_CorreoInvalido, Properties.Resources.mb_Alerta);
        }
      } else {
        tb_NombreUsuario.Text = "";
        MessageBox.Show(Properties.Resources.mb_CaracteresInvalidos, Properties.Resources.mb_Alerta);
      }
      return validar;
    }

    /// <summary>
    /// Valida que el nombre de usuario, con el que se quiere registrar, no tenga caracteres especiales.
    /// Sólo se pueden ingresar letras del alfabeto (minúsculas y mayúsculas), vocales con acento, números y espacios.
    /// </summary>
    /// <param name="nombre">
    /// Nombre de usuario con el que se quiere registrar.
    /// </param>
    /// <returns>
    /// Valor boolean que es True si el nombre de usuario tiene los caracteres permitidos, si no es False.
    /// </returns>
    public Boolean ValidarNombreUsuario(string nombre) {
      Boolean validar = true;
      for (int i = 0; i < nombre.Length; i++) {
        if (!((nombre[i] >= 65 && nombre[i] <= 90) ||
          (nombre[i] >= 97 && nombre[i] <= 122) ||
          (nombre[i] >= 48 && nombre[i] <= 57) ||
          nombre[i].Equals('ñ') || nombre[i].Equals('Ñ') || nombre[i].Equals('Á') ||
          nombre[i].Equals('É') || nombre[i].Equals('Í') || nombre[i].Equals('Ó') ||
          nombre[i].Equals('Ó') || nombre[i].Equals('Ú') || nombre[i].Equals('á') ||
          nombre[i].Equals('é') || nombre[i].Equals('í') || nombre[i].Equals('ó') ||
          nombre[i].Equals(' '))) {
          validar = false;
          break;
        }
      }
      return validar;
    }

    /// <summary>
    /// Valida que el correo electrónico, con el que se quiere registrar:
    ///   tenga un arroba (@), tenga un punto (.), que tenga algo antes del arroba, que tenga el punto después del arroba, que tenga algo después del punto y que tenga algo entre el arroba y el punto.
    /// </summary>
    /// <param name="correo">
    /// Correo electrónico que se quiere validar.
    /// </param>
    /// <returns>
    /// Valor boolean que es True si el correo cumple con los requisitos y si no es False.
    /// </returns>
    public Boolean ValidarCorreoElectronico(string correo) {
      Boolean validar = false;
      int posicionArroba = 0;
      for (int i = 0; i < correo.Length; i++) {
        if (correo[i].Equals(' ')) {
          validar = false;
          break;
        }
        if (correo[i].Equals('@') && i > 0) {
          if (posicionArroba > 0 || correo[i - 1].Equals('.')) {
            validar = false;
            break;
          } else {
            posicionArroba = i;
          }
        }
        validar = ValidarPuntoEnCorreo(validar, correo, posicionArroba, i);
      }
      return validar;
    }

    /// <summary>
    /// Valida que el correo tenga un punto después del arroba.
    /// </summary>
    /// <param name="validar">
    /// Valor boolean que indica si ya se verificaron los otros aspectos del correo.
    /// </param>
    /// <param name="correo">
    /// Correo electrónico que se quiere validar.
    /// </param>
    /// <param name="posicionArroba">
    /// Posición en la que se encontró el arroba.
    /// </param>
    /// <param name="i">
    /// Posición en la que se quiere validar si hay un punto.
    /// </param>
    /// <returns>
    /// Valor boolean que es True si se valida el punto y si no es False.
    /// </returns>
    public Boolean ValidarPuntoEnCorreo(Boolean validar, String correo, int posicionArroba, int i) {
      if (correo[i].Equals('.') && posicionArroba > 0 && i > posicionArroba + 1) {
        if (i < correo.Length - 1) {
          validar = true;
        } else {
          validar = false;
        }
      }
      return validar;
    }

    /// <summary>
    /// Verifica si el nombre de usuario no está ocupado por otro jugador.
    /// </summary>
    /// <param name="nombre">
    /// Nombre de usuario que se quiere verificar.
    /// </param>
    /// <returns>
    /// Valor entero que es´0 si el nombre está disponible, es 1 si no está disponible, es 2 si hubo un error en la base de datos y es 3 si hubo un error con el servidor.
    /// </returns>
    public int VerificarNombreUsuario(string nombre) {
      int verificar = 1;
      try {
        ServiceSYE.Jugador jugador = cliente.ObtenerJugadorPorNombre(nombre);
        if (jugador.NombreUsuario.Equals("")) {
          verificar = 0;
        }
        if (jugador.NombreUsuario.Equals("*")) {
          verificar = 2;
        }
      } catch (CommunicationException) {
        verificar = 3;
      }
      return verificar;
    }

    /// <summary>
    /// Verifica si el correo electrónico no está ocupado por otro jugador.
    /// </summary>
    /// <param name="correo">
    /// Correo electrónico que se quiere verificar.
    /// </param>
    /// <returns>
    /// Valor entero que es´0 si el correo está disponible, es 1 si no está disponible, es 2 si hubo un error en la base de datos y es 3 si hubo un error con el servidor.
    /// </returns>
    public int VerificarCorreoElectronico(string correo) {
      int verificar = 1;
      try {
        ServiceSYE.Jugador jugador = cliente.ObtenerJugadorPorCorreo(correo);
        if (jugador.CorreoElectronico.Equals("")) {
          verificar = 0;
        }
        if (jugador.NombreUsuario.Equals("*")) {
          verificar = 2;
        }
      } catch (CommunicationException) {
        verificar = 3;
      }
      return verificar;
    }

    /// <summary>
    /// Valida que se seleccionó la opción de los Términos y Condiciones.
    /// </summary>
    /// <returns>
    /// Valor boolean que es True si se seleccinó la opción de los Términos y Condiciones y si no es False.
    /// </returns>
    private Boolean ValidarTerminosYCondiciones() {
      Boolean validar = false;
      if (cb_Terminos.IsChecked == true) {
        validar = true;
      } else {
        MessageBox.Show(Properties.Resources.ms_AceptarTerminos, Properties.Resources.mb_Alerta);
      }
      return validar;
    }

    /// <summary>
    /// Genera el código de verificación, que se enviará al correo electrónico, para que el jugador pueda validar su cuenta.
    /// </summary>
    /// <returns></returns>
    public String GenerarCodigo() {
      String codigo = "";
      while (string.IsNullOrEmpty(codigo)) {
        Random random = new Random();
        StringBuilder codigoGenerado = new StringBuilder();
        for (int i = 0; i < 5; i++) {
          codigoGenerado.Append(random.Next(10));
        }
        codigo = codigoGenerado.ToString();
        try {
          int validarCodigo = cliente.ValidarCodigo(codigo);
          if (validarCodigo != 2) {
            if (validarCodigo == 1 || codigo.Equals("00000")) {
              codigo = "";
            }
          } else {
            codigo = "*";
          }
        } catch (CommunicationException) {
          codigo = "**";
        }
      }
      return codigo;
    }

    /// <summary>
    /// Manda mensaje de error de nombre ocupado, correo ocupado, fallo con la base de datos o fallo con la conexión al servidor.
    /// </summary>
    /// <param name="verificar">
    /// Valor entero que indica que tipo de error surgió, si es uno es de algún dato ocupado, si es 2 es de conexión con el servidor y si es 3 es de conexión con el servidor.
    /// </param>
    /// <param name="nombre">
    /// Valor boolean que indica si es un error con el nombre.
    /// </param>
    private void MandarMensajesError(int verificar, Boolean nombre) {
      if (verificar == 1) {
        if (nombre) {
          tb_NombreUsuario.Text = "";
          MessageBox.Show(Properties.Resources.mb_NombreOcupado, Properties.Resources.mb_Alerta);
        } else {
          tb_CorreoElectronico.Text = "";
          MessageBox.Show(Properties.Resources.mb_CorreoOcupado, Properties.Resources.mb_Alerta);
        }
      } else {
        if (verificar == 2) {
          MessageBox.Show(Properties.Resources.mb_ConexionBD, Properties.Resources.mb_Alerta);
        } else {
          MessageBox.Show(Properties.Resources.mb_ConexionServidor, Properties.Resources.mb_Alerta);
        }
      }
    }

    /// <summary>
    /// Método para serializar.
    /// No fue construido por el equipo de desarrollo.
    /// </summary>
    /// <param name="rawData">
    /// Cadena que se quiere serializar.
    /// </param>
    /// <returns>
    /// Cadena serializada.
    /// </returns>
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


using System;
using System.IO;
using System.Security.Cryptography;
using System.ServiceModel;
using System.Text;
using System.Windows;
using System.Windows.Input;

namespace SerpientesYEscaleras {
  /// <summary>
  /// Clase parcial (principal) MainWindow.
  /// Contiene métodos necesarios de la ventana de Iniciar sesión.
  /// </summary>
  public partial class MainWindow : Window {
    ServiceSYE.JugadorClient cliente;

    /// <summary>
    /// Constructor de la ventana MainWindow.
    /// </summary>
    /// <param name="prueba">
    /// Valor boolean que sirve para indicar que es el contructor que se debe ejecutar cuando se realizan pruebas.
    /// </param>
    public MainWindow(Boolean prueba) {
      InitializeComponent();
    }

    /// <summary>
    /// Constructor de la ventana MainWindow.
    /// </summary>
    public MainWindow() {
      InitializeComponent();
      cliente = new ServiceSYE.JugadorClient();
    }

    /// <summary>
    /// Realiza el proceso para iniciar sesión.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    private void Bt_Ingresar_Click(object sender, RoutedEventArgs e) {
      if (ValidarDatos()) {
        try {
          ServiceSYE.Jugador jugador = cliente.IniciarSesion(tb_NombreUsuario.Text, ComputeSha256Hash(pb_Contrasenia.Password));
          if (!jugador.NombreUsuario.Equals("*")) {
            if (!jugador.NombreUsuario.Equals("")) {
              Ingresar(jugador);
            } else {
              MessageBox.Show(Properties.Resources.mb_NombreUsuarioOContraseniaIncorrectos, Properties.Resources.mb_Alerta);
            }
          } else {
            MessageBox.Show(Properties.Resources.mb_ConexionBD, Properties.Resources.mb_Alerta);
          }
        } catch (CommunicationException) {
          MessageBox.Show(Properties.Resources.mb_ConexionServidor, Properties.Resources.mb_Alerta);
        }
      }
      tb_NombreUsuario.Text = "";
      pb_Contrasenia.Password = "";
    }

    /// <summary>
    /// Invoca a la ventana de Registrarse.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    private void Lb_Registrarse_MouseUp(object sender, MouseButtonEventArgs e) {
      Registrarse registrarse = new Registrarse();
      registrarse.ShowDialog();
    }

    /// <summary>
    /// Invoca a la ventana de ValidarCuenta.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    private void Lb_ValidarCuenta_MouseUp(object sender, MouseButtonEventArgs e) {
      ValidarCuenta validarCuenta = new ValidarCuenta();
      validarCuenta.ShowDialog();
    }

    /// <summary>
    /// Cambia el idioma a Español.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    private void Mi_Español_Click(object sender, RoutedEventArgs e) {
      if (mi_Idioma.Header.Equals("Language")) {
        System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("");
        String contenido = File.ReadAllText(AppDomain.CurrentDomain.BaseDirectory + "\\Configuracion.txt");
        File.WriteAllText(AppDomain.CurrentDomain.BaseDirectory + "\\Configuracion.txt", "es-MX" + contenido.Substring(5));
        MainWindow mainWindow = new MainWindow();
        mainWindow.Show();
        this.Close();
      }
    }

    /// <summary>
    /// Cambia el idioma a Inglés.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    private void Mi_Ingles_Click(object sender, RoutedEventArgs e) {
      if (mi_Idioma.Header.Equals("Idioma")) {
        System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("en-US");
        String contenido = File.ReadAllText(AppDomain.CurrentDomain.BaseDirectory + "\\Configuracion.txt");
        File.WriteAllText(AppDomain.CurrentDomain.BaseDirectory + "\\Configuracion.txt", "en-US" + contenido.Substring(5));
        MainWindow mainWindow = new MainWindow();
        mainWindow.Show();
        this.Close();
      }
    }

    /// <summary>
    /// Valida los datos para iniciar sesión (nombre de usuario y contraseña).
    /// </summary>
    /// <returns>
    /// Valor booleano que es True si los datos son validos y False si no lo son.
    /// </returns>
    private Boolean ValidarDatos() {
      Boolean validar = false;
      if (ValidarDatosCompletos(tb_NombreUsuario.Text, pb_Contrasenia.Password)) {
        if (ValidarNombreUsuario(tb_NombreUsuario.Text)) {
          if (ValidarNombreUsuario(pb_Contrasenia.Password)) {
            validar = true;
          } else {
            MessageBox.Show(Properties.Resources.mb_CaracteresInvalidosContrasenia, Properties.Resources.mb_Alerta);
          }
        } else {
          MessageBox.Show(Properties.Resources.mb_CaracteresInvalidos, Properties.Resources.mb_Alerta);
        }
      } else {
        MessageBox.Show(Properties.Resources.mb_NombreUsuarioOContraseniaVacios, Properties.Resources.mb_Alerta);
      }
      return validar;
    }

    /// <summary>
    /// Ingresa al usuario al sistema.
    /// Verifica que el jugador tenga su cuenta validada y que no esté conectado.
    /// Invoca a la ventana de MenuPrincipal.
    /// </summary>
    /// <param name="jugador">
    /// Objeto jugador con los datos del jugador que quiere iniciar sesión. 
    /// </param>
    private void Ingresar(ServiceSYE.Jugador jugador) {
      if (jugador.Codigo.Equals("00000")) {
        if (cliente.ValidarConectado(jugador)) {
          cliente.UnirseAlJuego(jugador);
          MenuPrincipal menuPrincipal = new MenuPrincipal(jugador);
          menuPrincipal.Show();
          this.Close();
        } else {
          MessageBox.Show(Properties.Resources.ms_JugadorConectado, Properties.Resources.mb_Alerta);
        }
      } else {
        MessageBox.Show(Properties.Resources.mb_CuentaNoValidada, Properties.Resources.mb_Alerta);
      }
    }

    /// <summary>
    /// Valida que los datos para iniciar sesión estén completos.
    /// </summary>
    /// <param name="nombre"></param>
    /// <param name="contrasenia"></param>
    /// <returns></returns>
    public Boolean ValidarDatosCompletos(string nombre, string contrasenia) {
      Boolean validar = false;
      if ((nombre != null && nombre.Length > 0) &&
        (contrasenia != null && contrasenia.Length > 0)) {
        validar = true;
      }
      return validar;
    }

    /// <summary>
    /// Valida que el nombre de usuario, con el que se quiere ingresar, no tenga caracteres especiales.
    /// Sólo se pueden ingresar letras del alfabeto (minúsculas y mayúsculas), vocales con acento, números y espacios.
    /// </summary>
    /// <param name="nombre">
    /// Nombre de usuario con el que se quiere ingresar.
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
          nombre[i].Equals('ñ') || nombre[i].Equals('Ñ') ||
          nombre[i].Equals('Á') || nombre[i].Equals('É') ||
          nombre[i].Equals('Í') || nombre[i].Equals('Ó') ||
          nombre[i].Equals('Ó') || nombre[i].Equals('Ú') ||
          nombre[i].Equals('á') || nombre[i].Equals('é') ||
          nombre[i].Equals('í') || nombre[i].Equals('ó') ||
          nombre[i].Equals(' '))) {
          validar = false;
          break;
        }
      }
      return validar;
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
    public string ComputeSha256Hash(string rawData) {
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


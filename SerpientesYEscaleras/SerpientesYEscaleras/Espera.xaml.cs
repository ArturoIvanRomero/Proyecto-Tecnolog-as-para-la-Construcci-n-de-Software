using System;
using System.ServiceModel;
using System.Windows;
using System.Windows.Threading;
using SerpientesYEscaleras.ServiceSYE;

namespace SerpientesYEscaleras {
  /// <summary>
  /// Clase parcial Espera.
  /// Contiene métodos necesarios de la ventana de Espera.
  /// </summary>
  public partial class Espera : Window {
    private ServiceSYE.JugadorClient clienteJugador;
    DispatcherTimer validarConectadoEspera = new DispatcherTimer();

    /// <summary>
    /// Jugador que está en la ventana de Espera.
    /// </summary>
    public Jugador Jugador { get; set; }
    /// <summary>
    /// Partida que está en la ventana de Espera.
    /// </summary>
    public ServiceSYE.Partida Partida { get; set; }
    /// <summary>
    /// Conexión con el servidor para acceder a los métodos que proporciona sobre las partidas.
    /// </summary>
    public PartidaClient ClientePartida { get; set; }
    /// <summary>
    /// Conexión con el servidor para acceder a los métodos que proporciona sobre el chat.
    /// </summary>
    public ChatClient ClienteChat { get; set; }
    /// <summary>
    /// Objeto partidas que implementa los métodos que reciben respuesta del servidor, sobre las partidas.
    /// </summary>
    public Partidas Partidas { get; set; }
    /// <summary>
    /// Objeto mensajes que implementa los métodos que reciben respuesta del servidor, sobre el chat.
    /// </summary>
    public Mensajes Mensajes { get; set; }
    /// <summary>
    /// Valor boolean que indicasi una ventana se cierra completamente o sólo cambia a otra ventana.
    /// </summary>
    public bool Cerrar { get; set; } = true;

    /// <summary>
    /// Constructor de la ventana Espera, para las pruebas.
    /// </summary>
    public Espera() {
    }

    /// <summary>
    /// Constructor de la ventana Espera.
    /// </summary>
    /// <param name="jugador">
    /// Objeto jugador que se mandó desde el menú.
    /// </param>
    /// <param name="partida">
    /// Objeto partida que se mandó desde el menú.
    /// </param>
    public Espera(ServiceSYE.Jugador jugador, ServiceSYE.Partida partida) {
      InitializeComponent();
      if (lb_Esperando.Content.ToString().Substring(0, 1).Equals("E")) {
        lb_Esperando.FontSize = 40;
      }
      this.Title = this.Title + " - " + jugador.NombreUsuario;
      this.Jugador = jugador;
      this.Partida = partida;
      this.Partidas = new Partidas();
      InstanceContext contextoPartida = new InstanceContext(Partidas);
      this.ClientePartida = new ServiceSYE.PartidaClient(contextoPartida);
      this.Mensajes = new Mensajes();
      this.Mensajes.Espera = this;
      InstanceContext contextoChat = new InstanceContext(Mensajes);
      this.ClienteChat = new ServiceSYE.ChatClient(contextoChat);
      this.clienteJugador = new ServiceSYE.JugadorClient();
      try {
        ClientePartida.UnirsePartida(jugador, partida.Nombre);
        ClienteChat.UnirseChat(jugador.NombreUsuario, partida.Nombre);
        ValidarConectado();
        ClienteChat.EnviarMensaje("", partida.Nombre);
      } catch (CommunicationException) {
        EnviarMensajeError();
      }
    }

    /// <summary>
    /// Método que valida que el jugador sigue conectado al servidor.
    /// </summary>
    private void ValidarConectado() {
      validarConectadoEspera.Interval = new TimeSpan(0, 0, 20);
      validarConectadoEspera.Tick += (a, b) => {
        try {
          clienteJugador.UnirseAlJuego(Jugador);
        } catch (CommunicationException) {
          EnviarMensajeError();
        }
      };
      validarConectadoEspera.Start();
    }

    /// <summary>
    /// Realiza el proceso para enviar un mensaje en el chat.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    private void Bt_Enviar_Click(object sender, RoutedEventArgs e) {
      if (ValidarMensaje(tb_Mensaje.Text)) {
        if (ValidarCaracteresMensaje(tb_Mensaje.Text)) {
          try {
            ClienteChat.EnviarMensaje(tb_Mensaje.Text, Partida.Nombre);
          } catch (CommunicationException) {
            EnviarMensajeError();
          }
        } else {
          MessageBox.Show(Properties.Resources.mb_CaracteresInvalidosMensaje, Properties.Resources.mb_Ayuda);
        }
      }
      tb_Mensaje.Text = "";
    }

    /// <summary>
    /// Cancela la espera de la partida y saca al jugador de esta.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    public void Bt_Cancelar_Click(object sender, RoutedEventArgs e) {
      ClientePartida.SalirPartida(Jugador, Partida.Nombre);
      ClienteChat.EnviarMensaje(" ", Partida.Nombre);
      ClienteChat.SalirChat(Partida.Nombre);
      MenuPrincipal menuPrincipal = new MenuPrincipal(Jugador);
      menuPrincipal.Show();
      Cerrar = false;
      this.Close();
    }

    /// <summary>
    /// Cierra la ventana y saca al jugador de la partida.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e) {
      validarConectadoEspera.Stop();
      if (Cerrar) {
        ClientePartida.SalirPartida(Jugador, Partida.Nombre);
        ClienteChat.EnviarMensaje(" ", Partida.Nombre);
        ClienteChat.SalirChat(Partida.Nombre);
        clienteJugador.SalirDelJuego(Jugador);
        MainWindow mainWindow = new MainWindow();
        mainWindow.Show();
      }
    }

    /// <summary>
    /// Valida que el mensaje que se quiere enviar no esté vacío o tenga sólo espacios.
    /// </summary>
    /// <param name="mensaje">
    /// Mensaje que se quiere validar.
    /// </param>
    /// <returns>
    /// Valor boolean que es True si el mensaje es valido y si no es False.
    /// </returns>
    public Boolean ValidarMensaje(String mensaje) {
      Boolean validar = false;
      if (mensaje != null && mensaje.Length > 0) {
        for (int i = 0; i < mensaje.Length; i++) {
          if (!mensaje[i].Equals(' ')) {
            validar = true;
            break;
          }
        }
      }
      return validar;
    }

    /// <summary>
    /// Valida que el mensaje, con el que se quiere mandar, no tenga caracteres especiales.
    /// Sólo se pueden ingresar letras del alfabeto (minúsculas y mayúsculas), vocales con acento, números y espacios.
    /// </summary>
    /// <param name="mensaje">
    /// Mensaje con el que se quiere ingresar.
    /// </param>
    /// <returns>
    /// Valor boolean que es True si el mensaje tiene los caracteres permitidos, si no es False.
    /// </returns>
    public Boolean ValidarCaracteresMensaje(string mensaje) {
      Boolean validar = true;
      for (int i = 0; i < mensaje.Length; i++) {
        if (!((mensaje[i] >= 65 && mensaje[i] <= 90) ||
          (mensaje[i] >= 97 && mensaje[i] <= 122) ||
          (mensaje[i] >= 48 && mensaje[i] <= 57) ||
          mensaje[i].Equals('ñ') || mensaje[i].Equals('Ñ') ||
          mensaje[i].Equals('Á') || mensaje[i].Equals('É') ||
          mensaje[i].Equals('Í') || mensaje[i].Equals('Ó') ||
          mensaje[i].Equals('Ó') || mensaje[i].Equals('Ú') ||
          mensaje[i].Equals('á') || mensaje[i].Equals('é') ||
          mensaje[i].Equals('í') || mensaje[i].Equals('ó') ||
          mensaje[i].Equals(' '))) {
          validar = false;
          break;
        }
      }
      return validar;
    }

    /// <summary>
    /// Muetra un mensaje temporal de que se perdió la conexión con el servidor y regresa al menú.
    /// </summary>
    private void EnviarMensajeError() {
      MessageBoxTemporal.Show(Properties.Resources.mb_ConexionServidor3, Properties.Resources.mb_Alerta, 5, false);
      MenuPrincipal menuPrincipal = new MenuPrincipal(Jugador);
      menuPrincipal.Show();
      Cerrar = false;
      this.Close();
    }
  }
}

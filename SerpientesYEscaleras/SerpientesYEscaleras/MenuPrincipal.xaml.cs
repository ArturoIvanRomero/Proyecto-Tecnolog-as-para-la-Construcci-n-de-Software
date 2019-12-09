using System;
using System.ServiceModel;
using System.Windows;
using System.Windows.Input;
using System.Windows.Threading;

namespace SerpientesYEscaleras {
  /// <summary>
  /// Clase parcial MenuPrincipal.
  /// Contiene métodos necesarios de la ventana del menú principal.
  /// </summary>
  public partial class MenuPrincipal : Window {
    private ServiceSYE.Jugador jugador;
    private ServiceSYE.JugadorClient clienteJugador = new ServiceSYE.JugadorClient();
    private Boolean cerrar = true;
    DispatcherTimer validarConectadoMenu = new DispatcherTimer();

    /// <summary>
    /// Constructor de la ventana MenuPrincipal.
    /// </summary>
    /// <param name="jugador">
    /// Objeto jugador que ingreso al juego.
    /// </param>
    public MenuPrincipal(ServiceSYE.Jugador jugador) {
      InitializeComponent();
      this.Title = this.Title + " - " + jugador.NombreUsuario;
      this.jugador = jugador;
      CargarDatos();
      ValidarConectado();
    }

    /// <summary>
    /// Carga los datos del jugador en la ventana.
    /// </summary>
    private void CargarDatos() {
      mi_NombreUsuario.Header = jugador.NombreUsuario;
      mi_Puntos.Header = jugador.Estadisticas.Puntos + " " + mi_Puntos.Header;
      mi_Victorias.Header = jugador.Estadisticas.Victorias + " " + mi_Victorias.Header;
    }

    /// <summary>
    /// Método que valida que el jugador sigue conectado al servidor.
    /// </summary>
    private void ValidarConectado() {
      validarConectadoMenu.Interval = new TimeSpan(0, 0, 20);
      validarConectadoMenu.Tick += (a, b) => {
        try {
          clienteJugador.UnirseAlJuego(jugador);
        } catch (CommunicationException) {
          clienteJugador = new ServiceSYE.JugadorClient();
        }
      };
      validarConectadoMenu.Start();
    }

    /// <summary>
    /// Método que muestra la ventana de CrearPartida.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    private void Bt_CrearPartida_Click(object sender, RoutedEventArgs e) {
      CrearPartida crearPartida = new CrearPartida(this, jugador);
      crearPartida.ShowDialog();
    }

    /// <summary>
    /// Método que muestra la ventana de CrearPartida.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    private void I_Crear_MouseUp(object sender, MouseButtonEventArgs e) {
      Bt_CrearPartida_Click(sender, new RoutedEventArgs());
    }

    /// <summary>
    /// Método que muestra la ventana de UnirsePartida.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    private void Bt_UnirsePartida_Click(object sender, RoutedEventArgs e) {
      UnirsePartida unirsePartida = new UnirsePartida(this, jugador);
      unirsePartida.ShowDialog();
    }

    /// <summary>
    /// Método que muestra la ventana de UnirsePartida.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    private void I_Unirse_MouseUp(object sender, MouseButtonEventArgs e) {
      Bt_UnirsePartida_Click(sender, new RoutedEventArgs());
    }

    /// <summary>
    /// Método que muestra la ventana de TablaPosiciones.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    private void Bt_TablaPosiciones_Click(object sender, RoutedEventArgs e) {
      TablaPosiciones tablaPosiciones = new TablaPosiciones(jugador);
      tablaPosiciones.ShowDialog();
    }

    /// <summary>
    /// Método que muestra la ventana de TablaPosiciones.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    private void I_Posicion_MouseUp(object sender, MouseButtonEventArgs e) {
      Bt_TablaPosiciones_Click(sender, new RoutedEventArgs());
    }

    /// <summary>
    /// Método para salir del juego.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    private void Mi_Salir_Click(object sender, RoutedEventArgs e) {
      this.Close();
    }

    /// <summary>
    /// Método que cierra la ventana y saca al jugador del juego.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e) {
      if (cerrar) {
        try {
          if (clienteJugador.ModificarEstadisticas(jugador.NombreUsuario, jugador.Estadisticas.Puntos, jugador.Estadisticas.Victorias)) {
            clienteJugador.SalirDelJuego(jugador);
            MainWindow mainWindow = new MainWindow();
            mainWindow.Show(); 
            validarConectadoMenu.Stop();
          } else {
            e.Cancel = true;
            MessageBox.Show(Properties.Resources.mb_ConexionBD2, Properties.Resources.mb_Alerta);
          }
        } catch (CommunicationException) {
          e.Cancel = true;
          MessageBox.Show(Properties.Resources.mb_ConexionServidor2, Properties.Resources.mb_Alerta);
        }
      }
    }

    /// <summary>
    /// Método que muestra la ventana de Espera.
    /// </summary>
    /// <param name="partida">
    /// Objeto partida que se creó.
    /// </param>
    public void UnirseAPartida(ServiceSYE.Partida partida) {
      Espera espera = new Espera(jugador, partida);
      espera.Show();
      cerrar = false;
      this.Close();
    }
  }

  /// <summary>
  /// Clase parcial Partidas.
  /// Contiene métodos que reciben respuesta del servidor, sobre las partidas.
  /// </summary>
  public partial class Partidas : ServiceSYE.IPartidaCallback {
    /// <summary>
    /// Ventana UnirsePartida que recibe las actualizaciones de las partidas que están diponibles.
    /// </summary>
    public UnirsePartida UnirsePartida { get; set; }
    /// <summary>
    /// Ventana Partida que recibe la respuesta para activar el dado de un jugador.
    /// </summary>
    public Partida Partida { get; set; }

    /// <summary>
    /// Actualiza las partidas en la tabla de la ventana UnirsePartida.
    /// </summary>
    /// <param name="partidas">
    /// Arreglo de partidas disponibles.
    /// </param>
    public void ActualizarPartidas(ServiceSYE.Partida[] partidas) {
      UnirsePartida.dg_Partidas.ItemsSource = partidas;
    }

    /// <summary>
    /// Activa el dado de un jugador en la ventana Partida.
    /// </summary>
    public void Tirar() {
      Partida.ActivarDado();
    }
  }

  /// <summary>
  /// Clase parcial Mensajes.
  /// Contiene métodos que reciben respuesta del servidor, sobre el chat.
  /// </summary>
  public partial class Mensajes : ServiceSYE.IChatCallback {
    /// <summary>
    /// Ventana Espera que recibe los mensajes del chat que mandaron los usuarios.
    /// </summary>
    public Espera Espera { get; set; }
    /// <summary>
    /// Ventana Partida que recibe los mensajes del chat que mandaron los usuarios.
    /// </summary>
    public Partida Partida { get; set; }

    /// <summary>
    /// Muestra los mensajes recibidos en el chat de espera.
    /// </summary>
    /// <param name="nombreUsuario">
    /// Nombre de usuario del quien mandó el mensaje.
    /// </param>
    /// <param name="mensaje">
    /// Mensaje que se recibió.
    /// </param>
    /// <param name="numeroJugadores">
    /// Valor entero para validar cuantos jugadores se han unido.
    /// </param>
    public void RecibeMensaje(string nombreUsuario, string mensaje, int numeroJugadores) {
      if (string.IsNullOrEmpty(mensaje)) {
        Espera.tb_Mensajes.Text = Espera.tb_Mensajes.Text + nombreUsuario + Properties.Resources.ms_Unirse + "\n\n";
        Espera.lb_Esperando.Content = Properties.Resources.lb_Esperando + (4 - numeroJugadores).ToString();
      } else {
        if (mensaje.Equals(" ")) {
          Espera.tb_Mensajes.Text = Espera.tb_Mensajes.Text + nombreUsuario + Properties.Resources.ms_Salir + "\n\n";
          Espera.lb_Esperando.Content = Properties.Resources.lb_Esperando + (4 - numeroJugadores).ToString();
        } else {
          Espera.tb_Mensajes.Text = Espera.tb_Mensajes.Text + nombreUsuario + " > " + mensaje + "\n\n";
        }
      }
      Espera.tb_Mensajes.ScrollToEnd();
      if (numeroJugadores == 4) {
        Partida ventanaPartida = new Partida(Espera.Jugador, Espera.Partida, Espera.ClientePartida, Espera.ClienteChat, Espera.Partidas, Espera.Mensajes);
        ventanaPartida.Show();
        Espera.Cerrar = false;
        Espera.Close();
      }
    }

    /// <summary>
    /// Muestra los mensajes recibidos en el chat de la partida.
    /// </summary>
    /// <param name="nombreUsuario">
    /// Nombre de usuario del quien mandó el mensaje.
    /// </param>
    /// <param name="mensaje">
    /// Mensaje que se recibió.
    /// </param>
    /// <param name="tipoMensaje">
    /// Valor entero que indica el tipo de mensaje que se recibió:
    ///   0 es un mensaje normal, 
    ///   1 es un mensaje que indica de quien es el turno, 
    ///   2 es un mensaje que muestra los bonus, 
    ///   3 es un mensaje que muestra cuanto obtuvo un jugador al tirar el dado,
    ///   4 es un mensaje que indica que un jugador perdió turno y
    ///   5 es un mensaje que indica qye un jugador salió de la partida.
    /// </param>
    public void RecibeMensajePartida(string nombreUsuario, string mensaje, int tipoMensaje) {
      switch (tipoMensaje) {
        case 0:
          Partida.tb_Mensajes.Text = Partida.tb_Mensajes.Text + nombreUsuario + " > " + mensaje + "\n\n";
          break;
        case 1:
          Partida.ActivarAbandonar(nombreUsuario);
          Partida.tb_Mensajes.Text = Partida.tb_Mensajes.Text + "*" + Properties.Resources.ms_Turno + nombreUsuario + "*\n\n";
          break;
        case 2:
          Partida.EnviarMensajeBonus(nombreUsuario);
          break;
        case 3:
          Partida.bt_Abandonar.IsEnabled = false;
          Partida.tb_Mensajes.Text = Partida.tb_Mensajes.Text + "*" + nombreUsuario + Properties.Resources.ms_Numero + mensaje + "*\n\n";
          Partida.DeterminarMovimiento(nombreUsuario, mensaje);
          break;
        case 4:
          Partida.bt_Abandonar.IsEnabled = false;
          Partida.tb_Mensajes.Text = Partida.tb_Mensajes.Text + "*" + nombreUsuario + Properties.Resources.ms_TurnoPerdido + "*\n\n";
          Partida.CambiarTurno(nombreUsuario);
          break;
        case 5:
          Partida.MoverFichaAbandono(nombreUsuario, Partida.PartidaEnJuego.JugadoresPartida);
          Partida.tb_Mensajes.Text = Partida.tb_Mensajes.Text + nombreUsuario + Properties.Resources.ms_Salir + "\n\n";
          break;
      }
      Partida.tb_Mensajes.ScrollToEnd();
    }
  }
}

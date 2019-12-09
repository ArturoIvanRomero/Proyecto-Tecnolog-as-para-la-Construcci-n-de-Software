using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Windows;
using System.Windows.Media.Imaging;
using System.Windows.Threading;
using SerpientesYEscaleras.ServiceSYE;

namespace SerpientesYEscaleras {
  /// <summary>
  /// Clase parcial Partida.
  /// Contiene métodos necesarios de la ventana de la partida.
  /// </summary>
  public partial class Partida : Window {
    private ServiceSYE.PartidaClient clientePartida;
    private ServiceSYE.ChatClient clienteChat;
    private ServiceSYE.JugadorClient clienteJugador;
    private List<ServiceSYE.Jugador> posicionJugadores;
    private DispatcherTimer temporizador;
    private Boolean bonus = false;
    private Boolean cerrar = true;
    DispatcherTimer validarConectadoPartida = new DispatcherTimer();

    /// <summary>
    /// Jugador que está en la ventana de Partida.
    /// </summary>
    public Jugador Jugador { get; set; }
    /// <summary>
    /// Partida que está en la ventana de Partida.
    /// </summary>
    public ServiceSYE.Partida PartidaEnJuego { get; set; }

    /// <summary>
    /// Constructor de la ventana Partida, para las pruebas.
    /// </summary>
    public Partida() {
      InitializeComponent();
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
    /// /// <param name="clientePartida">
    /// Conexión con el servidor para acceder a los métodos que proporciona sobre las partidas.
    /// </param>
    /// /// <param name="clienteChat">
    /// Conexión con el servidor para acceder a los métodos que proporciona sobre el chat.
    /// </param>
    /// /// <param name="partidas">
    /// Objeto mensajes que implementa los métodos que reciben respuesta del servidor, sobre las partidas.
    /// </param>
    /// /// <param name="mensajes">
    /// Objeto mensajes que implementa los métodos que reciben respuesta del servidor, sobre el chat.
    /// </param>
    public Partida(ServiceSYE.Jugador jugador, ServiceSYE.Partida partida, ServiceSYE.PartidaClient clientePartida, ServiceSYE.ChatClient clienteChat, Partidas partidas, Mensajes mensajes) {
      InitializeComponent();
      this.Title = this.Title + " - " + jugador.NombreUsuario;
      partidas.Partida = this;
      mensajes.Partida = this;
      this.Jugador = jugador;
      this.clienteChat = clienteChat;
      this.clientePartida = clientePartida;
      this.clienteJugador = new ServiceSYE.JugadorClient();
      try {
        this.PartidaEnJuego = clientePartida.ObtenerPartida(partida.Nombre);
        DispatcherTimer temporizadorInicio = new DispatcherTimer();
        temporizadorInicio.Interval = new TimeSpan(0, 0, 5);
        temporizadorInicio.Tick += (a, b) => {
          temporizadorInicio.Stop();
          if (PartidaEnJuego.JugadoresPartida.ElementAt(0).Value.NombreUsuario.Equals(jugador.NombreUsuario)) {
            try {
              clienteChat.EnviarMensajePartida("", PartidaEnJuego.Nombre, 1);
            } catch (CommunicationException) {
              EnviarMensajeError();
            }
          }
        };
        temporizadorInicio.Start();
        CargarTablero();
        CargarBonus();
        this.Jugador = ObtenerTurno(PartidaEnJuego.JugadoresPartida, this.Jugador);
        EnviarMensajeTurnos();
        ValidarConectado();
      } catch (CommunicationException) {
        EnviarMensajeError();
      }
    }

    /// <summary>
    /// Método que valida que el jugador sigue conectado al servidor.
    /// </summary>
    private void ValidarConectado() {
      validarConectadoPartida.Interval = new TimeSpan(0, 0, 20);
      validarConectadoPartida.Tick += (a, b) => {
        try {
          clienteJugador.UnirseAlJuego(Jugador);
        } catch (CommunicationException) {
          EnviarMensajeError();
        }
      };
      validarConectadoPartida.Start();
    }

    /// <summary>
    /// Realiza el proceso para tirar el dado y que se lo notofiqué a los jugadores.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    private void Bt_Dado_Click(object sender, RoutedEventArgs e) {
      bt_Dado.IsEnabled = false;
      temporizador.Stop();
      lb_Tiempo.Content = 10;
      Random random = new Random();
      lb_Dado.Content = random.Next(1, 7);
      DispatcherTimer temporizadorTurno = new DispatcherTimer();
      temporizadorTurno.Interval = new TimeSpan(0, 0, 2);
      temporizadorTurno.Tick += (a, b) => {
        temporizadorTurno.Stop();
        try {
          if (!bonus) {
            if (PartidaEnJuego.Turno.Equals(PartidaEnJuego.JugadoresPartida.ElementAt(PartidaEnJuego.JugadoresPartida.Count - 1).Value.Turno.NumeroTurno)) {
              clientePartida.CambiarTurno(PartidaEnJuego.Nombre, CalcularMovimiento(Convert.ToInt32(lb_Dado.Content), Jugador, PartidaEnJuego), 1);
            } else {
              clientePartida.CambiarTurno(PartidaEnJuego.Nombre, CalcularMovimiento(Convert.ToInt32(lb_Dado.Content), Jugador, PartidaEnJuego), PartidaEnJuego.Turno + 1);
            }
            clienteChat.EnviarMensajePartida(lb_Dado.Content.ToString(), PartidaEnJuego.Nombre, 3);
          } else {
            MovimientoBonus(Convert.ToInt32(lb_Dado.Content));
          }
        } catch (CommunicationException) {
          EnviarMensajeError();
        }
      };
      temporizadorTurno.Start();
    }

    /// <summary>
    /// Realiza el proceso para que el usuario abandone la partida.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    private void Bt_Abandonar_Click(object sender, RoutedEventArgs e) {
      try {
        Jugador.Estadisticas.Puntos = Convert.ToInt16(Jugador.Estadisticas.Puntos - 200);
        clienteJugador.ModificarEstadisticas(Jugador.NombreUsuario, Jugador.Estadisticas.Puntos, Jugador.Estadisticas.Victorias);
        clientePartida.SalirPartidaEnJuego(Jugador, PartidaEnJuego.Nombre);
        clienteChat.EnviarMensajePartida("", PartidaEnJuego.Nombre, 5);
        clienteChat.SalirChatPartida(PartidaEnJuego.Nombre);
      } catch (CommunicationException) {
        EnviarMensajeError();
      }
      cerrar = false;
      this.Close();
    }

    /// <summary>
    /// Muestra la ayuda de la ventana que muestra las reglas y funcionalidad de la partida.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    private void Bt_Ayuda_Click(object sender, RoutedEventArgs e) {
      MessageBox.Show(Properties.Resources.mb_AyudaPartida, Properties.Resources.mb_Ayuda);
    }

    /// <summary>
    /// Realiza el proceso para enviar un mensaje en el chat.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    private void Bt_Enviar_Click(object sender, RoutedEventArgs e) {
      Espera espera = new Espera();
      if (espera.ValidarMensaje(tb_Mensaje.Text)) {
        if (espera.ValidarCaracteresMensaje(tb_Mensaje.Text)) {
          try {
            clienteChat.EnviarMensajePartida(tb_Mensaje.Text, PartidaEnJuego.Nombre, 0);
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
    /// Cierra la ventana.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e) {
      if (cerrar) {
        e.Cancel = true;
      } else {
        validarConectadoPartida.Stop();
        MenuPrincipal menuPrincipal = new MenuPrincipal(Jugador);
        menuPrincipal.Show();
      }
    }

    /// <summary>
    /// Carga la imagen del tablero según la dificultad de la partida.
    /// </summary>
    private void CargarTablero() {
      if (PartidaEnJuego.Dificultad.Equals("Fácil") || PartidaEnJuego.Dificultad.Equals("Easy")) {
        i_Tablero.Source = new BitmapImage(new Uri("Imagenes/Partida/TableroFacil.png", UriKind.Relative));
      } else {
        if (PartidaEnJuego.Dificultad.Equals("Difícil") || PartidaEnJuego.Dificultad.Equals("Hard")) {
          i_Tablero.Source = new BitmapImage(new Uri("Imagenes/Partida/TableroDificil.png", UriKind.Relative));
        }
      }
    }

    /// <summary>
    /// Obtiene los turno de la partida recuparada del servidor y se los asigna a los jugadores.
    /// </summary>
    /// <param name="jugadoresPartida">
    /// Lista de los jugadores donde se encuentran los turno recuperados del servidor.
    /// </param>
    /// <param name="jugadorTurno">
    /// Objeto jugador al que se le asignará el turno.
    /// </param>
    /// <returns></returns>
    public Jugador ObtenerTurno(Dictionary<object, Jugador> jugadoresPartida, Jugador jugadorTurno) {
      for (int i = 0; i < 4; i++) {
        if (jugadoresPartida.ElementAt(i).Value.NombreUsuario.Equals(jugadorTurno.NombreUsuario)) {
          jugadorTurno = jugadoresPartida.ElementAt(i).Value;
          lb_Turno.Content = i + 1;
          break;
        }
      }
      switch (Convert.ToInt32(lb_Turno.Content)) {
        case 1:
          i_Ficha.Source = new BitmapImage(new Uri("Imagenes/Partida/Ficha1.png", UriKind.Relative));
          break;
        case 2:
          i_Ficha.Source = new BitmapImage(new Uri("Imagenes/Partida/Ficha2.png", UriKind.Relative));
          break;
        case 3:
          i_Ficha.Source = new BitmapImage(new Uri("Imagenes/Partida/Ficha3.png", UriKind.Relative));
          break;
        case 4:
          i_Ficha.Source = new BitmapImage(new Uri("Imagenes/Partida/Ficha4.png", UriKind.Relative));
          break;
      }
      return jugadorTurno;
    }

    /// <summary>
    /// Posiciona las imagenes de los bonus segun la posición de las casillas bonus de la partida recuperada del servidor.
    /// </summary>
    private void CargarBonus() {
      for (int i = 10; i < 30; i++) {
        if (PartidaEnJuego.Tablero.Casillas[i].Bonus) {
          i_Bonus1.Margin = new Thickness(PartidaEnJuego.Tablero.Casillas[i].PosicionX, 0, 0, PartidaEnJuego.Tablero.Casillas[i].PosicionY - 35);
          break;
        }
      }
      for (int i = 30; i < 50; i++) {
        if (PartidaEnJuego.Tablero.Casillas[i].Bonus) {
          i_Bonus2.Margin = new Thickness(PartidaEnJuego.Tablero.Casillas[i].PosicionX, 0, 0, PartidaEnJuego.Tablero.Casillas[i].PosicionY - 35);
          break;
        }
      }
      for (int i = 50; i < 70; i++) {
        if (PartidaEnJuego.Tablero.Casillas[i].Bonus) {
          i_Bonus3.Margin = new Thickness(PartidaEnJuego.Tablero.Casillas[i].PosicionX, 0, 0, PartidaEnJuego.Tablero.Casillas[i].PosicionY - 35);
          break;
        }
      }
      for (int i = 70; i < 90; i++) {
        if (PartidaEnJuego.Tablero.Casillas[i].Bonus) {
          i_Bonus4.Margin = new Thickness(PartidaEnJuego.Tablero.Casillas[i].PosicionX, 0, 0, PartidaEnJuego.Tablero.Casillas[i].PosicionY - 35);
          break;
        }
      }
    }

    /// <summary>
    /// Activa el botón dado y cominza la cuenta atrás del temporizador.
    /// </summary>
    public void ActivarDado() {
      bt_Dado.IsEnabled = true;
      temporizador = new DispatcherTimer();
      temporizador.Interval = new TimeSpan(0, 0, 1);
      temporizador.Tick += (a, b) => {
        lb_Tiempo.Content = Convert.ToInt32(lb_Tiempo.Content) - 1;
        if (lb_Tiempo.Content.Equals(0)) {
          TurnoPerdido();
          temporizador.Stop();
        }
      };
      temporizador.Start();
    }

    /// <summary>
    /// Realiza el proceso cuando un jugador perdió su turno.
    /// </summary>
    private void TurnoPerdido() {
      bt_Dado.IsEnabled = false;
      lb_Tiempo.Content = 10;
      try {
        if (!bonus) {
          if (PartidaEnJuego.Turno.Equals(PartidaEnJuego.JugadoresPartida.ElementAt(PartidaEnJuego.JugadoresPartida.Count - 1).Value.Turno.NumeroTurno)) {
            clientePartida.CambiarTurno(PartidaEnJuego.Nombre, 0, 1);
          } else {
            clientePartida.CambiarTurno(PartidaEnJuego.Nombre, 0, PartidaEnJuego.Turno + 1);
          }
        }
        clienteChat.EnviarMensajePartida("", PartidaEnJuego.Nombre, 4);
      } catch (CommunicationException) {
        EnviarMensajeError();
      }
    }

    /// <summary>
    /// Calcula el movimiento que hará la ficha del jugador a una casilla en el tablero.
    /// </summary>
    /// <param name="numeroDado">
    /// Número que obtuvo el jugador al tirar el dado.
    /// </param>
    /// <param name="jugadorMovimiento">
    /// Objeto jugador que tiene los datos del jugador que realizó el tiro.
    /// </param>
    /// <param name="partidaJugando">
    /// Objeto partida que tiene los datos de la partida en juego.
    /// </param>
    /// <returns>
    /// Valor entero de la casilla a la que se moverá la ficha del jugador.
    /// </returns>
    public int CalcularMovimiento(int numeroDado, Jugador jugadorMovimiento, ServiceSYE.Partida partidaJugando) {
      int movimiento;
      if (jugadorMovimiento.Turno.Casilla.Numero + numeroDado > 100) {
        movimiento = 100 - (jugadorMovimiento.Turno.Casilla.Numero + numeroDado - 100);
      } else {
        movimiento = jugadorMovimiento.Turno.Casilla.Numero + numeroDado;
      }
      jugadorMovimiento.Turno.Casilla = partidaJugando.Tablero.Casillas[movimiento - 1];
      return movimiento;
    }

    /// <summary>
    /// Realiza el proceso para mover la ficha del jugador.
    /// </summary>
    /// <param name="nombreUsuario">
    /// Nombre del jugador del que se moverá su ficha.
    /// </param>
    /// <param name="mensaje">
    /// Mensaje que envía el juego.
    /// En este caso se recibe el mansaje para saber si cuando el jugador tiro en bonus obtuvo un 4, que en ese caso no se realiza ningún movimiento de la ficha.
    /// </param>
    public void DeterminarMovimiento(String nombreUsuario, String mensaje) {
      try {
        PartidaEnJuego = clientePartida.ObtenerPartida(PartidaEnJuego.Nombre);
        if (bonus && mensaje.Equals("4")) {
          CambiarTurno(nombreUsuario);
        } else {
          lb_Dado.Content = "";
          ServiceSYE.Jugador jugadorMovimiento = DeterminarJugadorMovimiento(nombreUsuario);
          MoverFicha(jugadorMovimiento);
          if (jugadorMovimiento.Turno.Casilla.Movimiento != 0) {
            MoverFichaSerpienteOEscalera(jugadorMovimiento);
          } else {
            if (jugadorMovimiento.Turno.Casilla.Bonus) {
              bonus = true;
              TirarBonus(jugadorMovimiento);
            } else {
              CambiarTurno(nombreUsuario);
            }
          }
        }
      } catch (CommunicationException) {
        EnviarMensajeError();
      }
    }

    /// <summary>
    /// Determina quien es el jugador del cual se moverá su ficha.
    /// </summary>
    /// <param name="nombreUsuario">
    /// Nombre del jugador que se moverá su ficha.
    /// </param>
    /// <returns>
    /// Objeto jugador que tiene los datos del jugador que moverá su ficha.
    /// </returns>
    public Jugador DeterminarJugadorMovimiento(String nombreUsuario) {
      ServiceSYE.Jugador jugadorMovimiento = new ServiceSYE.Jugador();
      for (int i = 0; i < PartidaEnJuego.JugadoresPartida.Count; i++) {
        if (PartidaEnJuego.JugadoresPartida.ElementAt(i).Value.NombreUsuario.Equals(nombreUsuario)) {
          jugadorMovimiento = PartidaEnJuego.JugadoresPartida.ElementAt(i).Value;
        }
      }
      return jugadorMovimiento;
    }

    /// <summary>
    /// Mueve la imagen de la ficha a la casilla correspondiente.
    /// </summary>
    /// <param name="jugadorMovimiento">
    /// Objeto jugador que tiene los datos del juagdor que moverá su ficha como su turno y la casilla a la que se moverá.
    /// </param>
    private void MoverFicha(Jugador jugadorMovimiento) {
      switch (jugadorMovimiento.Turno.NumeroTurno) {
        case 1:
          i_Ficha1.Margin = new Thickness(jugadorMovimiento.Turno.Casilla.PosicionX + 30, 0, 0, jugadorMovimiento.Turno.Casilla.PosicionY - 30);
          break;
        case 2:
          i_Ficha2.Margin = new Thickness(jugadorMovimiento.Turno.Casilla.PosicionX, 0, 0, jugadorMovimiento.Turno.Casilla.PosicionY);
          break;
        case 3:
          i_Ficha3.Margin = new Thickness(jugadorMovimiento.Turno.Casilla.PosicionX, 0, 0, jugadorMovimiento.Turno.Casilla.PosicionY - 30);
          break;
        case 4:
          i_Ficha4.Margin = new Thickness(jugadorMovimiento.Turno.Casilla.PosicionX + 30, 0, 0, jugadorMovimiento.Turno.Casilla.PosicionY);
          break;
      }
    }

    /// <summary>
    /// Realiza el proceso para determinar el movimiento de la ficha de un jugador si es que cayó en una serpiente o una escalera.
    /// </summary>
    /// <param name="jugadorMovimiento">
    /// Objecto jugador que tiene los datos del jugador que cayó en una serpiente o escalera.
    /// </param>
    private void MoverFichaSerpienteOEscalera(ServiceSYE.Jugador jugadorMovimiento) {
      try {
        if (jugadorMovimiento.NombreUsuario.Equals(Jugador.NombreUsuario)) {
          Jugador.Turno.Casilla = PartidaEnJuego.Tablero.Casillas[jugadorMovimiento.Turno.Casilla.Numero + jugadorMovimiento.Turno.Casilla.Movimiento - 1];
          clientePartida.MovimientoEspecial(PartidaEnJuego.Nombre, Jugador.Turno.Casilla.Numero);
        }
        DispatcherTimer temporizadorMovimiento = new DispatcherTimer();
        temporizadorMovimiento.Interval = new TimeSpan(0, 0, 1);
        temporizadorMovimiento.Tick += (a, b) => {
          temporizadorMovimiento.Stop();
          try {
            PartidaEnJuego = clientePartida.ObtenerPartida(PartidaEnJuego.Nombre);
            DeterminarMovimiento(jugadorMovimiento.NombreUsuario, "");
          } catch (CommunicationException) {
            EnviarMensajeError();
          }
        };
        temporizadorMovimiento.Start();
      } catch (CommunicationException) {
        EnviarMensajeError();
      }
    }

    /// <summary>
    /// Realiza el proceso para enviar el mensaje de que un jugador cayó en una casilla bonus.
    /// </summary>
    /// <param name="jugadorMovimiento">
    /// Objecto jugador que tiene los datos del jugador que cayó en una casilla bonus.
    /// </param>
    private void TirarBonus(ServiceSYE.Jugador jugadorMovimiento) {
      if (jugadorMovimiento.NombreUsuario.Equals(Jugador.NombreUsuario)) {
        DispatcherTimer temporizadorBonus= new DispatcherTimer();
        temporizadorBonus.Interval = new TimeSpan(0, 0, 2);
        temporizadorBonus.Tick += (a, b) => {
          temporizadorBonus.Stop();
          try {
            clienteChat.EnviarMensajePartida("", PartidaEnJuego.Nombre, 2);
          } catch (CommunicationException) {
            EnviarMensajeError();
          }
        };
        temporizadorBonus.Start();
      }
    }

    /// <summary>
    /// Realiza el proceso para determinar el movimiento de una ficha según el bonus obtenido.
    /// </summary>
    /// <param name="numeroDado">
    /// Valor entero que es el número obtenido al tirar el dado.
    /// </param>
    private void MovimientoBonus(int numeroDado) {
      try {
        switch (numeroDado) {
          case 1:
            Jugador.Turno.Casilla = PartidaEnJuego.Tablero.Casillas[0];
            clientePartida.MovimientoEspecial(PartidaEnJuego.Nombre, 1);
            break;
          case 2:
            clientePartida.MovimientoEspecial(PartidaEnJuego.Nombre, TiroBonus(1, Jugador, PartidaEnJuego));
            break;
          case 3:
            clientePartida.MovimientoEspecial(PartidaEnJuego.Nombre, TiroBonus(2, Jugador, PartidaEnJuego));
            break;
          case 4:
            Jugador.Estadisticas.Puntos = Convert.ToInt16(Jugador.Estadisticas.Puntos + 50);
            clienteJugador.ModificarEstadisticas(Jugador.NombreUsuario, Jugador.Estadisticas.Puntos, Jugador.Estadisticas.Victorias);
            break;
          case 5:
            clientePartida.MovimientoEspecial(PartidaEnJuego.Nombre, TiroBonus(3, Jugador, PartidaEnJuego));
            break;
          case 6:
            Jugador.Turno.Casilla = PartidaEnJuego.Tablero.Casillas[89];
            clientePartida.MovimientoEspecial(PartidaEnJuego.Nombre, 90);
            break;
        }
        clienteChat.EnviarMensajePartida(lb_Dado.Content.ToString(), PartidaEnJuego.Nombre, 3);
      } catch (CommunicationException) {
        EnviarMensajeError();
      }
    }

    /// <summary>
    /// Calcula el movimiento que hará la ficha del jugador que tiro el bonus para los casos en los que:
    ///   la posición de la casilla se divide
    ///   la posición de la casilla se le resta 3
    ///   la posición de la casilla se le suma 10
    /// </summary>
    /// <param name="bonus">
    /// Valor entero que indica el bonus obtenido.
    /// </param>
    /// <param name="jugadorMovimiento">
    /// Objecto jugador que tiene los datos del jugador que tiro el bonus.
    /// </param>
    /// <param name="partidaJugando">
    /// Objeto partida que tiene los datos de la partida en juego.
    /// </param>
    /// <returns>
    /// Valor entero de la casilla a la que se moverá la ficha del jugador después del bonus.
    /// </returns>
    public int TiroBonus(int bonus, Jugador jugadorMovimiento, ServiceSYE.Partida partidaJugando) {
      int movimiento = 0;
      switch (bonus) {
        case 1:
          movimiento = jugadorMovimiento.Turno.Casilla.Numero / 2;
          break;
        case 2:
          movimiento = jugadorMovimiento.Turno.Casilla.Numero - 3;
          break;
        case 3:
          movimiento = jugadorMovimiento.Turno.Casilla.Numero + 10;
          break;
      }
      jugadorMovimiento.Turno.Casilla = partidaJugando.Tablero.Casillas[movimiento - 1];
      return movimiento;
    }

    /// <summary>
    /// Realiza el proceso para cambiar el turno. Verifica antes si el jugador que acaba de tirar no ha ganado. Y cambia la posición de los bonus si termino una ronda de turnos.
    /// </summary>
    /// <param name="nombreUsuario">
    /// Nombre del jugador que acaba de pasar su turno.
    /// </param>
    public void CambiarTurno(String nombreUsuario) {
      try {
        PartidaEnJuego = clientePartida.ObtenerPartida(PartidaEnJuego.Nombre);
        bonus = false;
        if (PartidaEnJuego.Turno == PartidaEnJuego.JugadoresPartida.ElementAt(0).Value.Turno.NumeroTurno && nombreUsuario.Equals(Jugador.NombreUsuario)) {
          clientePartida.CambiarPosicionBonus(PartidaEnJuego.Nombre);
        }
        DispatcherTimer temporizadorMovimiento = new DispatcherTimer();
        temporizadorMovimiento.Interval = new TimeSpan(0, 0, 2);
        temporizadorMovimiento.Tick += (a, b) => {
          temporizadorMovimiento.Stop();
          try {
            if (!VerificarGanador(nombreUsuario)) {
              SiguienteJugador();
            } else {
              validarConectadoPartida.Stop();
              Resultados resultados = new Resultados(this, posicionJugadores);
              resultados.ShowDialog();
            }
          } catch (CommunicationException) {
            EnviarMensajeError();
          }
        };
        temporizadorMovimiento.Start();
      } catch (CommunicationException) {
        EnviarMensajeError();
      }
    }

    /// <summary>
    /// Verifica que un jugador ganó la partida.
    /// </summary>
    /// <param name="nombreUsuario">
    /// Nombre del jugador que acaba de pasar su turno.
    /// </param>
    /// <returns>
    /// Valor boolenan que es True si el jugador ganó la partida y si no es False.
    /// </returns>
    private Boolean VerificarGanador(String nombreUsuario) {
      Boolean verificar = false;
      ServiceSYE.Jugador jugadorMovimiento = new ServiceSYE.Jugador();
      for (int i = 0; i < PartidaEnJuego.JugadoresPartida.Count; i++) {
        if (PartidaEnJuego.JugadoresPartida.ElementAt(i).Value.NombreUsuario.Equals(nombreUsuario)) {
          jugadorMovimiento = PartidaEnJuego.JugadoresPartida.ElementAt(i).Value;
        }
      }
      if (jugadorMovimiento.Turno.Casilla.Numero == 100) {
        verificar = true;
        tb_Mensajes.Text = tb_Mensajes.Text + "*" + jugadorMovimiento.NombreUsuario + Properties.Resources.ms_Gano + "*\n\n";
        tb_Mensajes.ScrollToEnd();
        posicionJugadores = new List<ServiceSYE.Jugador>();
        List<ServiceSYE.Jugador> posicionJugadoresAux = new List<ServiceSYE.Jugador>();
        List<int> premios = DefinirPremios(PartidaEnJuego.JugadoresPartida.Count);
        for (int i = 0; i < PartidaEnJuego.JugadoresPartida.Count; i++) {
          posicionJugadoresAux.Add(PartidaEnJuego.JugadoresPartida.ElementAt(i).Value);
        }
        for (int i = PartidaEnJuego.JugadoresPartida.Count; i > 0; i--) {
          ServiceSYE.Jugador jugadorMasAlto = DefinirJugadorMasAlto(posicionJugadoresAux, i);
          posicionJugadoresAux.Remove(jugadorMasAlto);
          jugadorMasAlto.Estadisticas.Puntos = Convert.ToInt16(premios.ElementAt(i - 1));
          posicionJugadores.Add(jugadorMasAlto);
          GuardarNuevasEstadisticas(jugadorMasAlto, i);
        }
      }
      return verificar;
    }

    /// <summary>
    /// Define el jugador más alto en una lista de jugadores según su posición de su casilla.
    /// </summary>
    /// <param name="posicionJugadoresAux">
    /// Lista de jugadores de la cual se definirá el jugador más alto.
    /// </param>
    /// <param name="contador">
    /// Valor enetero que define el contador según el número de jugadores de la lista.
    /// </param>
    /// <returns>
    /// Objeto jugador con la posición de casilla más alta.
    /// </returns>
    public ServiceSYE.Jugador DefinirJugadorMasAlto(List<ServiceSYE.Jugador> posicionJugadoresAux, int contador) {
      ServiceSYE.Jugador jugadorMasAlto = posicionJugadoresAux.ElementAt(0);
      for (int j = 1; j < contador; j++) {
        if (jugadorMasAlto.Turno.Casilla.Numero < posicionJugadoresAux.ElementAt(j).Turno.Casilla.Numero) {
          jugadorMasAlto = posicionJugadoresAux.ElementAt(j);
        }
      }
      return jugadorMasAlto;
    }

    /// <summary>
    /// Define los premios de los jugadores según el número de jugadores de la partida.
    /// </summary>
    /// <param name="numeroJugadores">
    /// Valor entero que es el número de jugadores de la partida.
    /// </param>
    /// <returns>
    /// Lista de premios (puntos) a otorgar a los jugadores en la partida.
    /// </returns>
    public List<int> DefinirPremios(int numeroJugadores) {
      List<int> premios = new List<int>();
      if (numeroJugadores == 4) {
        premios.Add(75);
        premios.Add(125);
        premios.Add(200);
        premios.Add(400);
      } else {
        if (numeroJugadores == 3) {
          premios.Add(150);
          premios.Add(250);
          premios.Add(400);
        } else {
          if (numeroJugadores == 2) {
            premios.Add(300);
            premios.Add(500);
          } else {
            premios.Add(800);
          }
        }
      }
      return premios;
    }

    /// <summary>
    /// Guarda las nuevas estadísticas (puntos y vitorias) de un jugador al terminar la partida.
    /// </summary>
    /// <param name="jugadorMasAlto">
    /// Objecto jugador que tiene los datos del jugador que se guardaran sus nuevas estadísticas.
    /// </param>
    /// <param name="contador">
    /// Valor entero que si es igual al número de jugador de la partida sirve para aumentar una victoria al jugador.
    /// </param>
    private void GuardarNuevasEstadisticas(ServiceSYE.Jugador jugadorMasAlto, int contador) {
      if (Jugador.NombreUsuario.Equals(jugadorMasAlto.NombreUsuario)) {
        Jugador.Estadisticas.Puntos = Convert.ToInt16(Jugador.Estadisticas.Puntos + jugadorMasAlto.Estadisticas.Puntos);
        if (contador == PartidaEnJuego.JugadoresPartida.Count) {
          Jugador.Estadisticas.Victorias = Convert.ToInt16(Jugador.Estadisticas.Victorias + 1);
        }
        try {
          clienteJugador.ModificarEstadisticas(Jugador.NombreUsuario, Jugador.Estadisticas.Puntos, Jugador.Estadisticas.Victorias);
        } catch (CommunicationException) {
          MessageBox.Show(Properties.Resources.mb_ConexionBD2, Properties.Resources.mb_Alerta);
        }
      }
    }

    /// <summary>
    /// Envía un mensaje a los jugadores de quien es el siguiente jugador en tirar. Y cambia la posición de las imagenes de los bonus.
    /// </summary>
    private void SiguienteJugador() {
      if (PartidaEnJuego.Turno == PartidaEnJuego.JugadoresPartida.ElementAt(0).Value.Turno.NumeroTurno) {
        PartidaEnJuego = clientePartida.ObtenerPartida(PartidaEnJuego.Nombre);
        CargarBonus();
      }
      if (PartidaEnJuego.Turno == Jugador.Turno.NumeroTurno) {
        clienteChat.EnviarMensajePartida("", PartidaEnJuego.Nombre, 1);
      }
    }

    /// <summary>
    /// Envía un mensaje de los turnos de los jugadores y del color de su ficha.
    /// </summary>
    private void EnviarMensajeTurnos() {
      tb_Mensajes.Text = tb_Mensajes.Text + "***" + Properties.Resources.ms_Comienzo + "***\n";
      tb_Mensajes.Text = tb_Mensajes.Text + Properties.Resources.ms_Turn + " 1 (" + Properties.Resources.ms_Amarillo + ") -  " + this.PartidaEnJuego.JugadoresPartida.ElementAt(0).Value.NombreUsuario + "\n";
      tb_Mensajes.Text = tb_Mensajes.Text + Properties.Resources.ms_Turn + " 2 (" + Properties.Resources.ms_Naranja + ") -  " + this.PartidaEnJuego.JugadoresPartida.ElementAt(1).Value.NombreUsuario + "\n";
      tb_Mensajes.Text = tb_Mensajes.Text + Properties.Resources.ms_Turn + " 3 (" + Properties.Resources.ms_Morado + ") -  " + this.PartidaEnJuego.JugadoresPartida.ElementAt(2).Value.NombreUsuario + "\n";
      tb_Mensajes.Text = tb_Mensajes.Text + Properties.Resources.ms_Turn + " 4 (" + Properties.Resources.ms_Rosa + ") -  " + this.PartidaEnJuego.JugadoresPartida.ElementAt(3).Value.NombreUsuario + "\n\n";
    }

    /// <summary>
    /// Activa el botón de abandonar a los jugadores que no estén tirando.
    /// </summary>
    /// <param name="nombreUsuario">
    /// Nombre del jugador que no se activará el botón de abandonar.
    /// </param>
    public void ActivarAbandonar(String nombreUsuario) {
      if (!Jugador.NombreUsuario.Equals(nombreUsuario)) {
        bt_Abandonar.IsEnabled = true;
      }
    }

    /// <summary>
    /// Envía el mensaje de quien cayó en una casilla bonus y de los diferentes bonus que pueden tocar al tirar.
    /// </summary>
    /// <param name="nombreUsuario">
    /// Nombre del jugador que cayó en una casilla bonus.
    /// </param>
    public void EnviarMensajeBonus(String nombreUsuario) {
      tb_Mensajes.Text = tb_Mensajes.Text + "*" + nombreUsuario + Properties.Resources.ms_Bonus + "\n\n";
    }

    /// <summary>
    /// Mueve la ficha del jugador que abandonó a una posición fuera del tablero.
    /// </summary>
    /// <param name="nombreUsuario">
    /// Nombre del jugador que abandonó la partida. 
    /// </param>
    /// <param name="jugadoresPartida">
    /// Lista de jugadores que tiene los jugadores de la partida.
    /// </param>
    public void MoverFichaAbandono(String nombreUsuario, Dictionary<object, Jugador> jugadoresPartida) {
      for (int i = 0; i < jugadoresPartida.Count; i++) {
        if (jugadoresPartida.ElementAt(i).Value.NombreUsuario.Equals(nombreUsuario)) {
          jugadoresPartida.ElementAt(i).Value.Turno.Casilla = new Casilla {
            Numero = 0,
            PosicionX = -69,
            PosicionY = -39,
            Movimiento = 0,
            Bonus = false,
          };
          MoverFicha(jugadoresPartida.ElementAt(i).Value);
          break;
        }
      }
    }

    /// <summary>
    /// Envía un mensaje de error cuando se cae el servidor y regresa all menú principal.
    /// </summary>
    private void EnviarMensajeError() {
      MessageBoxTemporal.Show(Properties.Resources.mb_ConexionServidor3, Properties.Resources.mb_Alerta, 5, false);
      cerrar = false;
      this.Close();
    }
  }
}

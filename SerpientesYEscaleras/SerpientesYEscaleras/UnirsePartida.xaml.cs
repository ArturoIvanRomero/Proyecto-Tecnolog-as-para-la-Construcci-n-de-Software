using System.ServiceModel;
using System.Windows;

namespace SerpientesYEscaleras {
  /// <summary>
  /// Clase parcial UnirsePartida.
  /// Contiene métodos necesarios de la ventana de Unirse a partida.
  /// </summary>
  public partial class UnirsePartida : Window {
    private ServiceSYE.Jugador jugador;
    private MenuPrincipal menuPrincipal;
    private ServiceSYE.PartidaClient clientePartida;

    /// <summary>
    /// Constructor de la ventana UnirsePartida.
    /// </summary>
    /// <param name="menuPrincipal">
    /// Ventana MenúPrincipal de la cual se mandó a llamar la ventana.
    /// </param>
    /// <param name="jugador">
    /// Objeto jugador que se mandó desde el menú.
    /// </param>
    public UnirsePartida(MenuPrincipal menuPrincipal, ServiceSYE.Jugador jugador) {
      InitializeComponent(); 
      this.menuPrincipal = menuPrincipal;
      this.jugador = jugador;
      Partidas partidas = new Partidas();
      partidas.UnirsePartida = this;
      InstanceContext contexto = new InstanceContext(partidas);
      clientePartida = new ServiceSYE.PartidaClient(contexto);
      try {
        clientePartida.VerPartidas(jugador.NombreUsuario);
      } catch (CommunicationException) {
        MessageBox.Show(Properties.Resources.mb_ConexionServidor, Properties.Resources.mb_Alerta);
      }
      CargarPartidas();
    }

    /// <summary>
    /// Realiza el proceso para unir al jugador a una partida.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    private void Bt_Unirse_Click(object sender, RoutedEventArgs e) {
      if (dg_Partidas.SelectedIndex >= 0) {
        if (jugador.Estadisticas.Puntos >= 200) {
          ServiceSYE.Partida partida = (ServiceSYE.Partida)dg_Partidas.SelectedItem;
          try {
            clientePartida.SalirVerPartidas();
            menuPrincipal.UnirseAPartida(partida);
            this.Close();
          } catch (CommunicationException) {
            MessageBox.Show(Properties.Resources.mb_ConexionServidor, Properties.Resources.mb_Alerta);
          }
        } else {
          MessageBox.Show(Properties.Resources.mb_PuntosInsuficientes, Properties.Resources.mb_Alerta);
        }
      }
    }

    /// <summary>
    /// Muestra la ayuda de la ventana.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    private void Bt_Ayuda_Click(object sender, RoutedEventArgs e) {
      MessageBox.Show(Properties.Resources.mb_AyudaUnirse, Properties.Resources.mb_Ayuda);
    }

    /// <summary>
    /// Cierra la ventana.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e) {
      try {
        clientePartida.SalirVerPartidas();
      } catch (CommunicationException) {
        MessageBox.Show(Properties.Resources.mb_ConexionServidor, Properties.Resources.mb_Alerta);
      }
    }

    /// <summary>
    /// Carga las partidas a las que se puede unir el jugador.
    /// </summary>
    public void CargarPartidas() {
      try {
        dg_Partidas.ItemsSource = clientePartida.ObtenerPartidas();
      } catch (CommunicationException) {
        MessageBox.Show(Properties.Resources.mb_ConexionServidor, Properties.Resources.mb_Alerta);
      }
    }
  }
}

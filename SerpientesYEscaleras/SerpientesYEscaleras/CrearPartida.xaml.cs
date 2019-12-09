using System;
using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media.Imaging;

namespace SerpientesYEscaleras {
  /// <summary>
  /// Clase parcial CrearPartida.
  /// Contiene métodos necesarios de la ventana de Crear partida.
  /// </summary>
  public partial class CrearPartida : Window {
    private ServiceSYE.Jugador jugador;
    private MenuPrincipal menuPrincipal;

    /// <summary>
    /// Constructor de la ventana CrearPartida.
    /// </summary>
    /// <param name="menuPrincipal">
    /// Ventana MenúPrincipal de la cual se mandó a llamar la ventana.
    /// </param>
    /// <param name="jugador">
    /// Objeto jugador que se mandó desde el menú.
    /// </param>
    public CrearPartida(MenuPrincipal menuPrincipal, ServiceSYE.Jugador jugador) {
      InitializeComponent(); 
      this.menuPrincipal = menuPrincipal;
      this.jugador = jugador;
    }

    /// <summary>
    /// Realiza el proceso para crear una partida.
    /// Valida que no tenga nombre vacío y el jugador no haya creado una partida con ese mismo nombre que aun esté disponible.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    private void Bt_Crear_Click(object sender, RoutedEventArgs e) {
      if (tb_NombrePartida.Text != null && tb_NombrePartida.Text.Length > 0) {
        ServiceSYE.PartidaClient clientePartida = new ServiceSYE.PartidaClient(new InstanceContext(new Partidas()));
        MainWindow mainWindow = new MainWindow();
        if (mainWindow.ValidarNombreUsuario(tb_NombrePartida.Text)) {
          try {
            if (clientePartida.ValidarNombrePartida(tb_NombrePartida.Text + "-" + jugador.NombreUsuario)) {
              CrearJuego(clientePartida);
            } else {
              MessageBox.Show(Properties.Resources.mb_NombrePartidaOcupado, Properties.Resources.mb_Alerta);
            }
          } catch (CommunicationException) {
            MessageBox.Show(Properties.Resources.mb_ConexionServidor, Properties.Resources.mb_Alerta);
          }
        } else {
          MessageBox.Show(Properties.Resources.mb_CaracteresInvalidosPartida, Properties.Resources.mb_Ayuda);
        }
      } else {
        MessageBox.Show(Properties.Resources.mb_NombreVacio, Properties.Resources.mb_Alerta);
      }
    }

    /// <summary>
    /// Muestra la ayuda de la ventana.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    private void Bt_Ayuda_Click(object sender, RoutedEventArgs e) {
      MessageBox.Show(Properties.Resources.mb_AyudaDificultad, Properties.Resources.mb_Ayuda);
    }

    /// <summary>
    /// Crea la partida.
    /// Si el jugador no tiene los puntos suficientes manda un mensaje de alerta.
    /// </summary>
    /// <param name="clientePartida">
    /// Referencia al servidor.
    /// </param>
    private void CrearJuego(ServiceSYE.PartidaClient clientePartida) {
      if (jugador.Estadisticas.Puntos >= 200) {
        ServiceSYE.Partida partida = new ServiceSYE.Partida {
          Nombre = tb_NombrePartida.Text + "-" + jugador.NombreUsuario,
          Dificultad = cb_Dificultad.Text,
          Turno = 1,
        };
        clientePartida.CrearPartida(partida);
        menuPrincipal.UnirseAPartida(partida);
        this.Close();
      } else {
        MessageBox.Show(Properties.Resources.mb_PuntosInsuficientes, Properties.Resources.mb_Alerta);
      }
    }

    /// <summary>
    /// Cambia la imagen que muestra una vista previa del tablero.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    private void Cb_Dificultad_SelectionChanged(object sender, SelectionChangedEventArgs e) {
      if (cb_Dificultad.SelectedItem.ToString().Substring(38).Equals(Properties.Resources.cbi_Normal)) {
        i_Tablero.Source = new BitmapImage(new Uri("Imagenes/Partida/TableroNormal.png", UriKind.Relative));
      } else {
        if (cb_Dificultad.SelectedItem.ToString().Substring(38).Equals(Properties.Resources.cbi_Facil)) {
          i_Tablero.Source = new BitmapImage(new Uri("Imagenes/Partida/TableroFacil.png", UriKind.Relative));
        } else {
          i_Tablero.Source = new BitmapImage(new Uri("Imagenes/Partida/TableroDificil.png", UriKind.Relative));
        }
      }
    }
  }
}

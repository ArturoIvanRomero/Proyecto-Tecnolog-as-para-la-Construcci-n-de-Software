using System;
using System.Linq;
using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Media.Imaging;

namespace SerpientesYEscaleras {
  /// <summary>
  /// Clase parcial TablaPosiciones.
  /// Contiene métodos necesarios de la ventana de Tabla de posiciones.
  /// </summary>
  public partial class TablaPosiciones : Window {
    private ServiceSYE.Jugador jugador;

    /// <summary>
    /// Constructor de la ventana TablaPosiciones.
    /// </summary>
    /// <param name="jugador">
    /// Objeto jugador que se mandó desde el menú.
    /// </param>
    public TablaPosiciones(ServiceSYE.Jugador jugador) {
      InitializeComponent(); 
      this.jugador = jugador;
      CargarJugadoresPuntos();
    }

    /// <summary>
    /// Ordena los jugadores en la tabla de posiciones según el botón, ya sea por puntos o por vistorias.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    private void Bt_Ordenar_Click(object sender, RoutedEventArgs e) {
      if (bt_Ordenar.Content.Equals(Properties.Resources.bt_OrdenarVictorias)) {
        if (CargarJugadoresVictorias()) {
          bt_Ordenar.Content = Properties.Resources.bt_OrdenarPuntos;
          dgc_Posicion.Header = Properties.Resources.mi_Victorias;
          dgc_Posicion.Binding = new Binding("Estadisticas.Victorias");
          lb_Posicion.Content = "";
          i_Posicion.Source = new BitmapImage(new Uri("", UriKind.Relative));
        } else {
          MessageBox.Show(Properties.Resources.mb_ConexionBD, Properties.Resources.mb_Alerta);
        }
      } else {
        if (CargarJugadoresPuntos()) {
          bt_Ordenar.Content = Properties.Resources.bt_OrdenarVictorias;
          dgc_Posicion.Header = Properties.Resources.mi_Puntos;
          dgc_Posicion.Binding = new Binding("Estadisticas.Puntos");
          lb_Posicion.Content = "";
          i_Posicion.Source = new BitmapImage(new Uri("", UriKind.Relative));
        } else {
          MessageBox.Show(Properties.Resources.mb_ConexionBD, Properties.Resources.mb_Alerta);
        }
      }
    }

    /// <summary>
    /// Cambia la imagen que muestra un trofeo con el número de la posición del jugador seleccionado en la tabla de posiciones.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    private void Dg_Jugadores_SelectedCellsChanged(object sender, SelectedCellsChangedEventArgs e) {
      int tamanioImagen = 300, margen = 40, tamanioLetra = 100;
      if (dg_Jugadores.SelectedIndex + 1 > 3) {
        i_Posicion.Source = new BitmapImage(new Uri("Imagenes/TablaPosiciones/Normal.png", UriKind.Relative));
        tamanioImagen = 150;
        margen = 120;
        tamanioLetra = 40;
      } else {
        if (dg_Jugadores.SelectedIndex + 1 == 3) {
          i_Posicion.Source = new BitmapImage(new Uri("Imagenes/TablaPosiciones/Bronce.png", UriKind.Relative));
          tamanioImagen = 200;
          margen = 90;
          tamanioLetra = 60;
        } else {
          if (dg_Jugadores.SelectedIndex + 1 == 2) {
            i_Posicion.Source = new BitmapImage(new Uri("Imagenes/TablaPosiciones/Plata.png", UriKind.Relative));
            tamanioImagen = 250;
            margen = 60;
            tamanioLetra = 80;
          } else {
            i_Posicion.Source = new BitmapImage(new Uri("Imagenes/TablaPosiciones/Oro.png", UriKind.Relative));
          }
        }
      }
      i_Posicion.Height = tamanioImagen;
      i_Posicion.Margin = new Thickness(0, margen, 0, 0);
      lb_Posicion.Margin = new Thickness(0, margen + 20, 0, 0);
      lb_Posicion.FontSize = tamanioLetra;
      lb_Posicion.Content = dg_Jugadores.SelectedIndex + 1;
    }

    /// <summary>
    /// Carga los jugadores ordenados por puntos.
    /// </summary>
    /// <returns></returns>
    private Boolean CargarJugadoresPuntos() {
      Boolean exito = true;
      ServiceSYE.JugadorClient cliente = new ServiceSYE.JugadorClient();
      try {
        var jugadores = cliente.ObtenerJugadoresPuntos();
        dg_Jugadores.ItemsSource = jugadores;
        if (!jugadores.Any()) {
          exito = false;
        }
      } catch (CommunicationException) {
        MessageBox.Show(Properties.Resources.mb_ConexionServidor, Properties.Resources.mb_Alerta);
      }
      return exito;
    }

    /// <summary>
    /// Carga los jugadores ordenados por victorias.
    /// </summary>
    /// <returns></returns>
    private Boolean CargarJugadoresVictorias() {
      Boolean exito = true;
      ServiceSYE.JugadorClient cliente = new ServiceSYE.JugadorClient();
      try {
        var jugadores = cliente.ObtenerJugadoresVictorias();
        dg_Jugadores.ItemsSource = jugadores;
        if (!jugadores.Any()) {
          exito = false;
        }
      } catch (CommunicationException) {
        MessageBox.Show(Properties.Resources.mb_ConexionServidor, Properties.Resources.mb_Alerta);
      }
      return exito;
    }
  }
}

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
  /// <summary>
  /// Lógica de interacción para TablaPosiciones.xaml
  /// </summary>
  public partial class TablaPosiciones : Window {
    ServiceSYE.Jugador jugador;

    public TablaPosiciones(ServiceSYE.Jugador jugador) {
      this.jugador = jugador;
      InitializeComponent();
      cargarJugadoresPuntos();
    }

    private void bt_Ordenar_Click(object sender, RoutedEventArgs e) {
      if (bt_Ordenar.Content.Equals("Ordenar por Victorias")) {
        cargarJugadoresVictorias();
        bt_Ordenar.Content = "Ordenar por Puntos";
        dgc_Posicion.Header = "Victorias";
        dgc_Posicion.Binding = new Binding("Victorias");
      } else {
        cargarJugadoresPuntos();
        bt_Ordenar.Content = "Ordenar por Victorias";
        dgc_Posicion.Header = "Puntos";
        dgc_Posicion.Binding = new Binding("Puntos");
      }
    }

    private void cargarJugadoresPuntos() {
      ServiceSYE.JugadorClient cliente = new ServiceSYE.JugadorClient();
      var jugadores = cliente.GetJugadoresPuntos();
      dg_Jugadores.ItemsSource = jugadores;
      int i = 0;
      foreach (var jugador in jugadores) {
        if (jugador.NombreUsuario.Equals(this.jugador.NombreUsuario)) {
          break;
        }
        i++;
      }
    }

    private void cargarJugadoresVictorias() {
      ServiceSYE.JugadorClient cliente = new ServiceSYE.JugadorClient();
      var jugadores = cliente.GetJugadoresVictorias();
      dg_Jugadores.ItemsSource = jugadores;
      int i = 0;
      foreach (var jugador in jugadores) {
        if (jugador.NombreUsuario.Equals(this.jugador.NombreUsuario)) {
          break;
        }
        i++;
      }
    }
  }
}

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
  public partial class TablaPosiciones : Window {
    ServiceSYE.Jugador jugador;

    public TablaPosiciones(ServiceSYE.Jugador jugador) {
      this.jugador = jugador;
      InitializeComponent();
      CargarJugadoresPuntos();
    }

    private void Bt_Ordenar_Click(object sender, RoutedEventArgs e) {
      if (bt_Ordenar.Content.Equals("Ordenar por Victorias")) {
        CargarJugadoresVictorias();
        bt_Ordenar.Content = Properties.Resources.bt_OrdenarPuntos;
        dgc_Posicion.Header = Properties.Resources.lb_Victorias;
        dgc_Posicion.Binding = new Binding("Estadisticas.Victorias");
      } else {
        CargarJugadoresPuntos();
        bt_Ordenar.Content = Properties.Resources.bt_OrdenarVictorias;
        dgc_Posicion.Header = Properties.Resources.lb_Puntos;
        dgc_Posicion.Binding = new Binding("Estadisticas.Puntos");
      }
    }

    private void CargarJugadoresPuntos() {
      ServiceSYE.JugadorClient cliente = new ServiceSYE.JugadorClient();
      var jugadores = cliente.ObtenerJugadoresPuntos();
      dg_Jugadores.ItemsSource = jugadores;
      int i = 0;
      foreach (var jugador in jugadores) {
        if (jugador.NombreUsuario.Equals(this.jugador.NombreUsuario)) {
          break;
        }
        i++;
      }
    }

    private void CargarJugadoresVictorias() {
      ServiceSYE.JugadorClient cliente = new ServiceSYE.JugadorClient();
      var jugadores = cliente.ObtenerJugadoresVictorias();
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

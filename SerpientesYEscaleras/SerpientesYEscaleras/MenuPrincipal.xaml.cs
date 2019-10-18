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
  public partial class MenuPrincipal : Window {
    ServiceSYE.Jugador jugador;

    public MenuPrincipal(ServiceSYE.Jugador jugador) {
      this.jugador = jugador;
      InitializeComponent();
      CargarDatos();
    }

    private void CargarDatos() {
      lb_NombreUsuario.Content = jugador.NombreUsuario;
      lb_Puntos.Content = jugador.Estadisticas.Puntos + " " + lb_Puntos.Content;
      lb_Victorias.Content = jugador.Estadisticas.Victorias + " " + lb_Victorias.Content;
    }

    private void Bt_CrearPartida_Click(object sender, RoutedEventArgs e) {
      CrearPartida crearPartida = new CrearPartida();
      crearPartida.ShowDialog();
    }

    private void Bt_UnirsePartida_Click(object sender, RoutedEventArgs e) {
      UnirsePartida unirsePartida = new UnirsePartida(this);
      unirsePartida.ShowDialog();
    }

    private void Bt_TablaPosiciones_Click(object sender, RoutedEventArgs e) {
      TablaPosiciones tablaPosiciones = new TablaPosiciones(jugador);
      tablaPosiciones.ShowDialog();
    }

    private void Bt_Salir_Click(object sender, RoutedEventArgs e) {
      MainWindow mainWindow = new MainWindow();
      mainWindow.Show();
      this.Close();
    }

    public void UnirseAPartida() {
      Partida partida = new Partida(jugador);
      partida.Show();
      this.Close();
    }
  }
}

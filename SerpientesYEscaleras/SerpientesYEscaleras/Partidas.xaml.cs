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
  /// Lógica de interacción para Partidas.xaml
  /// </summary>
  public partial class Partidas : Window {
    ServiceSYE.Jugador jugador;

    public Partidas(ServiceSYE.Jugador jugador) {
      this.jugador = jugador;
      InitializeComponent();
      cargarDatos();
    }

    private void cargarDatos() {
      lb_NombreUsuario.Content = jugador.NombreUsuario;
      lb_Puntos.Content = jugador.Puntos + " " + lb_Puntos.Content;
      lb_Victorias.Content = jugador.Victorias + " " + lb_Victorias.Content;
    }

    private void btCrearPartida_Click(object sender, RoutedEventArgs e) {
      CrearPartida crearPartida = new CrearPartida();
      crearPartida.ShowDialog();
    }

    private void btTablaPosiciones_Click(object sender, RoutedEventArgs e) {
      TablaPosiciones tablaPosiciones = new TablaPosiciones(jugador);
      tablaPosiciones.ShowDialog();
    }

    private void bt_Salir_Click(object sender, RoutedEventArgs e) {
      MainWindow mainWindow = new MainWindow();
      mainWindow.Show();
      this.Close();
    }

    private void LbPartida_MouseUp(object sender, MouseButtonEventArgs e) {
      Partida partida = new Partida(jugador);
      partida.Show();
      this.Close();
    }
  }
}

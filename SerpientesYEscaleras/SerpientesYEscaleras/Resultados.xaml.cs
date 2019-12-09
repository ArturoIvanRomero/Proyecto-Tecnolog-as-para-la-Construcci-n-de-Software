using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;

namespace SerpientesYEscaleras {
  /// <summary>
  /// Clase parcial Resultados.
  /// Contiene métodos necesarios de la ventana de Resultados.
  /// </summary>
  public partial class Resultados : Window {
    Partida partida;

    /// <summary>
    /// Constructor de la ventana Resultados.
    /// </summary>
    /// <param name="partida">
    /// Ventana Partida de la cual se mandó a llamar la ventana.
    /// </param>
    /// <param name="posicionJugadores">
    /// Lista de jugadores según su posición al finalizar la partida y con los puntos que ganaron.
    /// </param>
    public Resultados(Partida partida, List<ServiceSYE.Jugador> posicionJugadores) {
      InitializeComponent();
      this.partida = partida;
      dg_Jugadores.ItemsSource = posicionJugadores;
    }

    /// <summary>
    /// Continua con el proceso.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    private void Bt_Aceptar_Click(object sender, RoutedEventArgs e) {
      this.Close();
    }

    /// <summary>
    /// Cierra la ventana.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e) {
      partida.bt_Abandonar.RaiseEvent(new RoutedEventArgs(Button.ClickEvent, partida.bt_Abandonar));
    }
  }
}

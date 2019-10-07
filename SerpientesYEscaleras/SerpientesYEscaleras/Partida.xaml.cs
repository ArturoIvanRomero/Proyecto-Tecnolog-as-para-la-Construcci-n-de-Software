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
  /// Lógica de interacción para Partida.xaml
  /// </summary>
  public partial class Partida : Window {
    ServiceSYE.Jugador jugador;

    public Partida(ServiceSYE.Jugador jugador) {
      this.jugador = jugador;
      InitializeComponent();
    }

    private void bt_Enviar_Click(object sender, RoutedEventArgs e) {
      if (tb_Mensaje.Text != null && tb_Mensaje.Text.Length > 0) {
        tb_Mensajes.Text = tb_Mensajes.Text + jugador.NombreUsuario + " > " + tb_Mensaje.Text + "\n\n";
        tb_Mensaje.Text = "";
      }
    }
  }
}

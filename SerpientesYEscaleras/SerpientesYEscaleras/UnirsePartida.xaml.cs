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
  public partial class UnirsePartida : Window {
    MenuPrincipal menuPrincipal;

    public UnirsePartida(MenuPrincipal menuPrincipal) {
      this.menuPrincipal = menuPrincipal;
      InitializeComponent();
      CargarPartidas();
    }

    private void Bt_Unirse_Click(object sender, RoutedEventArgs e) {
      menuPrincipal.UnirseAPartida();
      this.Close();
    }

    private void CargarPartidas() {
      ServiceSYE.PartidaClient cliente = new ServiceSYE.PartidaClient(); ;
      dg_Partidas.ItemsSource = cliente.ActualizarPartidas();
    }
  }
}

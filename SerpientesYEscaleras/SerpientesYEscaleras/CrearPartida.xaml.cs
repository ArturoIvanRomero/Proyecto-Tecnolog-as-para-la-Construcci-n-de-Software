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
  public partial class CrearPartida : Window {
    public CrearPartida() {
      InitializeComponent();
    }

    private void Bt_Crear_Click(object sender, RoutedEventArgs e) {
      ServiceSYE.PartidaClient cliente = new ServiceSYE.PartidaClient();
      if (tb_NombrePartida.Text != null && tb_NombrePartida.Text.Length > 0) {
        cliente.CrearPartida(new ServiceSYE.Partida {
          Nombre = tb_NombrePartida.Text,
          Dificultad = cb_Dificultad.Text,
        });
        MessageBox.Show("Se creó la partida.");
        this.Close();
      } else {
        MessageBox.Show(Properties.Resources.mb_NombreVacio, Properties.Resources.mb_Alerta);
      }
    }
  }
}

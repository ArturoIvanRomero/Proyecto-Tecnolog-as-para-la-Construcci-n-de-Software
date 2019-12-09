using System;
using System.Windows.Forms;

namespace SerpientesYEscaleras {
  /// <summary>
  /// Clase MessageBoxTemporal.
  /// Contiene métodos necesarios para crear un MessageBox temporal.
  /// No fue construido por el equipo de desarrollo.
  /// </summary>
  class MessageBoxTemporal {
    readonly System.Threading.Timer intervaloTiempo;
    readonly string tituloMessageBox;
    readonly string textoMessageBox;
    int tiempoMaximo;
    IntPtr hndLabel = IntPtr.Zero;
    readonly bool mostrarContador;

    /// <summary>
    /// Constructor del MessageBoxTemporal.
    /// </summary>
    /// <param name="texto">
    /// Texto que tendrá el MessageBox.
    /// </param>
    /// <param name="titulo">
    /// Título que tendrá el MessageBox.
    /// </param>
    /// <param name="tiempo">
    /// Tiempo que tendrá el MessageBox.
    /// </param>
    /// <param name="contador">
    /// Valor boolean que indica si se mostrará o no el contador.
    /// </param>
    MessageBoxTemporal(string texto, string titulo, int tiempo, bool contador) {
      tituloMessageBox = titulo;
      tiempoMaximo = tiempo;
      textoMessageBox = texto;
      mostrarContador = contador;

      if (tiempoMaximo > 99) return; //Máximo 99 segundos
      intervaloTiempo = new System.Threading.Timer(EjecutaCada1Segundo,
          null, 1000, 1000);
      if (contador) {
        DialogResult resultadoMensaje = MessageBox.Show(texto + /*"\r\nEste mensaje se cerrará dentro de " +
                    TiempoMaximo.ToString("00") + " segundos ..."*/"", titulo);
        if (resultadoMensaje == DialogResult.OK) intervaloTiempo.Dispose();
      } else {
        DialogResult resultadoMensaje = MessageBox.Show(texto, titulo);
        if (resultadoMensaje == DialogResult.OK) intervaloTiempo.Dispose();
      }
    }

    /// <summary>
    /// Método para mostrar el MessageBoxTemporal.
    /// </summary>
    /// <param name="texto">
    /// Texto que tendrá el MessageBox.
    /// </param>
    /// <param name="titulo">
    /// Título que tendrá el MessageBox.
    /// </param>
    /// <param name="tiempo">
    /// Tiempo que tendrá el MessageBox.
    /// </param>
    /// <param name="contador">
    /// Valor boolean que indica si se mostrará o no el contador.
    /// </param>
    public static void Show(string texto, string titulo, int tiempo, bool contador) {
      new MessageBoxTemporal(texto, titulo, tiempo, contador);
    }
    void EjecutaCada1Segundo(object state) {
      tiempoMaximo--;
      if (tiempoMaximo <= 0) {
        IntPtr hndMBox = FindWindow(null, tituloMessageBox);
        if (hndMBox != IntPtr.Zero) {
          SendMessage(hndMBox, WM_CLOSE, IntPtr.Zero, IntPtr.Zero);
          intervaloTiempo.Dispose();
        }
      } else if (mostrarContador) {
        // Ha pasado un intervalo de 1 seg:
        if (hndLabel != IntPtr.Zero) {
          SetWindowText(hndLabel, textoMessageBox +/*
                        "\r\nEste mensaje se cerrará dentro de " +
                        TiempoMaximo.ToString("00") + " segundos"*/"");
        } else {
          IntPtr hndMBox = FindWindow(null, tituloMessageBox);
          if (hndMBox != IntPtr.Zero) {
            // Ha encontrado el MessageBox, busca ahora el texto
            hndLabel = FindWindowEx(hndMBox, IntPtr.Zero, "Static", null);
            if (hndLabel != IntPtr.Zero) {
              // Ha encontrado el texto porque el MessageBox
              // solo tiene un control "Static".
              SetWindowText(hndLabel, textoMessageBox +/*
                                "\r\nEste mensaje se cerrará dentro de " +
                                TiempoMaximo.ToString("00") + " segundos"*/"");
            }
          }
        }
      }
    }
    const int WM_CLOSE = 0x0010;
    [System.Runtime.InteropServices.DllImport("user32.dll", SetLastError = true)]
    static extern IntPtr FindWindow(string lpClassName, string lpWindowName);
    [System.Runtime.InteropServices.DllImport("user32.dll",
        CharSet = System.Runtime.InteropServices.CharSet.Auto)]
    static extern IntPtr SendMessage(IntPtr hWnd, UInt32 Msg, IntPtr wParam, IntPtr lParam);
    [System.Runtime.InteropServices.DllImport("user32.dll", SetLastError = true,
        CharSet = System.Runtime.InteropServices.CharSet.Auto)]
    static extern IntPtr FindWindowEx(IntPtr hwndParent, IntPtr hwndChildAfter,
        string lpszClass, string lpszWindow);
    [System.Runtime.InteropServices.DllImport("user32.dll", SetLastError = true,
        CharSet = System.Runtime.InteropServices.CharSet.Auto)]
    static extern bool SetWindowText(IntPtr hwnd, string lpString);
  }
}

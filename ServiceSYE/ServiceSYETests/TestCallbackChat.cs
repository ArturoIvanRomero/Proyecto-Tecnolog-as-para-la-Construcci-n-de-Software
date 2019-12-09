using ServiceSYE;

namespace ServiceSYETests {
  internal class TestCallbackChat : IClienteChat {
    public int respuesta = 0;
    public void RecibeMensaje(string nombreUsuario, string mensaje, int numeroJugadores) {
      this.respuesta = numeroJugadores;
    }

    public void RecibeMensajePartida(string nombreUsuario, string mensaje, int tipoMensaje) {
      this.respuesta = tipoMensaje;
    }
  }
}

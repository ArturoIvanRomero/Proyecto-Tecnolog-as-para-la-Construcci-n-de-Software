using System.Collections.Generic;
using ServiceSYE;

namespace ServiceSYETests {
  internal class TestCallbackPartida : IClientePartida {
    public int respuesta = 0;

    public void ActualizarPartidas(List<Partida> partidas) {
      this.respuesta = 1;
    }


    public void Tirar() {
      this.respuesta = 1;
    }
  }
}

using System.Collections.Generic;
using System.ServiceModel;

namespace ServiceSYE {
  [ServiceContract]
  public interface IClientePartida {
    [OperationContract(IsOneWay = true)]
    void ActualizarPartidas(List<Partida> partidas);

    [OperationContract(IsOneWay = true)]
    void Tirar();
  }
}

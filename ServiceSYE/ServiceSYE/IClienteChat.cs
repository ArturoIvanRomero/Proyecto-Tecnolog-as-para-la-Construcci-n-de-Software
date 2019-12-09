using System;
using System.ServiceModel;

namespace ServiceSYE {
  [ServiceContract]
  public interface IClienteChat {
    [OperationContract(IsOneWay = true)]
    void RecibeMensaje(String nombreUsuario, String mensaje, int numeroJugadores);

    [OperationContract(IsOneWay = true)]
    void RecibeMensajePartida(String nombreUsuario, String mensaje, int tipoMensaje);
  }
}

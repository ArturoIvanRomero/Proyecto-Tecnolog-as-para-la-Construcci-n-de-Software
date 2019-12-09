using System;
using System.ServiceModel;

namespace ServiceSYE {
  [ServiceContract(CallbackContract = typeof(IClienteChat))]
  interface IChat {
    [OperationContract(IsOneWay = true)]
    void UnirseChat(String nombreUsuario, String nombrePartida);

    [OperationContract(IsOneWay = true)]
    void EnviarMensaje(String mensaje, String nombrePartida);

    [OperationContract(IsOneWay = true)]
    void EnviarMensajePartida(String mensaje, String nombrePartida, int tipoMensaje);

    [OperationContract(IsOneWay = true)]
    void SalirChat(String nombrePartida);

    [OperationContract(IsOneWay = true)]
    void SalirChatPartida(String nombrePartida);
  }
}

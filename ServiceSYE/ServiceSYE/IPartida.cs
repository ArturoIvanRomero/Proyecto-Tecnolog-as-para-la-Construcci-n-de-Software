using System;
using System.Collections.Generic;
using System.Runtime.Serialization;
using System.ServiceModel;

namespace ServiceSYE {
  [ServiceContract(CallbackContract = typeof(IClientePartida))]
  public interface IPartida {
    [OperationContract]
    void CrearPartida(Partida partida);

    [OperationContract]
    List<Partida> ObtenerPartidas();

    [OperationContract]
    Boolean ValidarNombrePartida(String nombrePartida);

    [OperationContract]
    void VerPartidas(String nombreUsuario);

    [OperationContract]
    void SalirVerPartidas();

    [OperationContract]
    void UnirsePartida(Jugador jugador, String nombrePartida);

    [OperationContract]
    void SalirPartida(Jugador jugador, String nombrePartida);

    [OperationContract]
    void SalirPartidaEnJuego(Jugador jugador, String nombrePartida);

    [OperationContract]
    Partida ObtenerPartida(String nombrePartida);

    [OperationContract]
    void CambiarTurno(String nombrePartida, int casilla, int turno);
    
    [OperationContract]
    void MovimientoEspecial(String nombrePartida, int casilla);

    [OperationContract]
    void CambiarPosicionBonus(String nombrePartida);
  }

  [DataContract]
  public class Partida {
    [DataMember]
    public string Nombre { get; set; }
    [DataMember]
    public string Dificultad { get; set; }
    [DataMember]
    public int Turno { get; set; }
    [DataMember]
    public Tablero Tablero { get; set; }
    [DataMember]
    public Dictionary<IClientePartida, Jugador> JugadoresPartida { get; set; }
    [DataMember]
    public Dictionary<IClienteChat, string> JugadoresChat { get; set; }
  }

  [DataContract]
  public class Tablero {
    [DataMember]
    public Casilla[] Casillas { get; set; }
  }

  [DataContract]
  public class Casilla {
    [DataMember]
    public int Numero { get; set; }
    [DataMember]
    public int PosicionX { get; set; }
    [DataMember]
    public int PosicionY { get; set; }
    [DataMember]
    public int Movimiento { get; set; }
    [DataMember]
    public bool Bonus { get; set; }
  }
}

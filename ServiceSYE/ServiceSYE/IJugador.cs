using System;
using System.Collections.Generic;
using System.Runtime.Serialization;
using System.ServiceModel;

namespace ServiceSYE {
  [ServiceContract]
  public interface IJugador {
    [OperationContract]
    Boolean RegistrarJugador(Jugador jugador);

    [OperationContract]
    Jugador IniciarSesion(String nombreUsuario, String contrasenia);

    [OperationContract]
    void UnirseAlJuego(Jugador jugador);

    [OperationContract]
    void SalirDelJuego(Jugador jugador);

    [OperationContract]
    Boolean ValidarConectado(Jugador jugador);

    [OperationContract]
    List<Jugador> ObtenerJugadoresPuntos();

    [OperationContract]
    List<Jugador> ObtenerJugadoresVictorias();

    [OperationContract]
    Boolean EnviarCodigoACorreo(Jugador jugador, String asunto, String mensajeIngresar, String mensajeFinal);

    [OperationContract]
    Jugador ObtenerJugadorPorCodigo(String codigoVerificacion);

    [OperationContract]
    Jugador ObtenerJugadorPorNombre(String nombreUsuario);

    [OperationContract]
    Jugador ObtenerJugadorPorCorreo(String correoElectronico);

    [OperationContract]
    Boolean ValidarCuentaJugador(String correoElectronico);

    [OperationContract]
    int ValidarCodigo(String codigoVerificacion);

    [OperationContract]
    Boolean ModificarCodigo(String codigoVerificacion, String nuevoCodigoVerificacion);

    [OperationContract]
    Boolean ModificarEstadisticas(String nombreUsuario, Int16 puntos, Int16 victorias);

    [OperationContract]
    Jugador CrearJugador(List<DataAccess.Jugador> jugador);
  }
  
  [DataContract]
   public class Jugador {
    [DataMember]
    public string NombreUsuario { get; set; }
    [DataMember]
    public string Contrasenia { get; set; }
    [DataMember]
    public string CorreoElectronico { get; set; }
    [DataMember]
    public string Codigo { get; set; }
    [DataMember]
    public Estadisticas Estadisticas { get; set; }
    [DataMember]
    public Turno Turno { get; set; }
  }

  [DataContract]
  public class Estadisticas {
    [DataMember]
    public Int16 Puntos { get; set; }
    [DataMember]
    public Int16 Victorias { get; set; }
  }

  [DataContract]
  public class Turno {
    [DataMember]
    public int NumeroTurno { get; set; }
    [DataMember]
    public Casilla Casilla { get; set; }
  }
}

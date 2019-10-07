using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace ServiceSYE {
  [ServiceContract]
  public interface IJugador {
    [OperationContract]
    void AddJugador(Jugador jugador);

    [OperationContract]
    Jugador GetJugador(String nombreUsuario, String contrasenia);

    [OperationContract]
    List<Jugador> GetJugadoresPuntos();

    [OperationContract]
    List<Jugador> GetJugadoresVictorias();
  }
  
  [DataContract]
   public class Jugador {
    private String nombreUsuario;
    private String contrasenia;
    private String correoElectronico;
    private Int16 puntos;
    private Int16 victorias;
    private String codigo;
    private Boolean validado;

    [DataMember]
    public string NombreUsuario { get => nombreUsuario; set => nombreUsuario = value; }
    [DataMember]
    public string Contrasenia { get => contrasenia; set => contrasenia = value; }
    [DataMember]
    public string CorreoElectronico { get => correoElectronico; set => correoElectronico = value; }
    [DataMember]
    public Int16 Puntos { get => puntos; set => puntos = value; }
    [DataMember] 
    public Int16 Victorias { get => victorias; set => victorias = value; }
    [DataMember]
    public string Codigo { get => codigo; set => codigo = value; }
    [DataMember] 
    public bool Validado { get => validado; set => validado = value; }
  }
}

using System;
using System.Collections.Generic;
using System.Data.Entity.Core;
using System.Linq;
using System.Net.Mail;
using System.ServiceModel;
using DataAccess;

namespace ServiceSYE {
  /// <summary>
  /// Clase Service que implementa los métodos de los servicios que proporciona a los clientes.
  /// </summary>
  /// <remarks>
  /// Implementa las interfaces IJugador, IPartida, IChat.
  /// </remarks>
  [ServiceBehavior(ConcurrencyMode = ConcurrencyMode.Single, InstanceContextMode = InstanceContextMode.Single)]
  public partial class Service : IJugador {
    /// <summary>
    /// Lista de jugadores que están conectados al servidor mientras tengan sesión iniciada.
    /// </summary>
    public List<string> Jugadores { get; set; } = new List<String>();

    /// <summary>
    /// Constructor del Service.
    /// </summary>
    public Service() {
    }

    /// <summary>
    /// Registra a un jugador en la base de datos.
    /// </summary>
    /// <param name="jugador">
    /// Objeto jugador que se quiere registrar en la base de datos.
    /// </param>
    /// <returns>
    /// Valor boolean regresa True si registra al jugador, si ocurre una excepción con la base de datos regresa False.
    /// </returns>
    public Boolean RegistrarJugador(Jugador jugador) {
      Boolean exito = true;
      DataBaseContainer baseDatos = new DataBaseContainer();
      baseDatos.JugadorSet.Add(new DataAccess.Jugador {
          nombreUsuario = jugador.NombreUsuario,
          contrasenia = jugador.Contrasenia,
          correoElectronico = jugador.CorreoElectronico,
          codigo = jugador.Codigo,
          Estadisticas = new DataAccess.Estadisticas {
            puntos = jugador.Estadisticas.Puntos,
            victorias = jugador.Estadisticas.Victorias,
          },
        });
      try {
        baseDatos.SaveChanges();
      } catch (EntityException) {
        exito = false;
      }
      return exito;
    }

    /// <summary>
    /// Verifica los datos de un jugador para iniciar sesión corresponde a un jugador en la base de datos.
    /// </summary>
    /// <param name="nombreUsuario">
    /// Nombre de usuario con el que se quiere iniciar sesión.
    /// </param>
    /// <param name="contrasenia">
    /// Contraseña con la que se quiere iniciar sesión.
    /// </param>
    /// <returns>
    /// Objeto jugador con los datos del jugador cuando los datos son correctos.
    /// Si los datos no corresponden regresa al jugador con datos vacios.
    /// Si hay una excepción con la base de datos regresa al jugador con un * en su nombre de usuario.
    /// </returns>
    public Jugador IniciarSesion(String nombreUsuario, String contrasenia) {
      Jugador jugadorEncontrado;
      try {
        using (var baseDatos = new DataBaseContainer()) {
          var jugador = (from jugadorBaseDatos in baseDatos.JugadorSet where jugadorBaseDatos.nombreUsuario == nombreUsuario
                         where jugadorBaseDatos.contrasenia == contrasenia select jugadorBaseDatos).ToList();
          jugadorEncontrado = CrearJugador(jugador);
        }
      } catch (EntityException) {
        jugadorEncontrado = new Jugador {
          NombreUsuario = "*",
        };
      }
      return jugadorEncontrado;
    }

    /// <summary>
    /// Une a un jugador a la lista de jugadores que están conectados.
    /// </summary>
    /// <param name="jugador">
    /// Objeto jugador a unir a la lista.
    /// </param>
    public void UnirseAlJuego(Jugador jugador) {
      Boolean verificar = true;
      for (int i = 0; i < Jugadores.Count; i++) {
        if (jugador.NombreUsuario.Equals(Jugadores.ElementAt(i))) {
          verificar = false;
        }
      }
      if (verificar) {
        Jugadores.Add(jugador.NombreUsuario);
      }
    }

    /// <summary>
    /// Saca a un jugador de la lista de jugadores que están conectados.
    /// </summary>
    /// <param name="jugador">
    /// Objeto jugador a sacar de la lista.
    /// </param>
    public void SalirDelJuego(Jugador jugador) {
      for (int i = 0; i < Jugadores.Count; i++) {
        if (Jugadores.ElementAt(i).Equals(jugador.NombreUsuario)) {
          Jugadores.RemoveAt(i);
          break;
        }
      }
    }

    /// <summary>
    /// Valida si un jugador ya está en la lista de jugadores conectados.
    /// </summary>
    /// <param name="jugador">
    /// Objeto jugador a validar si está conectado.
    /// </param>
    /// <returns>
    /// Valor boolean que si el jugador está en la lista regresa False y si no regresa True.
    /// </returns>
    public Boolean ValidarConectado(Jugador jugador) {
      Boolean validar = true;
      for (int i = 0; i < Jugadores.Count; i++) {
        if (Jugadores.ElementAt(i).Equals(jugador.NombreUsuario)) {
          validar = false;
          break;
        }
      }
      return validar;
    }

    /// <summary>
    /// Obtiene los 100 jugadores con más puntos de la base de datos.
    /// </summary>
    /// <returns>
    /// Lista con los 100 jugadores con más puntos.
    /// Si hay una excepción con la base de datos regresa una lista vacía.
    /// </returns>
    public List<Jugador> ObtenerJugadoresPuntos() {
      List<Jugador> listaJugadores = new List<Jugador>();
      try {
        using (var baseDatos = new DataBaseContainer()) {
          var jugadoresPuntos = (from jugadorBaseDatos in baseDatos.JugadorSet orderby jugadorBaseDatos.Estadisticas.puntos descending select jugadorBaseDatos).Take(100).ToList();
          foreach (var jugador in jugadoresPuntos) {
            listaJugadores.Add(new Jugador {
              NombreUsuario = jugador.nombreUsuario,
              Contrasenia = jugador.contrasenia,
              CorreoElectronico = jugador.correoElectronico,
              Codigo = jugador.codigo,
              Estadisticas = new Estadisticas {
                Puntos = jugador.Estadisticas.puntos,
                Victorias = jugador.Estadisticas.victorias,
              }
            });
          }
        }
      } catch (EntityException) {
        listaJugadores = new List<Jugador>();
      }
      return listaJugadores;
    }

    /// <summary>
    /// Obtiene los 100 jugadores con más victorias de la base de datos.
    /// </summary>
    /// <returns>
    /// Lista con los 100 jugadores con más victorias.
    /// Si hay una excepción con la base de datos regresa una lista vacía.
    /// </returns>
    public List<Jugador> ObtenerJugadoresVictorias() {
      List<Jugador> listaJugadores = new List<Jugador>();
      try {
        using (var baseDatos = new DataBaseContainer()) {
          var jugadoresVictorias = (from jugadorBaseDatos in baseDatos.JugadorSet orderby jugadorBaseDatos.Estadisticas.victorias descending select jugadorBaseDatos).Take(100).ToList();
          foreach (var jugador in jugadoresVictorias) {
            listaJugadores.Add(new Jugador {
              NombreUsuario = jugador.nombreUsuario,
              Contrasenia = jugador.contrasenia,
              CorreoElectronico = jugador.correoElectronico,
              Codigo = jugador.codigo,
              Estadisticas = new Estadisticas {
                Puntos = jugador.Estadisticas.puntos,
                Victorias = jugador.Estadisticas.victorias,
              }
            });
          }
        }
      } catch (EntityException) {
        listaJugadores = new List<Jugador>();
      }
      return listaJugadores;
    }

    /// <summary>
    /// Envía un correo al jugador con el código de verificación.
    /// </summary>
    /// <param name="jugador">
    /// Objecto jugador que tiene el nombre y correo electrónico de este.
    /// </param>
    /// <param name="asunto">
    /// Asunto que llevará el correo.
    /// </param>
    /// <param name="mensajeIngresar">
    /// Mensaje que llevará el correo.
    /// </param>
    /// <param name="mensajeFinal">
    /// Mensaje que llevará el correo.
    /// </param>
    /// <returns>
    /// Valor boolean que es True si se envió el correo y si no es False.
    /// </returns>
    public Boolean EnviarCodigoACorreo(Jugador jugador, String asunto, String mensajeIngresar, String mensajeFinal) {
      Boolean correcto = true;
      System.Net.Mail.MailMessage mensaje = new System.Net.Mail.MailMessage();
      mensaje.To.Add(jugador.CorreoElectronico);
      mensaje.Subject = asunto;
      mensaje.SubjectEncoding = System.Text.Encoding.UTF8;
      String mensajeCorreo = mensajeIngresar + jugador.Codigo + mensajeFinal;
      mensaje.Body = mensajeCorreo;
      mensaje.IsBodyHtml = true;
      mensaje.BodyEncoding = System.Text.Encoding.UTF8;
      mensaje.IsBodyHtml = true;
      mensaje.From = new System.Net.Mail.MailAddress(DesEncriptar(Properties.Resources.correo));
      System.Net.Mail.SmtpClient cliente = new System.Net.Mail.SmtpClient();
      cliente.Credentials = new System.Net.NetworkCredential(DesEncriptar(Properties.Resources.correo), DesEncriptar(Properties.Resources.contrasenia));
      cliente.Port = 587;
      cliente.EnableSsl = true;
      cliente.Host = "smtp.gmail.com";
      try {
        cliente.Send(mensaje);
      } catch (SmtpException) {
        correcto = false;
      }
      return correcto;
    }

    /// <summary>
    /// Busca un jugador en la base de datos por el código.
    /// </summary>
    /// <param name="codigoVerificacion">
    /// Código con el que se buscará al jugador en la base de datos.
    /// </param>
    /// <returns>
    /// Objeto jugador con los datos del jugador que se encontró en la base de datos.
    /// Si no se encuentra un jugador con ese código regresa un jugador con datos vacios.
    /// Si hay una excepción con la base de datos regresa al jugador con un * en su nombre de usuario.
    /// </returns>
    public Jugador ObtenerJugadorPorCodigo(String codigoVerificacion) {
      Jugador jugadorEncontrado;
      try {
        using (var baseDatos = new DataBaseContainer()) {
          var jugador = (from jugadorBaseDatos in baseDatos.JugadorSet where jugadorBaseDatos.codigo == codigoVerificacion select jugadorBaseDatos).ToList();
          jugadorEncontrado = CrearJugador(jugador);
        }
      } catch (EntityException) {
        jugadorEncontrado = new Jugador {
          NombreUsuario = "*",
        };
      }
      return jugadorEncontrado;
    }

    /// <summary>
    /// Busca un jugador en la base de datos por su nombre de usuario.
    /// </summary>
    /// <param name="nombreUsuario">
    /// Nombre de usuario con el que se buscará al jugador en la base de datos.
    /// </param>
    /// <returns>
    /// Objeto jugador con los datos del jugador que se encontró en la base de datos.
    /// Si no se encuentra un jugador con ese nombre regresa un jugador con datos vacios.
    /// Si hay una excepción con la base de datos regresa al jugador con un * en su nombre de usuario.
    /// </returns>
    public Jugador ObtenerJugadorPorNombre(String nombreUsuario) {
      Jugador jugadorEncontrado;
      try {
        using (var baseDatos = new DataBaseContainer()) {
          var jugador = (from jugadorBaseDatos in baseDatos.JugadorSet where jugadorBaseDatos.nombreUsuario == nombreUsuario select jugadorBaseDatos).ToList();
          jugadorEncontrado = CrearJugador(jugador);
        }
      } catch (EntityException) {
        jugadorEncontrado = new Jugador {
          NombreUsuario = "*",
        };
      }
      return jugadorEncontrado;
    }

    /// <summary>
    /// Busca un jugador en la base de datos por el correo electrónico.
    /// </summary>
    /// <param name="correoElectronico">
    /// Correo electrónico con el que se buscará al jugador en la base de datos.
    /// </param>
    /// <returns>
    /// Objeto jugador con los datos del jugador que se encontró en la base de datos.
    /// Si no se encuentra un jugador con ese correo regresa un jugador con datos vacios.
    /// Si hay una excepción con la base de datos regresa al jugador con un * en su nombre de usuario.
    /// </returns>
    public Jugador ObtenerJugadorPorCorreo(String correoElectronico) {
      Jugador jugadorEncontrado;
      try {
        using (var baseDatos = new DataBaseContainer()) {
          var jugador = (from jugadorBaseDatos in baseDatos.JugadorSet where jugadorBaseDatos.correoElectronico == correoElectronico select jugadorBaseDatos).ToList();
          jugadorEncontrado = CrearJugador(jugador);
        }
      } catch (EntityException) {
        jugadorEncontrado = new Jugador {
          NombreUsuario = "*",
        };
      }
      return jugadorEncontrado;
    }

    /// <summary>
    /// Crea un jugador con los datos del primer jugador en una lista de jugadores.
    /// </summary>
    /// <param name="jugador">
    /// Lista de jugadores.
    /// </param>
    /// <returns>
    /// Objeto jugador con los datos del primer jugador de la lista.
    /// Si la lista tiene más de un jugador regresa un jugador con datos vacios.
    /// </returns>
    public Jugador CrearJugador(List<DataAccess.Jugador> jugador) {
      Jugador jugadorEncontrado;
      if (jugador.Count == 1) {
        jugadorEncontrado = new Jugador {
          NombreUsuario = jugador.ElementAt(0).nombreUsuario,
          Contrasenia = jugador.ElementAt(0).contrasenia,
          CorreoElectronico = jugador.ElementAt(0).correoElectronico,
          Codigo = jugador.ElementAt(0).codigo,
          Estadisticas = new Estadisticas {
            Puntos = jugador.ElementAt(0).Estadisticas.puntos,
            Victorias = jugador.ElementAt(0).Estadisticas.victorias,
          }
        };
      } else {
        jugadorEncontrado = new Jugador {
          NombreUsuario = "",
          Contrasenia = "",
          CorreoElectronico = "",
          Codigo = "",
          Estadisticas = new Estadisticas(),
        };
      }
      return jugadorEncontrado;
    }

    /// <summary>
    /// Valida la cuenta de un jugador cambiando su código a 00000 en la base de datos, si coincide con el código ingresado.
    /// </summary>
    /// <param name="codigoVerificacion">
    /// Código ingresado.
    /// </param>
    /// <returns>
    /// Valor boolean que es True si validó al jugador y es False si ocurrió un excepción con la base de datos.
    /// </returns>
    public Boolean ValidarCuentaJugador(String codigoVerificacion) {
      Boolean exito = true;
      try {
        using (var baseDatos = new DataBaseContainer()) {
          var jugador = (from jugadorBaseDatos in baseDatos.JugadorSet where jugadorBaseDatos.codigo == codigoVerificacion select jugadorBaseDatos).ToList();
          jugador.ElementAt(0).codigo = "00000";
          baseDatos.SaveChanges();
        }
      } catch (EntityException) {
        exito = false;
      }
      return exito;
    }

    /// <summary>
    /// Valida si un código de verificación no existe en la base de datos con algún jugador ya registrado.
    /// </summary>
    /// <param name="codigoVerificacion">
    /// Código de verificación a validar.
    /// </param>
    /// <returns>
    /// Valor entero que es 0 si el código está disponible, es 1 si el código ya está ocupado y es 3 si ocurrió una excepción con la base de datos.
    /// </returns>
    public int ValidarCodigo(String codigoVerificacion) {
      int validar = 0;
      try {
        using (var baseDatos = new DataBaseContainer()) {
          var jugador = (from jugadorBaseDatos in baseDatos.JugadorSet where jugadorBaseDatos.codigo == codigoVerificacion select jugadorBaseDatos).ToList();
          if (jugador.Count == 1) {
            validar = 1;
          }
        }
      } catch (EntityException) {
        validar = 2;
      }
      return validar;
    }

    /// <summary>
    /// Modifica el código de verificación de un jugador en la base de datos. 
    /// </summary>
    /// <param name="codigoVerificacion">
    /// Código de verificación del jugador.
    /// </param>
    /// <param name="nuevoCodigoVerificacion">
    /// Nuevo código de verificación.
    /// </param>
    /// <returns>
    /// Valor boolean que es True si modificó el código del jugador y es False si ocurrió una excepción con la base de datos.
    /// </returns>
    public Boolean ModificarCodigo(String codigoVerificacion, String nuevoCodigoVerificacion) {
      Boolean exito = true;
      try {
        using (var baseDatos = new DataBaseContainer()) {
          var jugador = (from jugadorBaseDatos in baseDatos.JugadorSet where jugadorBaseDatos.codigo == codigoVerificacion select jugadorBaseDatos).ToList();
          jugador.ElementAt(0).codigo = nuevoCodigoVerificacion;
          baseDatos.SaveChanges();
        }
      } catch (EntityException) {
        exito = false;
      }
      return exito;
    }

    /// <summary>
    /// Modifica las estadísticas de un jugador en la base de datos.
    /// </summary>
    /// <param name="nombreUsuario">
    /// Nombre de usuario del jugador al que se le modificaran sus estadísticas.
    /// </param>
    /// <param name="puntos">
    /// Nuevos puntos del jugador.
    /// </param>
    /// <param name="victorias">
    /// Nuevas victorias del jugador.
    /// </param>
    /// <returns>
    /// Valor boolean que es True si modificó las estadísticas del jugador y es False si ocurrió una excepción con la base de datos.
    /// </returns>
    public Boolean ModificarEstadisticas(String nombreUsuario, Int16 puntos, Int16 victorias) {
      Boolean exito = true;
      try {
        using (var baseDatos = new DataBaseContainer()) {
          var jugador = (from jugadorBaseDatos in baseDatos.JugadorSet where jugadorBaseDatos.nombreUsuario == nombreUsuario select jugadorBaseDatos).ToList();
          jugador.ElementAt(0).Estadisticas.puntos = puntos;
          jugador.ElementAt(0).Estadisticas.victorias = victorias;
          baseDatos.SaveChanges();
        }
      } catch (EntityException) {
        exito = false;
      }
      return exito;
    }

    /// <summary>
    /// Desencripta una cadena.
    /// </summary>
    /// <param name="CadenaADesencriptar">
    /// Cadena a desencriptar.
    /// </param>
    /// <returns>
    /// Cadena desencriptada.
    /// </returns>
    private static string DesEncriptar(string CadenaADesencriptar) {
      string resultado = string.Empty;
      byte[] desencriptado = Convert.FromBase64String(CadenaADesencriptar);
      resultado = System.Text.Encoding.Unicode.GetString(desencriptado);
      return resultado;
    }
  }

  public partial class Service : IPartida {
    private Random random = new Random();
    private Func<IClientePartida> conexionIPartida;

    /// <summary>
    /// Lista de jugadores que están consultando la lista de partidas disponibles para unirse.
    /// </summary>
    public Dictionary<IClientePartida, string> JugadoresPartidas { get; set; } = new Dictionary<IClientePartida, String>();
    /// <summary>
    /// Lista de partidas disponibles para unirse.
    /// </summary>
    public Dictionary<string, Partida> Partidas { get; set; } = new Dictionary<String, Partida>();
    /// <summary>
    /// Lista de partidas que se están jugando.
    /// </summary>
    public Dictionary<string, Partida> PartidasEnJuego { get; set; } = new Dictionary<String, Partida>();

    /// <summary>
    /// Constructor del Service para las pruebas.
    /// </summary>
    /// <param name="callback">
    /// Interfaz para las pruebas.
    /// </param>
    public Service(Func<IClientePartida> callback) {
      this.conexionIPartida = callback ?? throw new ArgumentNullException("Error en el callback de la prueba");
    }

    /// <summary>
    /// Agrega una partida a la lista de partidas disponibles para unirse.
    /// </summary>
    /// <param name="partida">
    /// Objeto partida que se agregará a la lista.
    /// </param>
    public void CrearPartida(Partida partida) {
      Partidas[partida.Nombre]= partida;
      List<Partida> partidasActualizadas = new List<Partida>();
      for (int i = 0; i < Partidas.Count; i++) {
        partidasActualizadas.Add(Partidas.ElementAt(i).Value);
      }
      foreach (var cliente in JugadoresPartidas.Keys) {
        cliente.ActualizarPartidas(partidasActualizadas);
      }
    }

    /// <summary>
    /// Valida que un nombre de partida esté disponible.
    /// </summary>
    /// <param name="nombrePartida">
    /// Nombre de la partida a validar.
    /// </param>
    /// <returns>
    /// Valor boolean que es True si el nombre está disponible y si no es False.
    /// </returns>
    public Boolean ValidarNombrePartida(String nombrePartida) {
      Boolean validar = true;
      for (int i = 0; i < Partidas.Count; i++) {
        if (Partidas.ElementAt(i).Value.Nombre.Equals(nombrePartida)) {
          validar = false;
          break;
        }
      }
      return validar;
    }

    /// <summary>
    /// Obtiene la lista de partidas disponibles para unirse.
    /// </summary>
    /// <returns>
    /// Lista de partidas disponible para unirse.
    /// </returns>
    public List<Partida> ObtenerPartidas() {
      List<Partida> partidasCreadas = new List<Partida>();
      for (int i = 0; i < Partidas.Count; i++) {
        partidasCreadas.Add(Partidas.ElementAt(i).Value);
      }
      return partidasCreadas;
    }

    /// <summary>
    /// Agrega un jugador a la lista de jugadores que están consultando la lista de partidas disponibles para unirse.
    /// </summary>
    /// <param name="nombreUsuario">
    /// Nombre de usuario de jugador a unir a la lista.
    /// </param>
    public void VerPartidas(String nombreUsuario) {
      if (conexionIPartida == null) {
        conexionIPartida = () => OperationContext.Current.GetCallbackChannel<IClientePartida>();
      }
      JugadoresPartidas[conexionIPartida()] = nombreUsuario;
    }

    /// <summary>
    /// Saca a un jugador de la lista de jugadores que están consultando la lista de partidas disponibles para unirse.
    /// </summary>
    public void SalirVerPartidas() {
      if (conexionIPartida == null) {
        conexionIPartida = () => OperationContext.Current.GetCallbackChannel<IClientePartida>();
      }
      JugadoresPartidas.Remove(conexionIPartida());
    }

    /// <summary>
    /// Une a un jugador a la lista de jugadores de una partida disponible para unirse.
    /// </summary>
    /// <param name="jugador">
    /// Objecto jugador que se unió.
    /// </param>
    /// <param name="nombrePartida">
    /// Nombre de la partida a la que el jugador se unió.
    /// </param>
    public void UnirsePartida(Jugador jugador, String nombrePartida) {
      if (conexionIPartida == null) {
        conexionIPartida = () => OperationContext.Current.GetCallbackChannel<IClientePartida>();
      }
      try {
        Dictionary<IClientePartida, Jugador> jugadoresPartida = Partidas[nombrePartida].JugadoresPartida;
        jugadoresPartida[conexionIPartida()] = jugador;
        Partidas[nombrePartida].JugadoresPartida = jugadoresPartida;
      } catch (NullReferenceException) {
        Dictionary<IClientePartida, Jugador> jugadoresPartida = new Dictionary<IClientePartida, Jugador>();
        jugadoresPartida[conexionIPartida()] = jugador;
        Partidas[nombrePartida].JugadoresPartida = jugadoresPartida;
      }
    }

    /// <summary>
    /// Saca a un jugador de la lista de jugadores de una partida disponible para unirse.
    /// </summary>
    /// <param name="jugador">
    /// Objecto jugador que salió.
    /// </param>
    /// <param name="nombrePartida">
    /// Nombre de la partida de la que el jugador salió.
    /// </param>
    public void SalirPartida(Jugador jugador, String nombrePartida) {
      if (conexionIPartida == null) {
        conexionIPartida = () => OperationContext.Current.GetCallbackChannel<IClientePartida>();
      }
      Partidas[nombrePartida].JugadoresPartida.Remove(conexionIPartida());
    }

    /// <summary>
    /// Saca a un jugador de la lista de jugadores de una partida en juego.
    /// </summary>
    /// <param name="jugador">
    /// Objecto jugador que salió.
    /// </param>
    /// <param name="nombrePartida">
    /// Nombre de la partida de la que el jugador salió.
    /// </param>
    public void SalirPartidaEnJuego(Jugador jugador, String nombrePartida) {
      if (conexionIPartida == null) {
        conexionIPartida = () => OperationContext.Current.GetCallbackChannel<IClientePartida>();
      }
      PartidasEnJuego[nombrePartida].JugadoresPartida.Remove(conexionIPartida());
    }

    /// <summary>
    /// Obtiene una partida en juego.
    /// </summary>
    /// <param name="nombrePartida">
    /// Nombre de la partida que se quiere obtener.
    /// </param>
    /// <returns>
    /// Objeto partida encontrado.
    /// </returns>
    public Partida ObtenerPartida(String nombrePartida) {
      return PartidasEnJuego[nombrePartida];
    }

    /// <summary>
    /// Cambia el turno de una partida en juego y mueve un jugador a una casilla.
    /// Verifica si existe un jugador con el turno al que se quire cambiar y si lo encuentra lo cambia y si no aumenta el turno hasta encontrar un jugador.
    /// </summary>
    /// <param name="nombrePartida">
    /// Nombre de la partida a la que se cambiará el turno.
    /// </param>
    /// <param name="casilla">
    /// Casilla a la que se cambiará el jugador.
    /// </param>
    /// <param name="turno">
    /// Turno al que se cambiará la partida.
    /// </param>
    public void CambiarTurno(String nombrePartida, int casilla, int turno) {
      if (casilla != 0) {
        if (conexionIPartida == null) {
          conexionIPartida = () => OperationContext.Current.GetCallbackChannel<IClientePartida>();
        }
        PartidasEnJuego[nombrePartida].JugadoresPartida[conexionIPartida()].Turno.Casilla = PartidasEnJuego[nombrePartida].Tablero.Casillas[casilla - 1];
      }
      Boolean verificarTurno = false;
      while (!verificarTurno) {
        for (int i = 0; i < PartidasEnJuego[nombrePartida].JugadoresPartida.Count; i++) {
          if (PartidasEnJuego[nombrePartida].JugadoresPartida.ElementAt(i).Value.Turno.NumeroTurno.Equals(turno)) {
            PartidasEnJuego[nombrePartida].Turno = turno;
            verificarTurno = true;
            break;
          }
        }
        if (!verificarTurno) {
          if (turno == 4) {
            turno = 1;
          } else {
            turno = turno + 1;
          }
        }
      }
    }

    /// <summary>
    /// Cambia la casilla de un jugador.
    /// </summary>
    /// <param name="nombrePartida">
    /// Nombre de la partida de la que se cambiará la casilla del jugador.
    /// </param>
    /// <param name="casilla">
    /// Casilla a la que se cambiará el jugador.
    /// </param>
    public void MovimientoEspecial(String nombrePartida, int casilla) {
      if (conexionIPartida == null) {
        conexionIPartida = () => OperationContext.Current.GetCallbackChannel<IClientePartida>();
      }
      PartidasEnJuego[nombrePartida].JugadoresPartida[conexionIPartida()].Turno.Casilla = PartidasEnJuego[nombrePartida].Tablero.Casillas[casilla - 1];
    }

    /// <summary>
    /// Cambia las casilla que tienen bonus = True.
    /// </summary>
    /// <param name="nombrePartida">
    /// Nombre de la partida a la que se le cambiaran las posiciones de los bonus.
    /// </param>
    public void CambiarPosicionBonus(String nombrePartida) {
      for (int i = 10; i < 90; i++) {
        PartidasEnJuego[nombrePartida].Tablero.Casillas[i].Bonus = false;
      }
      int posicionMinima = 10;
      for (int i = 0; i < 4; i++) {
        PartidasEnJuego[nombrePartida].Tablero.Casillas[DeterminarPosicionBonus(PartidasEnJuego[nombrePartida].Tablero.Casillas, posicionMinima)].Bonus = true;
        posicionMinima = posicionMinima + 20;
      }
    }

    /// <summary>
    /// Crea los turno de los jugadores de una partida.
    /// </summary>
    /// <param name="nombrePartida">
    /// Nombre de la partida a la que se le crearan los turnos a los jugadores.
    /// </param>
    public void CrearTurnos(String nombrePartida) {
      for (int i = 0; i < 4; i++) {
        Partidas[nombrePartida].JugadoresPartida.ElementAt(i).Value.Turno = new Turno {
          NumeroTurno = i + 1,
          Casilla = new Casilla {
            Numero = 0,
            PosicionX = -69,
            PosicionY = -39,
            Movimiento = 0,
            Bonus = false,
          },
        };
      }
    }

    /// <summary>
    /// Crea el tablero de la partida creando las posciones de cada casilla. 
    /// </summary>
    /// <param name="nombrePartida">
    /// Nombre de la partida a la que se le creará el tablero.
    /// </param>
    private void CrearTablero(String nombrePartida) {
      int posicionX = 5, posicionY = 35;
      Boolean avanzar = true;
      Casilla[] casillas = new Casilla[100];
      casillas[0] = CrearCasilla(1, posicionX, posicionY);
      for (int i = 1; i < 100; i++) {
        if (i % 10 == 0) {
          casillas[i] = CrearCasilla(i + 1, posicionX, posicionY + 74);
          posicionY = posicionY + 74;
          avanzar = !avanzar;
        } else {
          if (avanzar) {
            casillas[i] = CrearCasilla(i + 1, posicionX + 74, posicionY);
            posicionX = posicionX + 74;
          } else {
            casillas[i] = CrearCasilla(i + 1, posicionX - 74, posicionY);
            posicionX = posicionX - 74;
          }
        }
      }
      casillas = CrearSerpientesYEscaleras(nombrePartida, casillas);
      casillas = CrearBonus(casillas);
      Partidas[nombrePartida].Tablero = new Tablero {
        Casillas = casillas,
      };
    }

    /// <summary>
    /// Crea una casilla (sin movimiento ni bonus).
    /// </summary>
    /// <param name="indice">
    /// Número de la casilla.
    /// </param>
    /// <param name="posicionX">
    /// Posición en X de la casilla.
    /// </param>
    /// <param name="posicionY">
    /// Posición en Y de la casilla.
    /// </param>
    /// <returns>
    /// Objeto casilla que se creó.
    /// </returns>
    public Casilla CrearCasilla(int indice, int posicionX, int posicionY) {
      return new Casilla {
        Numero = indice,
        PosicionX = posicionX,
        PosicionY = posicionY,
        Movimiento = 0,
        Bonus = false,
      };
    }

    /// <summary>
    /// Modifica las casilla que tendrán serpientes o escaleras. Modifica el movimiento de la casilla.
    /// </summary>
    /// <param name="nombrePartida">
    /// Nombre de la partida a la que se le modificarán las casillas.
    /// </param>
    /// <param name="casillas">
    /// Lista de casillas que se modificarán.
    /// </param>
    /// <returns>
    /// Lista de casilla modificadas.
    /// </returns>
    public Casilla[] CrearSerpientesYEscaleras(String nombrePartida, Casilla[] casillas) {
      casillas[16].Movimiento = 26;
      casillas[34].Movimiento = 32;
      casillas[57].Movimiento = -39;
      casillas[58].Movimiento = 24;
      casillas[85].Movimiento = -54;
      casillas[98].Movimiento = -57;
      if (Partidas[nombrePartida].Dificultad.Equals("Normal")) {
        casillas[35].Movimiento = -29;
        casillas[68].Movimiento = 19;
      } else {
        if (Partidas[nombrePartida].Dificultad.Equals("Fácil") || Partidas[nombrePartida].Dificultad.Equals("Easy")) {
          casillas[6].Movimiento = 29;
          casillas[56].Movimiento = 38;
          casillas[68].Movimiento = 19;
        } else {
          casillas[35].Movimiento = -29;
          casillas[87].Movimiento = -37;
          casillas[94].Movimiento = -51;
        }
      }
      return casillas;
    }

    /// <summary>
    /// Modifca las casilla que tendrán bonus.
    /// </summary>
    /// <param name="casillas">
    /// Lista de casillas que se modificarán.
    /// </param>
    /// <returns>
    /// Lista de casilla modificadas.
    /// </returns>
    private Casilla[] CrearBonus(Casilla[] casillas) {
      int posicionMinima = 10;
      for (int i = 0; i < 4; i++) {
        casillas[DeterminarPosicionBonus(casillas, posicionMinima)].Bonus = true;
        posicionMinima = posicionMinima + 20;
      }
      return casillas;
    }

    /// <summary>
    /// Determina que casilla tendrá bonus, de manera aleatoria, de un conjunto de casillas.
    /// </summary>
    /// <param name="casillas">
    /// Lista de casillas de la que se elijirá una casilla para bonus.
    /// </param>
    /// <param name="posicionMinima">
    /// Posición mínima donde puede estar la casilla bonus.
    /// </param>
    /// <returns>
    /// Valor entero que es la posición de la casilla a la que se le asignará el bonus.
    /// </returns>
    private int DeterminarPosicionBonus(Casilla[] casillas, int posicionMinima) {
      int posicion = random.Next(posicionMinima, posicionMinima + 20);
      while (casillas[posicion].Movimiento != 0) {
        posicion = random.Next(posicionMinima, posicionMinima + 20);
      }
      return posicion;
    }
  }

  public partial class Service : IChat {
    private Func<IClienteChat> conexionIChat;

    /// <summary>
    /// Constructor del Service para las pruebas.
    /// </summary>
    /// <param name="callback">
    /// Interfaz para las pruebas.
    /// </param>
    public Service(Func<IClienteChat> callback) {
      this.conexionIChat = callback ?? throw new ArgumentNullException("Error en el callback de la prueba");
    }

    /// <summary>
    /// Une a un jugador a una lista de jugadores para el chat de una partida disponible para unirse.
    /// </summary>
    /// <param name="nombreUsuario">
    /// Nombre de usuario del jugador que se unió.
    /// </param>
    /// <param name="nombrePartida">
    /// Nombre de la partida a la que el jugador se unió.
    /// </param>
    public void UnirseChat(String nombreUsuario, String nombrePartida) {
      if (conexionIChat == null) {
        conexionIChat = () => OperationContext.Current.GetCallbackChannel<IClienteChat>();
      }
      try {
        Dictionary<IClienteChat, String> jugadoresChat = Partidas[nombrePartida].JugadoresChat;
        jugadoresChat[conexionIChat()] = nombreUsuario;
        Partidas[nombrePartida].JugadoresChat = jugadoresChat;
      } catch (NullReferenceException) {
        Dictionary<IClienteChat, String> jugadoresChat = new Dictionary<IClienteChat, String>();
        jugadoresChat[conexionIChat()] = nombreUsuario;
        Partidas[nombrePartida].JugadoresChat = jugadoresChat;
      }
      if (Partidas[nombrePartida].JugadoresPartida.Count == 4) {
        CrearTurnos(nombrePartida);
        CrearTablero(nombrePartida);
        PartidasEnJuego[nombrePartida] = Partidas[nombrePartida];
      }
    }

    /// <summary>
    /// Envía un mensaje a los jugadores en una partida disponible para unirse.
    /// </summary>
    /// <param name="mensaje">
    /// Mensaje que se enviará.
    /// </param>
    /// <param name="nombrePartida">
    /// Nombre de la partida donde se encuentran los jugadores a los que se les enviará el mensaje.
    /// </param>
    public void EnviarMensaje(String mensaje, String nombrePartida) {
      if (conexionIChat == null) {
        conexionIChat = () => OperationContext.Current.GetCallbackChannel<IClienteChat>();
      }
      String nombreUsuario;
        if (Partidas[nombrePartida].JugadoresChat.TryGetValue(conexionIChat(), out nombreUsuario)) {
          foreach (var cliente in Partidas[nombrePartida].JugadoresChat.Keys) {
            cliente.RecibeMensaje(nombreUsuario, mensaje, Partidas[nombrePartida].JugadoresPartida.Count);
          }
        }
      if (Partidas[nombrePartida].JugadoresPartida.Count == 4) {
        Partidas.Remove(Partidas[nombrePartida].Nombre);
        List<Partida> partidasActualizadas = new List<Partida>();
        for (int i = 0; i < Partidas.Count; i++) {
          partidasActualizadas.Add(Partidas.ElementAt(i).Value);
        }
        foreach (var cliente in JugadoresPartidas.Keys) {
          cliente.ActualizarPartidas(partidasActualizadas);
        }
      }
    }

    /// <summary>
    /// Envía un mensaje a los jugadores en una partida en juego.
    /// </summary>
    /// <param name="mensaje">
    /// Mensaje que se enviará.
    /// </param>
    /// <param name="nombrePartida">
    /// Nombre de la partida donde se encuentran los jugadores a los que se les enviará el mensaje.
    /// </param>
    /// <param name="tipoMensaje">
    /// Tipo de mensaje que se envía.
    /// </param>
    public void EnviarMensajePartida(String mensaje, String nombrePartida, int tipoMensaje) {
      if (conexionIChat == null) {
        conexionIChat = () => OperationContext.Current.GetCallbackChannel<IClienteChat>();
      }
      String nombreUsuario;
      if (PartidasEnJuego[nombrePartida].JugadoresChat.TryGetValue(conexionIChat(), out nombreUsuario)) {
        foreach (var cliente in PartidasEnJuego[nombrePartida].JugadoresChat.Keys) {
          cliente.RecibeMensajePartida(nombreUsuario, mensaje, tipoMensaje);
        }
      }
      int indice;
      for (indice = 0; indice < PartidasEnJuego[nombrePartida].JugadoresPartida.Count; indice++) {
        if (PartidasEnJuego[nombrePartida].JugadoresChat[conexionIChat()].Equals(PartidasEnJuego[nombrePartida].JugadoresPartida.ElementAt(indice).Value.NombreUsuario)) {
          break;
        }
      }
      if (tipoMensaje == 1) {
        PartidasEnJuego[nombrePartida].JugadoresPartida.ElementAt(indice).Key.Tirar();
      }
      if (tipoMensaje == 2) {
        PartidasEnJuego[nombrePartida].JugadoresPartida.ElementAt(indice).Key.Tirar();
      }
    }

    /// <summary>
    /// Saca a un jugador de la lista de jugadores para el chat de una partida disponible para unirse.
    /// </summary>
    /// <param name="nombrePartida">
    /// Nombre de la partida de la que se sacará al jugador.
    /// </param>
    public void SalirChat(String nombrePartida) {
      if (conexionIChat == null) {
        conexionIChat = () => OperationContext.Current.GetCallbackChannel<IClienteChat>();
      }
      Partidas[nombrePartida].JugadoresChat.Remove(conexionIChat());
      if (Partidas[nombrePartida].JugadoresPartida.Count == 0) {
        Partidas.Remove(Partidas[nombrePartida].Nombre);
        List<Partida> partidasActualizadas = new List<Partida>();
        for (int i = 0; i < Partidas.Count; i++) {
          partidasActualizadas.Add(Partidas.ElementAt(i).Value);
        }
        foreach (var cliente in JugadoresPartidas.Keys) {
          cliente.ActualizarPartidas(partidasActualizadas);
        }
      }
    }

    /// <summary>
    /// Saca a un jugador de la lista de jugadores para el chat de una partida en juego.
    /// </summary>
    /// <param name="nombrePartida">
    /// Nombre de la partida de la que se sacará al jugador.
    /// </param>
    public void SalirChatPartida(String nombrePartida) {
      if (conexionIChat == null) {
        conexionIChat = () => OperationContext.Current.GetCallbackChannel<IClienteChat>();
      }
      PartidasEnJuego[nombrePartida].JugadoresChat.Remove(conexionIChat());
      if (PartidasEnJuego[nombrePartida].JugadoresChat.Count == 0) {
        PartidasEnJuego.Remove(nombrePartida);
      }
    }
  }
}

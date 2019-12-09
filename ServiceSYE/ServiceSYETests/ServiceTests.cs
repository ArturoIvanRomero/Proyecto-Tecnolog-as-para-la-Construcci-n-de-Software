using Microsoft.VisualStudio.TestTools.UnitTesting;
using ServiceSYETests;
using System;
using System.Collections.Generic;
using System.Linq;

namespace ServiceSYE.Tests {
  [TestClass()]
  public class ServiceTests {

    Service service = new Service();
    Boolean esperadoTrue = true;
    Boolean esperadoFalse = false;
    Jugador jugador = new Jugador();
    Random random = new Random();
    Partida partida = new Partida();
    Dictionary<IClientePartida, String> jugadoresPartidas = new Dictionary<IClientePartida, String>();
    TestCallbackPartida handler = new TestCallbackPartida();
    TestCallbackPartida handler2 = new TestCallbackPartida();
    TestCallbackPartida handler3 = new TestCallbackPartida();
    TestCallbackPartida handler4 = new TestCallbackPartida();
    TestCallbackChat handlerChat = new TestCallbackChat();
    Dictionary<object, ServiceSYE.Partida> partidas = new Dictionary<object, Partida>();
    Dictionary<String, ServiceSYE.Partida> partidass = new Dictionary<String, Partida>();



    [TestMethod()]
    public void IniciarSesionTest() {
      string esperado = "josue";
      Jugador actual = service.IniciarSesion("josue", "47ef20207489b775fa4cdcac3c394b517" +
          "ab22d7460237ae3df1ac0e8963699d6");
      Assert.AreEqual(esperado, actual.NombreUsuario);
    }

    [TestMethod()]
    public void IniciarSesionTest2() {
      string esperado = "";
      Jugador jugador = service.IniciarSesion("josue8888", "1234567a");
      string actual = jugador.NombreUsuario;
      Assert.AreEqual(esperado, actual);
    }

    [TestMethod()]
    public void UnirseAlJuegoTest() {
      jugador.NombreUsuario = "Josue";
      jugador.Contrasenia = "cvbhjkjhbvcvbn";
      jugador.CorreoElectronico = "josue@hotmail.com";
      jugador.Codigo = "00000";
      service.UnirseAlJuego(jugador);
      int esperado = 1;
      int actual = service.Jugadores.Count();
      Assert.AreEqual(esperado, actual);
    }

    [TestMethod()]
    public void RegistrarJugadorTest() {
      jugador.NombreUsuario = "JosuePrueba";
      jugador.Contrasenia = "cvbhjkjhbvcvbn";
      jugador.CorreoElectronico = "josue@hotmail.com";
      jugador.Codigo = "11111";
      jugador.Estadisticas = new Estadisticas {
        Puntos = 2000,
        Victorias = 0,
      };
      Boolean actual = service.RegistrarJugador(jugador);
      Assert.AreEqual(esperadoTrue, actual);
    }

    [TestMethod()]
    public void SalirDelJuegoTest() {
      jugador.NombreUsuario = "Josue";
      jugador.Contrasenia = "cvbhjkjhbvcvbn";
      jugador.CorreoElectronico = "josue@hotmail.com";
      jugador.Codigo = "00000";
      service.UnirseAlJuego(jugador);
      service.SalirDelJuego(jugador);
      int esperado = 0;
      int actual = service.Jugadores.Count();
      Assert.AreEqual(esperado, actual);

    }

    [TestMethod()]
    public void ValidarConectadoTest() {
      jugador.NombreUsuario = "Josue";
      service.UnirseAlJuego(jugador);
      Boolean actual = service.ValidarConectado(jugador);
      Assert.AreEqual(esperadoFalse, actual);
    }

    [TestMethod()]
    public void ValidarConectadoTest2() {
      Boolean actual = service.ValidarConectado(jugador);
      Assert.AreEqual(esperadoTrue, actual);
    }

    [TestMethod()]
    public void ObtenerJugadoresPuntosTest() {
      Boolean actual = false;
      if (service.ObtenerJugadoresPuntos().Count() > 0) {
        actual = true;
      }
      Assert.AreEqual(esperadoTrue, actual);
    }

    [TestMethod()]
    public void ObtenerJugadoresVictoriasTest() {
      Boolean actual = false;
      if (service.ObtenerJugadoresVictorias().Count() > 0) {
        actual = true;
      }
      Assert.AreEqual(esperadoTrue, actual);
    }

    [TestMethod()]
    public void EnviarCodigoACorreoTest() {
      jugador.NombreUsuario = "JosuePrueba";
      jugador.Contrasenia = "cvbhjkjhbvcvbn";
      jugador.CorreoElectronico = "josuefresh2@hotmail.com";
      jugador.Codigo = "00000";
      Boolean actual = service.EnviarCodigoACorreo(jugador, "", "", "");
      Assert.AreEqual(esperadoTrue, actual);
    }


    [TestMethod()]
    public void ObtenerJugadorPorCodigoTest() {
      String codigo = "99998";
      String nombre = "JosuePrueba";
      String actual = service.ObtenerJugadorPorCodigo(codigo).NombreUsuario;
      Assert.AreEqual(nombre, actual);
    }

    [TestMethod()]
    public void ObtenerJugadorPorCodigoTest2() {
      String codigo = "445546";
      string actual = service.ObtenerJugadorPorCodigo(codigo).NombreUsuario;
      Assert.AreEqual("", actual);
    }

    [TestMethod()]
    public void ObtenerJugadorPorNombreTest() {
      String nombre = "Arturo2";
      String actual = service.ObtenerJugadorPorNombre(nombre).NombreUsuario;
      Assert.AreEqual(nombre, actual);
    }

    [TestMethod()]
    public void ObtenerJugadorPorNombreTest2() {
      String nombre = "Josue24";
      String actual = service.ObtenerJugadorPorNombre(nombre).NombreUsuario;
      Assert.AreEqual("", actual);
    }

    [TestMethod()]
    public void ObtenerJugadorPorCorreoTest() {
      String esperado = "josue";
      String correo = "josuefresh@hotmail.com";
      String actual = service.ObtenerJugadorPorCorreo(correo).NombreUsuario;
      Assert.AreEqual(esperado, actual);
    }

    [TestMethod()]
    public void ObtenerJugadorPorCorreoTest2() {
      String correo = "Josue24";
      String actual = service.ObtenerJugadorPorCorreo(correo).NombreUsuario;
      Assert.AreEqual("", actual);
    }

    [TestMethod()]
    public void ValidarCuentaJugadorTest() {
      Boolean actual = service.ValidarCuentaJugador("00000");
      Assert.AreEqual(esperadoTrue, actual);
    }

    [TestMethod()]
    public void ValidarCodigoTest() {
      string codigo = "99998";
      int actual = service.ValidarCodigo(codigo);
      Assert.AreEqual(1, actual);
    }

    [TestMethod()]
    public void ValidarCodigoTest2() {
      string codigo = "99999";
      int actual = service.ValidarCodigo(codigo);
      Assert.AreEqual(0, actual);
    }

    [TestMethod()]
    public void ModificarCodigoTest() {
      Boolean actual = service.ModificarCodigo("00000", "00000");
      Assert.AreEqual(esperadoTrue, actual);
    }

    [TestMethod()]
    public void ModificarEstadisticasTest() {
      string nombre = "josue";
      Boolean actual = service.ModificarEstadisticas(nombre, 2000, 0);
      Assert.AreEqual(esperadoTrue, actual);
    }



    [TestMethod()]
    public void CrearPartidaTest() {
      service.CrearPartida(new Partida {
        Nombre = "prueba",
      });
      int actual = service.Partidas.Count();
      Assert.AreEqual(1, actual);
    }

    [TestMethod()]
    public void ValidarNombrePartidaTest() {
      partida.Nombre = "partida1";
      service.CrearPartida(partida);
      Boolean actual = service.ValidarNombrePartida("partida1");
      Assert.AreEqual(esperadoFalse, actual);
    }

    [TestMethod()]
    public void ValidarNombrePartidaTest2() {
      Boolean actual = service.ValidarNombrePartida("partida2");
      Assert.AreEqual(esperadoTrue, actual);
    }

    [TestMethod()]
    public void ObtenerPartidasTest() {
      int actual = service.ObtenerPartidas().Count();
      Assert.AreEqual(0, actual);

    }

    [TestMethod()]
    public void ObtenerPartidasTest2() {
      partida.Nombre = "partida3";
      service.CrearPartida(partida);
      int actual = service.ObtenerPartidas().Count();
      Assert.AreEqual(1, actual);

    }

    [TestMethod()]
    public void VerPartidasTest() {
      jugador.NombreUsuario = "prueba";
      Service servicio = new Service(() => handler);
      servicio.VerPartidas("prueba");
      int actual = servicio.JugadoresPartidas.Count();
      Assert.AreEqual(1, actual);
    }

    [TestMethod()]
    public void SalirVerPartidasTest() {
      jugador.NombreUsuario = "prueba";
      Service servicio = new Service(() => handler);
      servicio.VerPartidas("prueba");
      servicio.SalirVerPartidas();
      int actual = servicio.JugadoresPartidas.Count();
      Assert.AreEqual(0, actual);
    }

    [TestMethod()]
    public void UnirsePartidaTest() {
      jugador.NombreUsuario = "prueba";
      Service servicio = new Service(() => handler);
      servicio.Partidas.Add("1", new ServiceSYE.Partida {
        Nombre = "prueba",
      });
      servicio.UnirsePartida(jugador, "1");
      int actual = servicio.Partidas["1"].JugadoresPartida.Count();
      Assert.AreEqual(1, actual);
    }

    [TestMethod()]
    public void SalirPartidaTest() {
      jugador.NombreUsuario = "prueba";
      Service servicio = new Service(() => handler);
      servicio.Partidas.Add("1", new ServiceSYE.Partida {
        Nombre = "prueba",
      });
      servicio.UnirsePartida(jugador, "1");
      servicio.SalirPartida(jugador, "1");
      int actual = servicio.Partidas["1"].JugadoresPartida.Count();
      Assert.AreEqual(0, actual);
    }

    [TestMethod()]
    public void SalirPartidaEnJuegoTest() {
      jugador.NombreUsuario = "prueba";
      Service servicio = new Service(() => handler);
      servicio.PartidasEnJuego.Add("1", new ServiceSYE.Partida {
        Nombre = "prueba",
      });

      Dictionary<IClientePartida, Jugador> jugadoresPartidas = new Dictionary<IClientePartida, Jugador>();
      jugadoresPartidas.Add(handler, jugador);
      servicio.PartidasEnJuego["1"].JugadoresPartida = jugadoresPartidas;

      servicio.SalirPartidaEnJuego(jugador, "1");
      int actual = servicio.PartidasEnJuego["1"].JugadoresPartida.Count();
      Assert.AreEqual(0, actual);

    }

    [TestMethod()]
    public void ObtenerPartidaTest() {
      Service servicio = new Service(() => handler);
      servicio.PartidasEnJuego.Add("1", new ServiceSYE.Partida {
        Nombre = "prueba",
      });
      Partida partida = servicio.ObtenerPartida("1");
      String actual = partida.Nombre;
      Assert.AreEqual("prueba", actual);

    }

    [TestMethod()]
    public void CambiarTurnoTest() {
      Service servicio = new Service(() => handler);
      Casilla[] casillas = new Casilla[100];
      for (int i = 0; i < 100; i++) {
        casillas[i] = servicio.CrearCasilla(i, i, i);
      }
      servicio.PartidasEnJuego.Add("1", new ServiceSYE.Partida {
        Nombre = "prueba",
        Turno = 2,
        Tablero = new Tablero {
          Casillas = casillas,
        }
      }); ; ; ;
      Dictionary<IClientePartida, Jugador> jugadoresPartidas = new Dictionary<IClientePartida, Jugador>();
      jugadoresPartidas.Add(handler, new Jugador {
        NombreUsuario = "JosuePrueba",
        Turno = new Turno {
          NumeroTurno = 2,
          Casilla = new Casilla {
            Numero = 4,
            Bonus = false,
            PosicionX = 0,
            PosicionY = 0,
          }
        }
      }); ;
      servicio.PartidasEnJuego["1"].JugadoresPartida = jugadoresPartidas;
      servicio.CambiarTurno("1", 4, 2);
      Assert.AreEqual(2, servicio.PartidasEnJuego["1"].Turno);

    }


    [TestMethod()]
    public void CambiarTurnoTest2() {
      Service servicio = new Service(() => handler);
      Casilla[] casillas = new Casilla[100];
      for (int i = 0; i < 100; i++) {
        casillas[i] = servicio.CrearCasilla(i, i, i);
      }
      servicio.PartidasEnJuego.Add("1", new ServiceSYE.Partida {
        Nombre = "prueba",
        Turno = 2,
        Tablero = new Tablero {
          Casillas = casillas,
        }
      }); ; ; ;
      Dictionary<IClientePartida, Jugador> jugadoresPartidas = new Dictionary<IClientePartida, Jugador>();
      jugadoresPartidas.Add(handler, new Jugador {
        NombreUsuario = "JosuePrueba",
        Turno = new Turno {
          NumeroTurno = 2,
          Casilla = new Casilla {
            Numero = 4,
            Bonus = false,
            PosicionX = 0,
            PosicionY = 0,
          }
        }
      }); ;
      jugadoresPartidas.Add(handler2, new Jugador {
        NombreUsuario = "JosuePrueba",
        Turno = new Turno {
          NumeroTurno = 3,
          Casilla = new Casilla {
            Numero = 6,
            Bonus = false,
            PosicionX = 0,
            PosicionY = 0,
          }
        }
      }); ;
      servicio.PartidasEnJuego["1"].JugadoresPartida = jugadoresPartidas;
      servicio.CambiarTurno("1", 4, 3);
      Assert.AreEqual(3, servicio.PartidasEnJuego["1"].Turno);

    }

    [TestMethod()]
    public void CambiarTurnoTest3() {
      Service servicio = new Service(() => handler);
      Casilla[] casillas = new Casilla[100];
      for (int i = 0; i < 100; i++) {
        casillas[i] = servicio.CrearCasilla(i, i, i);
      }
      servicio.PartidasEnJuego.Add("1", new ServiceSYE.Partida {
        Nombre = "prueba",
        Turno = 2,
        Tablero = new Tablero {
          Casillas = casillas,
        }
      }); ; ; ;
      Dictionary<IClientePartida, Jugador> jugadoresPartidas = new Dictionary<IClientePartida, Jugador>();
      jugadoresPartidas.Add(handler, new Jugador {
        NombreUsuario = "JosuePrueba",
        Turno = new Turno {
          NumeroTurno = 1,
          Casilla = new Casilla {
            Numero = 4,
            Bonus = false,
            PosicionX = 0,
            PosicionY = 0,
          }
        }
      }); ;
      servicio.PartidasEnJuego["1"].JugadoresPartida = jugadoresPartidas;
      servicio.CambiarTurno("1", 4, 4);
      Assert.AreEqual(1, servicio.PartidasEnJuego["1"].Turno);

    }

    [TestMethod()]
    public void CrearCasillaTest() {
      int actual = service.CrearCasilla(4, 6, 6).Numero;
      Assert.AreEqual(4, actual);

    }

    [TestMethod()]
    public void MovimientoEspecialTest() {
      Service servicio = new Service(() => handler);
      Casilla[] casillas = new Casilla[100];
      for (int i = 0; i < 100; i++) {
        casillas[i] = servicio.CrearCasilla(i, i, i);
      }
      servicio.PartidasEnJuego.Add("1", new ServiceSYE.Partida {
        Nombre = "prueba",
        Turno = 2,
        Tablero = new Tablero {
          Casillas = casillas,
        }
      }); ; ; ;
      Dictionary<IClientePartida, Jugador> jugadoresPartidas = new Dictionary<IClientePartida, Jugador>();
      jugadoresPartidas.Add(handler, new Jugador {
        NombreUsuario = "JosuePrueba",
        Turno = new Turno {
          NumeroTurno = 1,
          Casilla = new Casilla {
            Numero = 9,
            Bonus = false,
            PosicionX = 0,
            PosicionY = 0,
          }
        }
      }); ;
      servicio.PartidasEnJuego["1"].JugadoresPartida = jugadoresPartidas;
      servicio.MovimientoEspecial("1", 60);
      int actual = servicio.PartidasEnJuego["1"].JugadoresPartida[handler].Turno.Casilla.Numero;
      Assert.AreEqual(59, actual);
    }

    [TestMethod()]
    public void CrearTurnosTest() {
      Service servicio = new Service(() => handler);
      servicio.Partidas.Add("1", new ServiceSYE.Partida {
        Nombre = "prueba",
        Tablero = new Tablero()
      });
      Dictionary<IClientePartida, Jugador> jugadoresPartidas = new Dictionary<IClientePartida, Jugador>();
      jugadoresPartidas.Add(handler, new Jugador {
        NombreUsuario = "JosuePrueba",
        Turno = new Turno {
          NumeroTurno = 9,
          Casilla = new Casilla {
            Numero = 4,
            Bonus = false,
            PosicionX = 0,
            PosicionY = 0,
          }
        }
      });
      jugadoresPartidas.Add(handler2, new Jugador {
        NombreUsuario = "JosuePrueba",
        Turno = new Turno {
          NumeroTurno = 8,
          Casilla = new Casilla {
            Numero = 6,
            Bonus = false,
            PosicionX = 0,
            PosicionY = 0,
          }
        }
      }); ;
      jugadoresPartidas.Add(handler3, new Jugador {
        NombreUsuario = "JosuePrueba",
        Turno = new Turno {
          NumeroTurno = 3,
          Casilla = new Casilla {
            Numero = 4,
            Bonus = false,
            PosicionX = 0,
            PosicionY = 0,
          }
        }
      }); ;
      jugadoresPartidas.Add(handler4, new Jugador {
        NombreUsuario = "JosuePrueba",
        Turno = new Turno {
          NumeroTurno = 4,
          Casilla = new Casilla {
            Numero = 6,
            Bonus = false,
            PosicionX = 0,
            PosicionY = 0,
          }
        }
      }); ;
      servicio.Partidas["1"].JugadoresPartida = jugadoresPartidas;
      servicio.CrearTurnos("1");
      int actual = servicio.Partidas["1"].JugadoresPartida[handler2].Turno.NumeroTurno;
      Assert.AreEqual(2, actual);
    }

    [TestMethod()]
    public void CrearSerpientesYEscalerasTest() {
      Service servicio = new Service(() => handler);
      servicio.Partidas.Add("1", new ServiceSYE.Partida {
        Nombre = "prueba",
        Dificultad = "Fácil"
      });
      Casilla[] casillas = new Casilla[100];
      for (int i = 0; i < 100; i++) {
        casillas[i] = servicio.CrearCasilla(i, i, i);
      }
      int actual = servicio.CrearSerpientesYEscaleras("1", casillas)[6].Movimiento;
      Assert.AreEqual(29, actual);

    }

    [TestMethod()]
    public void CrearSerpientesYEscalerasTest2() {
      Service servicio = new Service(() => handler);
      servicio.Partidas.Add("1", new ServiceSYE.Partida {
        Nombre = "prueba",
        Dificultad = "Normal"
      });
      Casilla[] casillas = new Casilla[100];
      for (int i = 0; i < 100; i++) {
        casillas[i] = servicio.CrearCasilla(i, i, i);
      }
      int actual = servicio.CrearSerpientesYEscaleras("1", casillas)[68].Movimiento;
      Assert.AreEqual(19, actual);

    }

    [TestMethod()]
    public void CrearSerpientesYEscalerasTest3() {
      Service servicio = new Service(() => handler);
      servicio.Partidas.Add("1", new ServiceSYE.Partida {
        Nombre = "prueba",
        Dificultad = "Difícil"
      });
      Casilla[] casillas = new Casilla[100];
      for (int i = 0; i < 100; i++) {
        casillas[i] = servicio.CrearCasilla(i, i, i);
      }
      int actual = servicio.CrearSerpientesYEscaleras("1", casillas)[35].Movimiento;
      Assert.AreEqual(-29, actual);

    }






    [TestMethod()]
    public void UnirseChatTest() {
      Service servicio = new Service(() => handlerChat);
      servicio.Partidas.Add("1", new ServiceSYE.Partida {
        Nombre = "prueba",
        Dificultad = "Normal"
      });
      Dictionary<IClientePartida, Jugador> jugadoresPartidas = new Dictionary<IClientePartida, Jugador>();
      jugadoresPartidas.Add(handler, new Jugador {
        NombreUsuario = "JosuePrueba",
        Turno = new Turno()
      });
      servicio.Partidas["1"].JugadoresPartida = jugadoresPartidas;
      servicio.UnirseChat("Josue", "1");
      int actual = servicio.Partidas["1"].JugadoresChat.Count;
      Assert.AreEqual(1, actual);
    }

    [TestMethod()]
    public void EnviarMensajeTest() {
      Service servicio = new Service(() => handlerChat);
      Dictionary<IClientePartida, Jugador> jugadoresPartidas = new Dictionary<IClientePartida, Jugador>();
      jugadoresPartidas.Add(handler, new Jugador {
        NombreUsuario = "JosuePrueba",
        Turno = new Turno()
      });
      servicio.Partidas.Add("1", new ServiceSYE.Partida {
        Nombre = "prueba",
        Dificultad = "Normal"
      });
      servicio.Partidas["1"].JugadoresPartida = jugadoresPartidas;
      servicio.UnirseChat("Josue", "1");
      servicio.EnviarMensaje("hola", "1");
      int actual = handlerChat.respuesta;
      Assert.AreEqual(1, actual);
    }

    [TestMethod()]
    public void EnviarMensajeTest2() {
      Service servicio = new Service(() => handlerChat);
      Dictionary<IClientePartida, Jugador> jugadoresPartidas = new Dictionary<IClientePartida, Jugador>();
      jugadoresPartidas.Add(handler, new Jugador {
        NombreUsuario = "JosuePrueba",
        Turno = new Turno()
      });
      jugadoresPartidas.Add(handler2, new Jugador {
        NombreUsuario = "JosuePrueba",
        Turno = new Turno()
      });
      jugadoresPartidas.Add(handler3, new Jugador {
        NombreUsuario = "JosuePrueba",
        Turno = new Turno()
      });
      jugadoresPartidas.Add(handler4, new Jugador {
          NombreUsuario = "JosuePrueba",
          Turno = new Turno()
      });
      servicio.Partidas.Add("1", new ServiceSYE.Partida {
        Nombre = "1",
        Dificultad = "Normal"
      });
      servicio.Partidas["1"].JugadoresPartida = jugadoresPartidas;
      servicio.UnirseChat("Josue", "1");
      servicio.EnviarMensaje("hola", "1");
      int actual = servicio.Partidas.Count;
      Assert.AreEqual(0, actual);
    }

    [TestMethod()]
    public void EnviarMensajePartidaTest() {
      Service servicio = new Service(() => handlerChat);
      Dictionary<IClientePartida, Jugador> jugadoresPartidas = new Dictionary<IClientePartida, Jugador>();
      jugadoresPartidas.Add(handler, new Jugador {
        NombreUsuario = "JosuePrueba",
        Turno = new Turno()
      });
      servicio.PartidasEnJuego.Add("1", new ServiceSYE.Partida {
        Nombre = "prueba",
        Dificultad = "Normal"
      });
      servicio.Partidas.Add("1", new ServiceSYE.Partida {
        Nombre = "prueba",
        Dificultad = "Normal"
      });
      Dictionary<IClienteChat, String> jugadoresChat = new Dictionary<IClienteChat, String>();
      jugadoresChat.Add(handlerChat, "Josue");
      servicio.PartidasEnJuego["1"].JugadoresPartida = jugadoresPartidas;
      servicio.Partidas["1"].JugadoresPartida = jugadoresPartidas;
      servicio.PartidasEnJuego["1"].JugadoresChat = jugadoresChat;
      servicio.UnirseChat("Josue", "1");
      servicio.EnviarMensajePartida("hola", "1", 3);
      int actual = handlerChat.respuesta;
      Assert.AreEqual(3, actual);
    }

    [TestMethod()]
    public void EnviarMensajePartidaTest2() {
      Service servicio = new Service(() => handlerChat);
      Dictionary<IClientePartida, Jugador> jugadoresPartidas = new Dictionary<IClientePartida, Jugador>();
      jugadoresPartidas.Add(handler, new Jugador {
        NombreUsuario = "JosuePrueba",
        Turno = new Turno()
      });
      servicio.PartidasEnJuego.Add("1", new ServiceSYE.Partida {
        Nombre = "prueba",
        Dificultad = "Normal"
      });
      servicio.Partidas.Add("1", new ServiceSYE.Partida {
        Nombre = "prueba",
        Dificultad = "Normal"
      });
      Dictionary<IClienteChat, String> jugadoresChat = new Dictionary<IClienteChat, String>();
      jugadoresChat.Add(handlerChat, "JosuePrueba");
      servicio.PartidasEnJuego["1"].JugadoresPartida = jugadoresPartidas;
      servicio.Partidas["1"].JugadoresPartida = jugadoresPartidas;
      servicio.PartidasEnJuego["1"].JugadoresChat = jugadoresChat;
      servicio.EnviarMensajePartida("hola", "1", 2);
      int actual = handler.respuesta;
      Assert.AreEqual(1, actual);
    }

    [TestMethod()]
    public void SalirChatTest() {
      Service servicio = new Service(() => handlerChat);
      servicio.Partidas.Add("1", new ServiceSYE.Partida {
        Nombre = "prueba",
        Dificultad = "Normal"
      });
      Dictionary<IClientePartida, Jugador> jugadoresPartidas = new Dictionary<IClientePartida, Jugador>();
      jugadoresPartidas.Add(handler, new Jugador {
        NombreUsuario = "JosuePrueba",
        Turno = new Turno()
      });
      Dictionary<IClienteChat, String> jugadoresChat = new Dictionary<IClienteChat, String>();
      jugadoresChat.Add(handlerChat, "JosuePrueba");
      servicio.Partidas["1"].JugadoresPartida = jugadoresPartidas;
      servicio.Partidas["1"].JugadoresChat = jugadoresChat;
      servicio.SalirChat("1");
      int actual = partidas.Count;
      Assert.AreEqual(0, actual);
    }

    [TestMethod()]
    public void SalirChatPartidaTest() {
      Service servicio = new Service(() => handlerChat);
      servicio.PartidasEnJuego.Add("1", new ServiceSYE.Partida {
        Nombre = "prueba",
        Dificultad = "Normal"
      });
      Dictionary<IClienteChat, String> jugadoresChat = new Dictionary<IClienteChat, String>();
      jugadoresChat.Add(handlerChat, "JosuePrueba");
      servicio.PartidasEnJuego["1"].JugadoresChat = jugadoresChat;
      servicio.SalirChatPartida("1");
      int actual = servicio.PartidasEnJuego.Count;
      Assert.AreEqual(0, actual);
    }
  }
}
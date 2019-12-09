using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;

namespace SerpientesYEscaleras.Tests {
  [TestClass()]
  public class PartidaTests {
    Partida partida = new Partida();
    ServiceSYE.Jugador jugador = new ServiceSYE.Jugador();
    Dictionary<object, ServiceSYE.Jugador> jugadoresPartida = new Dictionary<object, ServiceSYE.Jugador>();
    List<ServiceSYE.Jugador> jugadores = new List<ServiceSYE.Jugador>();

    [TestMethod()]
    public void CalcularMovimientoTest() {
      int esperado =
      partida.CalcularMovimiento(6, new ServiceSYE.Jugador {
        NombreUsuario = "Josue",
        Turno = new ServiceSYE.Turno {
          NumeroTurno = 1,
          Casilla = new ServiceSYE.Casilla {
            Numero = 1
          }
        }
      }, new ServiceSYE.Partida {
        Nombre = "prueba",
        Tablero = new ServiceSYE.Tablero {
          Casillas = new ServiceSYE.Casilla[100],
        }

      });
      Assert.AreEqual(7, esperado);
    }

    [TestMethod()]
    public void CalcularMovimientoTest2() {
      int esperado =
      partida.CalcularMovimiento(6, new ServiceSYE.Jugador {
        NombreUsuario = "Josue",
        Turno = new ServiceSYE.Turno {
          NumeroTurno = 1,
          Casilla = new ServiceSYE.Casilla {
            Numero = 99
          }
        }
      }, new ServiceSYE.Partida {
        Nombre = "prueba",
        Tablero = new ServiceSYE.Tablero {
          Casillas = new ServiceSYE.Casilla[100],
        }
      });
      Assert.AreEqual(95, esperado);
    }

    [TestMethod()]
    public void ObtenerTurnoTest() {
      jugador.NombreUsuario = "Josue";
      jugadoresPartida.Add(1, new ServiceSYE.Jugador {
        NombreUsuario = "Josue",
        Turno = new ServiceSYE.Turno {
          NumeroTurno = 1,
        },
      });
      jugador = partida.ObtenerTurno(jugadoresPartida, jugador);
      int esperado = jugador.Turno.NumeroTurno;
      Assert.AreEqual(1, esperado);
    }

    [TestMethod()]
    public void TiroBonusTest() {
      int esperado =
       partida.TiroBonus(1, new ServiceSYE.Jugador {
         NombreUsuario = "Josue",
         Turno = new ServiceSYE.Turno {
           NumeroTurno = 1,
           Casilla = new ServiceSYE.Casilla {
             Numero = 8
           }
         }
       }
       , new ServiceSYE.Partida {
         Nombre = "prueba",
         Tablero = new ServiceSYE.Tablero {
           Casillas = new ServiceSYE.Casilla[100],
         }
       });
      Assert.AreEqual(4, esperado);
    }

    [TestMethod()]
    public void TiroBonusTest2() {
      int esperado =
       partida.TiroBonus(2, new ServiceSYE.Jugador {
         NombreUsuario = "Josue",
         Turno = new ServiceSYE.Turno {
           NumeroTurno = 1,
           Casilla = new ServiceSYE.Casilla {
             Numero = 8
           }
         }
       }, new ServiceSYE.Partida {
         Nombre = "prueba",
         Tablero = new ServiceSYE.Tablero {
           Casillas = new ServiceSYE.Casilla[100],
         }
       });
      Assert.AreEqual(5, esperado);
    }

    [TestMethod()]
    public void TiroBonusTest3() {
      int esperado =
       partida.TiroBonus(3, new ServiceSYE.Jugador {
         NombreUsuario = "Josue",
         Turno = new ServiceSYE.Turno {
           NumeroTurno = 1,
           Casilla = new ServiceSYE.Casilla {
             Numero = 8
           }
         }
       }, new ServiceSYE.Partida {
         Nombre = "prueba",
         Tablero = new ServiceSYE.Tablero {
           Casillas = new ServiceSYE.Casilla[100],
         }
       });
      Assert.AreEqual(18, esperado);
    }

    [TestMethod()]
    public void DefinirJugadorMasAltoTest() {
      jugadores.Add(new ServiceSYE.Jugador {
        NombreUsuario = "Josue",
        Turno = new ServiceSYE.Turno {
          NumeroTurno = 1,
          Casilla = new ServiceSYE.Casilla {
            Numero = 8
          }
        }
      });
      jugadores.Add(new ServiceSYE.Jugador {
        NombreUsuario = "Josue2",
        Turno = new ServiceSYE.Turno {
          NumeroTurno = 1,
          Casilla = new ServiceSYE.Casilla {
            Numero = 18
          }
        }
      });
      jugadores.Add(new ServiceSYE.Jugador {
        NombreUsuario = "Josue3",
        Turno = new ServiceSYE.Turno {
          NumeroTurno = 1,
          Casilla = new ServiceSYE.Casilla {
            Numero = 28
          }
        }
      });
      jugador = partida.DefinirJugadorMasAlto(jugadores, 3);
      String esperado = jugador.NombreUsuario;
      Assert.AreEqual("Josue3", esperado);
    }

    [TestMethod()]
    public void DefinirPremiosTest() {
      List<int> esperada = new List<int>();
      esperada = partida.DefinirPremios(4);
      int esperado = esperada.Count;
      Assert.AreEqual(4, esperado);
    }

    [TestMethod()]
    public void DefinirPremiosTest2() {
      List<int> esperada = new List<int>();
      esperada = partida.DefinirPremios(3);
      int esperado = esperada.Count;
      Assert.AreEqual(3, esperado);
    }

    [TestMethod()]
    public void DefinirPremiosTest3() {
      List<int> esperada = new List<int>();
      esperada = partida.DefinirPremios(2);
      int esperado = esperada.Count;
      Assert.AreEqual(2, esperado);
    }

    [TestMethod()]
    public void DefinirPremiosTest4() {
      List<int> esperada = new List<int>();
      esperada = partida.DefinirPremios(1);
      int esperado = esperada.Count;
      Assert.AreEqual(1, esperado);
    }

    [TestMethod()]
    public void MoverFichaAbandonoTest() {
      jugadoresPartida.Add(1, new ServiceSYE.Jugador {
        NombreUsuario = "Josue",
        Turno = new ServiceSYE.Turno {
          NumeroTurno = 1,
          Casilla = new ServiceSYE.Casilla {
            Numero = 28,
            PosicionX = 0,
            PosicionY = 0,
            Movimiento = 0,
            Bonus = false,
          }
        },
      });
      jugadoresPartida.Add(2, new ServiceSYE.Jugador {
        NombreUsuario = "Josue2",
        Turno = new ServiceSYE.Turno {
          NumeroTurno = 2,
          Casilla = new ServiceSYE.Casilla {
            Numero = 29,
            PosicionX = 9,
            PosicionY = 9,
            Movimiento = 0,
            Bonus = false,
          }
        },
      });
      partida.MoverFichaAbandono("Josue2", jugadoresPartida);
      int esperado = jugadoresPartida[2].Turno.Casilla.Numero = 0;
      Assert.AreEqual(0, esperado);
    }
  }
}
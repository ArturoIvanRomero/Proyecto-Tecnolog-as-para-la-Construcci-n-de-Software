using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Linq;

namespace ServiceSYE.Tests {
  [TestClass()]
  public class ServiceTests {
    //Casos falsos o de excpeción que necesitan bajar la base de datos y desconectarse de internet.
    Service service = new Service();
    Boolean esperadoFalse = false;
    Jugador jugador = new Jugador();

    [TestMethod()]
    public void IniciarSesionTest() {
      string esperado = "*";
      string actual = service.IniciarSesion("josue", "47ef20207489b775" +
          "fa4cdcac3c394b517ab22d7460237ae3df1ac0e8963699d6").NombreUsuario;
      Assert.AreEqual(esperado, actual);
    }

    [TestMethod()]
    public void RegistrarJugadorTest() {
      jugador.NombreUsuario = "Josue";
      jugador.Contrasenia = "cvbhjkjhbvcvbn";
      jugador.CorreoElectronico = "josuee@hotmail.com";
      jugador.Codigo = "00000";
      jugador.Estadisticas = new Estadisticas {
        Puntos = 2000,
        Victorias = 0,
      };
      Boolean actual = service.RegistrarJugador(jugador);
      Assert.AreEqual(esperadoFalse, actual);
    }

    [TestMethod()]
    public void ObtenerJugadoresPuntosTest() {
      Boolean actual = false;
      if (service.ObtenerJugadoresPuntos().Count() > 0) {
        actual = true;
      }
      Assert.AreEqual(esperadoFalse, actual);
    }

    [TestMethod()]
    public void ObtenerJugadoresVictoriasTest() {
      Boolean actual = false;
      if (service.ObtenerJugadoresVictorias().Count() > 0) {
        actual = true;
      }
      Assert.AreEqual(esperadoFalse, actual);
    }

    [TestMethod()]
    public void EnviarCodigoACorreoTest() {
      jugador.NombreUsuario = "Josue";
      jugador.Contrasenia = "cvbhjkjhbvcvbn";
      jugador.CorreoElectronico = "josuefresh@hotmail.com";
      jugador.Codigo = "00000";
      Boolean actual = service.EnviarCodigoACorreo(jugador, "", "", "");
      Assert.AreEqual(esperadoFalse, actual);
    }

    [TestMethod()]
    public void ObtenerJugadorPorCodigoTest() {
      String codigo = "98767";
      String esperado = "*";
      String actual = service.ObtenerJugadorPorCodigo(codigo).NombreUsuario;
      Assert.AreEqual(esperado, actual);
    }

    [TestMethod()]
    public void ObtenerJugadorPorNombreTest() {
      String nombre = "josue";
      String esperado = "*";
      String actual = service.ObtenerJugadorPorNombre(nombre).NombreUsuario;
      Assert.AreEqual(esperado, actual);
    }

    [TestMethod()]
    public void ObtenerJugadorPorCorreoTest() {
      String esperado = "*";
      String correo = "josue@hotmail.com";
      string actual = service.ObtenerJugadorPorCorreo(correo).NombreUsuario;
      Assert.AreEqual(esperado, actual);
    }

    [TestMethod()]
    public void ValidarCuentaJugadorTest() {
      Boolean actual = service.ValidarCuentaJugador("00000");
      Assert.AreEqual(esperadoFalse, actual);
    }

    [TestMethod()]
    public void ValidarCodigoTest() {
      string codigo = "55555";
      int actual = service.ValidarCodigo(codigo);
      Assert.AreEqual(2, actual);
    }

    [TestMethod()]
    public void ModificarCodigoTest() {
      Boolean actual = service.ModificarCodigo("00000", "00000");
      Assert.AreEqual(esperadoFalse, actual);
    }

    [TestMethod()]
    public void ModificarEstadisticasTest() {
      string nombre = "josue";
      Boolean actual = service.ModificarEstadisticas(nombre, 2000, 0);
      Assert.AreEqual(esperadoFalse, actual);
    }
  }
}
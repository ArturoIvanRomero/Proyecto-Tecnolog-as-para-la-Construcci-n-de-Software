using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace SerpientesYEscaleras.Tests {
  [TestClass()]
  public class EsperaTests {
    Espera espera = new Espera();
    Boolean esperadoFalse = false;
    Boolean esperadoTrue = true;
    Boolean actual;

    [TestMethod()]
    public void ValidarMensajeTest() {
      actual = espera.ValidarMensaje("");
      Assert.AreEqual(esperadoFalse, actual);
    }

    [TestMethod()]
    public void ValidarMensajeTest2() {
      actual = espera.ValidarMensaje("        ");
      Assert.AreEqual(esperadoFalse, actual);
    }

    [TestMethod()]
    public void ValidarMensajeTest3() {
      actual = espera.ValidarMensaje("mensaje de prueba");
      Assert.AreEqual(esperadoTrue, actual);
    }
  }
}
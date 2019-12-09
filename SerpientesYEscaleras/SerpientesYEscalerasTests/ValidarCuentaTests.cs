using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace SerpientesYEscaleras.Tests {
  [TestClass()]
  public class ValidarCuentaTests {
    ValidarCuenta ventana = new ValidarCuenta(true);
    Boolean esperadoTrue = true;
    Boolean esperadoFalse = false;
    Boolean actual;

    [TestMethod()]
    public void ValidarCodigoTest() {
      actual = ventana.ValidarCodigo("99999");
      Assert.AreEqual(esperadoTrue, actual);
    }

    [TestMethod()]
    public void ValidarCodigoTest2() {
      actual = ventana.ValidarCodigo("9999f9");
      Assert.AreEqual(esperadoFalse, actual);
    }

    [TestMethod()]
    public void ValidarNombreUsuarioTest1() {
      actual = ventana.ValidarNombreUsuario("gujfyfcghbj");
      Assert.AreEqual(esperadoTrue, actual);
    }

    [TestMethod()]
    public void ValidarNombreUsuarioTest2() {
      actual = ventana.ValidarNombreUsuario("ujhgjhb.");
      Assert.AreEqual(esperadoFalse, actual);
    }
  }
}
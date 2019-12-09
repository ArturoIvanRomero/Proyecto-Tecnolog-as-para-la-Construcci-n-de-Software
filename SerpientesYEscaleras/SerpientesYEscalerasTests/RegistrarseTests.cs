using SerpientesYEscaleras;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace SerpientesYEscaleras.Tests {
  [TestClass()]
  public class RegistrarseTests {
    Registrarse registrarse = new Registrarse(true);
    Boolean esperadoFalse = false;
    Boolean esperadoTrue = true;

    [TestMethod()]
    public void ValidarDatosCompletosTest() {
      Boolean actual = registrarse.ValidarDatosCompletos("a", "a", "a", "a");
      Assert.AreEqual(esperadoTrue, actual);
    }

    [TestMethod()]
    public void ValidarDatosCompletosTest2() {
      Boolean actual = registrarse.ValidarDatosCompletos("c", "", "a", "a");
      Assert.AreEqual(esperadoFalse, actual);
    }

    [TestMethod()]
    public void ValidarDatosCompletosTest3() {
      Boolean actual = registrarse.ValidarDatosCompletos("x", "a", "", "a");
      Assert.AreEqual(esperadoFalse, actual);
    }

    [TestMethod()]
    public void ValidarDatosCompletosTest4() {
      Boolean actual = registrarse.ValidarDatosCompletos("x", "a", "x", "");
      Assert.AreEqual(esperadoFalse, actual);
    }

    [TestMethod()]
    public void ValidarNombreUsuarioTest1() {
      Boolean actual = registrarse.ValidarNombreUsuario("gujfyfcghbj");
      Assert.AreEqual(esperadoTrue, actual);
    }

    [TestMethod()]
    public void ValidarNombreUsuarioTest2() {
      Boolean actual = registrarse.ValidarNombreUsuario("ujhgjhb.");
      Assert.AreEqual(esperadoFalse, actual);
    }

    [TestMethod()]
    public void ValidarContraseniaTest() {
      Boolean actual = registrarse.ValidarContrasenia("ujhgb");
      Assert.AreEqual(esperadoFalse, actual);
    }

    [TestMethod()]
    public void ValidarContraseniaTest2() {
      Boolean actual = registrarse.ValidarContrasenia("ujhgbjhgfdfg");
      Assert.AreEqual(esperadoFalse, actual);
    }

    [TestMethod()]
    public void ValidarContraseniaTest3() {
      Boolean actual = registrarse.ValidarContrasenia("123456789");
      Assert.AreEqual(esperadoFalse, actual);
    }

    [TestMethod()]
    public void ValidarContraseniaTest4() {
      Boolean actual = registrarse.ValidarContrasenia("123456789kjhg");
      Assert.AreEqual(esperadoTrue, actual);
    }

    [TestMethod()]
    public void VerificarContraseniaTest() {
      Boolean actual = registrarse.VerificarContrasenia("123456789kjhg", "123456789kjhg");
      Assert.AreEqual(esperadoTrue, actual);
    }

    [TestMethod()]
    public void VerificarContraseniaTest2() {
      Boolean actual = registrarse.VerificarContrasenia("123456789kjhg", "123456789kjjhg");
      Assert.AreEqual(esperadoFalse, actual);
    }

    [TestMethod()]
    public void ValidarLetraEnContraseniaTest() {
      Boolean actual = registrarse.ValidarLetraEnContrasenia(false, "a", 0);
      Assert.AreEqual(esperadoTrue, actual);
    }

    [TestMethod()]
    public void ValidarLetraEnContraseniaTest2() {
      Boolean actual = registrarse.ValidarLetraEnContrasenia(false, " ", 0);
      Assert.AreEqual(esperadoFalse, actual);
    }

    [TestMethod()]
    public void ValidarCorreoElectronicoTest() {
      Boolean actual = registrarse.ValidarCorreoElectronico("123456789kjhg");
      Assert.AreEqual(esperadoFalse, actual);
    }

    [TestMethod()]
    public void ValidarCorreoElectronicoTest2() {
      Boolean actual = registrarse.ValidarCorreoElectronico("12345678@9kjhg");
      Assert.AreEqual(esperadoFalse, actual);
    }

    [TestMethod()]
    public void ValidarCorreoElectronicoTest3() {
      Boolean actual = registrarse.ValidarCorreoElectronico("12345678@.9kjhg");
      Assert.AreEqual(esperadoFalse, actual);
    }

    [TestMethod()]
    public void ValidarCorreoElectronicoTest4() {
      Boolean actual = registrarse.ValidarCorreoElectronico("josue@hotmail.9kjhg");
      Assert.AreEqual(esperadoTrue, actual);
    }
  }
}
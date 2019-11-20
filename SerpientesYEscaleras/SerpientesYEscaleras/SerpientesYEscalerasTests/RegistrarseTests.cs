using Microsoft.VisualStudio.TestTools.UnitTesting;
using SerpientesYEscaleras;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SerpientesYEscaleras.Tests {
  [TestClass()]
  public class RegistrarseTests {
    Registrarse registro = new Registrarse();
    Boolean expectedFalse = false;
    Boolean expectedTrue = true;

    [TestMethod()]
    public void ValidarDatosCompletosTest() {
      Boolean actual = registro.ValidarDatosCompletos("a", "a", "a", "a");
      Assert.AreEqual(expectedTrue, actual);
    }

    [TestMethod()]
    public void ValidarDatosCompletosTest2() {
      Boolean actual = registro.ValidarDatosCompletos("c", "", "a", "a");
      Assert.AreEqual(expectedFalse, actual);
    }

    [TestMethod()]
    public void ValidarDatosCompletosTest3() {
      Boolean actual = registro.ValidarDatosCompletos("x", "a", "", "a");
      Assert.AreEqual(expectedFalse, actual);
    }

    [TestMethod()]
    public void ValidarDatosCompletosTest4() {
      Boolean actual = registro.ValidarDatosCompletos("x", "a", "x", "");
      Assert.AreEqual(expectedFalse, actual);
    }

    [TestMethod()]
    public void ValidarNombreUsuarioTest1() {
      Boolean actual = registro.ValidarNombreUsuario("gujfyfcghbj");
      Assert.AreEqual(expectedTrue, actual);
    }

    [TestMethod()]
    public void ValidarNombreUsuarioTest2() {
      Boolean actual = registro.ValidarNombreUsuario("ujhgjhb.");
      Assert.AreEqual(expectedFalse, actual);
    }

    [TestMethod()]
    public void ValidarContraseniaTest() {
      Boolean actual = registro.ValidarContrasenia("ujhgb");
      Assert.AreEqual(expectedFalse, actual);
    }

    [TestMethod()]
    public void ValidarContraseniaTest2() {
      Boolean actual = registro.ValidarContrasenia("ujhgbjhgfdfg");
      Assert.AreEqual(expectedFalse, actual);
    }

    [TestMethod()]
    public void ValidarContraseniaTest3() {
      Boolean actual = registro.ValidarContrasenia("123456789");
      Assert.AreEqual(expectedFalse, actual);
    }

    [TestMethod()]
    public void ValidarContraseniaTest4() {
      Boolean actual = registro.ValidarContrasenia("123456789kjhg");
      Assert.AreEqual(expectedTrue, actual);
    }

    [TestMethod()]
    public void VerificarContraseniaTest() {
      Boolean actual = registro.VerificarContrasenia("123456789kjhg", "123456789kjhg");
      Assert.AreEqual(expectedTrue, actual);
    }

    [TestMethod()]
    public void VerificarContraseniaTest2() {
      Boolean actual = registro.VerificarContrasenia("123456789kjhg", "123456789kjjhg");
      Assert.AreEqual(expectedFalse, actual);
    }

    [TestMethod()]
    public void ValidarCorreoElectronicoTest() {
      Boolean actual = registro.ValidarCorreoElectronico("123456789kjhg");
      Assert.AreEqual(expectedFalse, actual);
    }

    [TestMethod()]
    public void ValidarCorreoElectronicoTest2() {
      Boolean actual = registro.ValidarCorreoElectronico("12345678@9kjhg");
      Assert.AreEqual(expectedFalse, actual);
    }

    [TestMethod()]
    public void ValidarCorreoElectronicoTest3() {
      Boolean actual = registro.ValidarCorreoElectronico("12345678@.9kjhg");
      Assert.AreEqual(expectedFalse, actual);
    }

    [TestMethod()]
    public void ValidarCorreoElectronicoTest4() {
      Boolean actual = registro.ValidarCorreoElectronico("josue@hotmail.9kjhg");
      Assert.AreEqual(expectedTrue, actual);
    }

    [TestMethod()]
    public void VerificarNombreUsuarioTest() {
      Boolean actual = registro.VerificarNombreUsuario("Arturo2");
      Assert.AreEqual(expectedFalse, actual);
    }

    [TestMethod()]
    public void VerificarNombreUsuarioTest2() {
      Boolean actual = registro.VerificarNombreUsuario("Arturo22");
      Assert.AreEqual(expectedTrue, actual);
    }

    [TestMethod()]
    public void VerificarCorreoElectronicoTest() {
      Boolean actual = registro.VerificarCorreoElectronico("Arturo2@hotmail.com");
      Assert.AreEqual(expectedFalse, actual);
    }

    [TestMethod()]
    public void VerificarCorreoElectronicoTest2() {
      Boolean actual = registro.VerificarCorreoElectronico("josuefresh@hotmail.com");
      Assert.AreEqual(expectedTrue, actual);
    }
  }
}
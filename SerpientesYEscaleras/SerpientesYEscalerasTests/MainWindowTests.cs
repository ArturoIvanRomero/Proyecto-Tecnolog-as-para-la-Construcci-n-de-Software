using Microsoft.VisualStudio.TestTools.UnitTesting; 
using System;

namespace SerpientesYEscaleras.Tests {
  [TestClass()]
  public class MainWindowTests {
    MainWindow main = new MainWindow(true);
    Boolean esperadoFalse = false;
    Boolean esperadoTrue = true;

    [TestMethod()]
    public void ValidarDatosCompletosTest1() {
      Boolean actual = main.ValidarDatosCompletos("", "pala");
      Assert.AreEqual(esperadoFalse, actual);
    }

    [TestMethod()]
    public void ValidarDatosCompletosTest2() {
      Boolean actual = main.ValidarDatosCompletos("nomre", "pala");
      Assert.AreEqual(esperadoTrue, actual);
    }

    [TestMethod()]
    public void ValidarNombreUsuarioTest1() {
      Boolean actual = main.ValidarNombreUsuario("nomre");
      Assert.AreEqual(esperadoTrue, actual);
    }

    [TestMethod()]
    public void ValidarNombreUsuarioTest2() {
      Boolean actual = main.ValidarNombreUsuario("nomr*e");
      Assert.AreEqual(esperadoFalse, actual);
    }

    [TestMethod()]
    public void ComputeSha256HashTest() {
      String actual = main.ComputeSha256Hash("1234567a");
      String expected = "47ef20207489b775fa4cdcac3c394b517ab22d7460237ae3df1ac0e8963699d6";
      Assert.AreEqual(expected, actual);
    }
  }
}
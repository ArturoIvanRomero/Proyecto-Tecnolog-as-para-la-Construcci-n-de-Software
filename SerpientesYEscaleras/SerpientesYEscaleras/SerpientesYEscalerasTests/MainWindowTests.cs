using Microsoft.VisualStudio.TestTools.UnitTesting;
using SerpientesYEscaleras;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SerpientesYEscaleras.Tests {
  [TestClass()]
  public class MainWindowTests {

    MainWindow main = new MainWindow();
    Boolean expectedFalse = false;
    Boolean expectedTrue = true;

    [TestMethod()]
    public void ValidarDatosCompletosTest1() {
      Boolean actual = main.ValidarDatosCompletos("", "pala");
      Assert.AreEqual(expectedFalse, actual);
    }

    [TestMethod()]
    public void ValidarDatosCompletosTest2() {
      Boolean actual = main.ValidarDatosCompletos("nomre", "pala");
      Assert.AreEqual(expectedTrue, actual);
    }

    [TestMethod()]
    public void ValidarNombreUsuarioTest1() {
      Boolean actual = main.ValidarNombreUsuario("nomre");
      Assert.AreEqual(expectedTrue, actual);
    }


    [TestMethod()]
    public void ValidarNombreUsuarioTest2() {
      Boolean actual = main.ValidarNombreUsuario("nomr*e");
      Assert.AreEqual(expectedFalse, actual);
    }

    [TestMethod()]
    public void ComputeSha256HashTest() {
      String actual = main.ComputeSha256Hash("1234567a");
      String expected = "47ef20207489b775fa4cdcac3c394b517ab22d7460237ae3df1ac0e8963699d6";
      Assert.AreEqual(expected, actual);
    }
  }
}

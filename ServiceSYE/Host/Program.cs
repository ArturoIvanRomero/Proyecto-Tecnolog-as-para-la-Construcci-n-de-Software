using System;
using System.ServiceModel;

namespace Host {
  public static class Program {
    static void Main(string[] args) {
      using (ServiceHost host = new ServiceHost(typeof(ServiceSYE.Service))) {
        host.Open();
        Console.WriteLine("El servicio está corriendo...");
        Console.Write("Presione Enter para salir.");
        Console.ReadLine();
      }
    }
  }
}

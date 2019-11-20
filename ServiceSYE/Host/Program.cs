using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace Host {
  class Program {
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

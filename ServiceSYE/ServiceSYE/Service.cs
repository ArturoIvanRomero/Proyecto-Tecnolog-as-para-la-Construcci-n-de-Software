using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using DataAccess;

namespace ServiceSYE {
  public class Service : IJugador {
    public void AddJugador(Jugador jugador) {
      DataBaseContainer baseDatos = new DataBaseContainer();
      baseDatos.JugadorSet.Add(new DataAccess.Jugador {
          nombreUsuario = jugador.NombreUsuario,
          contrasenia = jugador.Contrasenia,
          correoElectronico = jugador.CorreoElectronico,
          puntos = jugador.Puntos,
          victorias = jugador.Victorias,
          codigo = jugador.Codigo,
          validado = jugador.Validado,
        });
      baseDatos.SaveChanges();
    }

    public Jugador GetJugador(String nombreUsuario, String contrasenia) {
      using (var baseDatos = new DataBaseContainer()) {
        var jugador = (from j in baseDatos.JugadorSet where j.nombreUsuario == nombreUsuario where j.contrasenia == contrasenia select j).ToList();
        if (jugador.Count == 1) {
          return new Jugador {
            NombreUsuario = jugador.ElementAt(0).nombreUsuario,
            Contrasenia = jugador.ElementAt(0).contrasenia,
            CorreoElectronico = jugador.ElementAt(0).correoElectronico,
            Puntos = jugador.ElementAt(0).puntos,
            Victorias = jugador.ElementAt(0).victorias,
            Codigo = jugador.ElementAt(0).codigo,
            Validado = jugador.ElementAt(0).validado,
          };
        } else {
          return new Jugador {
            NombreUsuario = "",
            Contrasenia = "",
            CorreoElectronico = "",
            Puntos = -1,
            Victorias = -1,
            Codigo = "",
            Validado = false,
          };
        }
      }
    }

    public List<Jugador> GetJugadoresPuntos() {
      using (var baseDatos = new DataBaseContainer()) {
        var jugadores = (from j in baseDatos.JugadorSet orderby j.puntos descending select j).Take(100).ToList();
        List<Jugador> listaJugadores = new List<Jugador>();
        foreach (var jugador in jugadores) {
          listaJugadores.Add(new Jugador {
            NombreUsuario = jugador.nombreUsuario,
            Contrasenia = jugador.contrasenia,
            CorreoElectronico = jugador.correoElectronico,
            Puntos = jugador.puntos,
            Victorias = jugador.victorias,
            Codigo = jugador.codigo,
            Validado = jugador.validado,
          });
        }
        return listaJugadores;
      }
    }

    public List<Jugador> GetJugadoresVictorias() {
      using (var baseDatos = new DataBaseContainer()) {
        var jugadores = (from j in baseDatos.JugadorSet orderby j.victorias descending select j).Take(100).ToList();
        List<Jugador> listaJugadores = new List<Jugador>();
        foreach (var jugador in jugadores) {
          listaJugadores.Add(new Jugador {
            NombreUsuario = jugador.nombreUsuario,
            Contrasenia = jugador.contrasenia,
            CorreoElectronico = jugador.correoElectronico,
            Puntos = jugador.puntos,
            Victorias = jugador.victorias,
            Codigo = jugador.codigo,
            Validado = jugador.validado,
          });
        }
        return listaJugadores;
      }
    }
  }
}

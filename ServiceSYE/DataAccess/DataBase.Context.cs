﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DataAccess
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class DataBaseContainer : DbContext
    {
        public DataBaseContainer()
            : base("name=DataBaseContainer")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Jugador> JugadorSet { get; set; }
        public virtual DbSet<Tiro> TiroSet { get; set; }
        public virtual DbSet<Partida> PartidaSet { get; set; }
        public virtual DbSet<Casilla> CasillaSet { get; set; }
        public virtual DbSet<Tablero> TableroSet { get; set; }
    }
}

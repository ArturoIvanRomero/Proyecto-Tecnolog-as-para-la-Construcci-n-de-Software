
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/06/2019 17:26:14
-- Generated from EDMX file: C:\Users\Arturo\Documents\Semestre5\Tecnologías para la Construcción de Software\Proyecto\ServiceSYE\DataAccess\DataBase.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [SerpientesEscaleras];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_TiroJugador]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TiroSet] DROP CONSTRAINT [FK_TiroJugador];
GO
IF OBJECT_ID(N'[dbo].[FK_JugadorPartida]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[JugadorSet] DROP CONSTRAINT [FK_JugadorPartida];
GO
IF OBJECT_ID(N'[dbo].[FK_PartidaTablero]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PartidaSet] DROP CONSTRAINT [FK_PartidaTablero];
GO
IF OBJECT_ID(N'[dbo].[FK_CasillaTablero]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CasillaSet] DROP CONSTRAINT [FK_CasillaTablero];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[JugadorSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[JugadorSet];
GO
IF OBJECT_ID(N'[dbo].[TiroSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TiroSet];
GO
IF OBJECT_ID(N'[dbo].[PartidaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PartidaSet];
GO
IF OBJECT_ID(N'[dbo].[CasillaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CasillaSet];
GO
IF OBJECT_ID(N'[dbo].[TableroSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TableroSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'JugadorSet'
CREATE TABLE [dbo].[JugadorSet] (
    [IdJugador] int IDENTITY(1,1) NOT NULL,
    [nombreUsuario] nvarchar(20)  NOT NULL,
    [contrasenia] nvarchar(max)  NOT NULL,
    [correoElectronico] nvarchar(40)  NOT NULL,
    [puntos] smallint  NOT NULL,
    [victorias] smallint  NOT NULL,
    [codigo] nvarchar(max)  NOT NULL,
    [validado] bit  NOT NULL,
    [Partida_IdPartida] int  NULL
);
GO

-- Creating table 'TiroSet'
CREATE TABLE [dbo].[TiroSet] (
    [IdTiro] int IDENTITY(1,1) NOT NULL,
    [casilla] smallint  NOT NULL,
    [turno] smallint  NOT NULL,
    [Jugador_IdJugador] int  NOT NULL
);
GO

-- Creating table 'PartidaSet'
CREATE TABLE [dbo].[PartidaSet] (
    [IdPartida] int IDENTITY(1,1) NOT NULL,
    [nombre] nvarchar(20)  NOT NULL,
    [dificultad] smallint  NOT NULL,
    [tiempo] time  NOT NULL,
    [turno] smallint  NOT NULL,
    [Tablero_IdTablero] int  NOT NULL
);
GO

-- Creating table 'CasillaSet'
CREATE TABLE [dbo].[CasillaSet] (
    [IdCasilla] int IDENTITY(1,1) NOT NULL,
    [numero] smallint  NOT NULL,
    [movimiento] smallint  NOT NULL,
    [bonus] bit  NOT NULL,
    [Tablero_IdTablero] int  NOT NULL
);
GO

-- Creating table 'TableroSet'
CREATE TABLE [dbo].[TableroSet] (
    [IdTablero] int IDENTITY(1,1) NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [IdJugador] in table 'JugadorSet'
ALTER TABLE [dbo].[JugadorSet]
ADD CONSTRAINT [PK_JugadorSet]
    PRIMARY KEY CLUSTERED ([IdJugador] ASC);
GO

-- Creating primary key on [IdTiro] in table 'TiroSet'
ALTER TABLE [dbo].[TiroSet]
ADD CONSTRAINT [PK_TiroSet]
    PRIMARY KEY CLUSTERED ([IdTiro] ASC);
GO

-- Creating primary key on [IdPartida] in table 'PartidaSet'
ALTER TABLE [dbo].[PartidaSet]
ADD CONSTRAINT [PK_PartidaSet]
    PRIMARY KEY CLUSTERED ([IdPartida] ASC);
GO

-- Creating primary key on [IdCasilla] in table 'CasillaSet'
ALTER TABLE [dbo].[CasillaSet]
ADD CONSTRAINT [PK_CasillaSet]
    PRIMARY KEY CLUSTERED ([IdCasilla] ASC);
GO

-- Creating primary key on [IdTablero] in table 'TableroSet'
ALTER TABLE [dbo].[TableroSet]
ADD CONSTRAINT [PK_TableroSet]
    PRIMARY KEY CLUSTERED ([IdTablero] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Tablero_IdTablero] in table 'PartidaSet'
ALTER TABLE [dbo].[PartidaSet]
ADD CONSTRAINT [FK_PartidaTablero]
    FOREIGN KEY ([Tablero_IdTablero])
    REFERENCES [dbo].[TableroSet]
        ([IdTablero])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PartidaTablero'
CREATE INDEX [IX_FK_PartidaTablero]
ON [dbo].[PartidaSet]
    ([Tablero_IdTablero]);
GO

-- Creating foreign key on [Tablero_IdTablero] in table 'CasillaSet'
ALTER TABLE [dbo].[CasillaSet]
ADD CONSTRAINT [FK_CasillaTablero]
    FOREIGN KEY ([Tablero_IdTablero])
    REFERENCES [dbo].[TableroSet]
        ([IdTablero])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CasillaTablero'
CREATE INDEX [IX_FK_CasillaTablero]
ON [dbo].[CasillaSet]
    ([Tablero_IdTablero]);
GO

-- Creating foreign key on [Jugador_IdJugador] in table 'TiroSet'
ALTER TABLE [dbo].[TiroSet]
ADD CONSTRAINT [FK_TiroJugador]
    FOREIGN KEY ([Jugador_IdJugador])
    REFERENCES [dbo].[JugadorSet]
        ([IdJugador])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TiroJugador'
CREATE INDEX [IX_FK_TiroJugador]
ON [dbo].[TiroSet]
    ([Jugador_IdJugador]);
GO

-- Creating foreign key on [Partida_IdPartida] in table 'JugadorSet'
ALTER TABLE [dbo].[JugadorSet]
ADD CONSTRAINT [FK_JugadorPartida]
    FOREIGN KEY ([Partida_IdPartida])
    REFERENCES [dbo].[PartidaSet]
        ([IdPartida])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_JugadorPartida'
CREATE INDEX [IX_FK_JugadorPartida]
ON [dbo].[JugadorSet]
    ([Partida_IdPartida]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------
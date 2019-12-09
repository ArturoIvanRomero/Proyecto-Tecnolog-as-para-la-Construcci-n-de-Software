
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/26/2019 19:18:19
-- Generated from EDMX file: C:\Users\Arturo\Documents\Semestre5\Tecnologías para la Construcción de Software\Proyecto\ServiceSYE\DataAccess\DataBase.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [SerpientesYEscaleras];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_JugadorEstadisticas]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[JugadorSet] DROP CONSTRAINT [FK_JugadorEstadisticas];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[JugadorSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[JugadorSet];
GO
IF OBJECT_ID(N'[dbo].[EstadisticasSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EstadisticasSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'JugadorSet'
CREATE TABLE [dbo].[JugadorSet] (
    [IdJugador] int IDENTITY(1,1) NOT NULL,
    [nombreUsuario] nvarchar(20)  NOT NULL,
    [contrasenia] nvarchar(max)  NOT NULL,
    [correoElectronico] nvarchar(50)  NOT NULL,
    [codigo] nvarchar(5)  NOT NULL,
    [Estadisticas_IdEstadisticas] int  NOT NULL
);
GO

-- Creating table 'EstadisticasSet'
CREATE TABLE [dbo].[EstadisticasSet] (
    [IdEstadisticas] int IDENTITY(1,1) NOT NULL,
    [puntos] smallint  NOT NULL,
    [victorias] smallint  NOT NULL
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

-- Creating primary key on [IdEstadisticas] in table 'EstadisticasSet'
ALTER TABLE [dbo].[EstadisticasSet]
ADD CONSTRAINT [PK_EstadisticasSet]
    PRIMARY KEY CLUSTERED ([IdEstadisticas] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Estadisticas_IdEstadisticas] in table 'JugadorSet'
ALTER TABLE [dbo].[JugadorSet]
ADD CONSTRAINT [FK_JugadorEstadisticas]
    FOREIGN KEY ([Estadisticas_IdEstadisticas])
    REFERENCES [dbo].[EstadisticasSet]
        ([IdEstadisticas])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_JugadorEstadisticas'
CREATE INDEX [IX_FK_JugadorEstadisticas]
ON [dbo].[JugadorSet]
    ([Estadisticas_IdEstadisticas]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------
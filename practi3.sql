USE [master]
GO
/****** Object:  Database [pagweb]    Script Date: 03/10/2018 11:27:44 ******/
CREATE DATABASE [pagweb] ON  PRIMARY 
( NAME = N'pagweb', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\pagweb.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'pagweb_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\pagweb_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [pagweb] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [pagweb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [pagweb] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [pagweb] SET ANSI_NULLS OFF
GO
ALTER DATABASE [pagweb] SET ANSI_PADDING OFF
GO
ALTER DATABASE [pagweb] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [pagweb] SET ARITHABORT OFF
GO
ALTER DATABASE [pagweb] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [pagweb] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [pagweb] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [pagweb] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [pagweb] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [pagweb] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [pagweb] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [pagweb] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [pagweb] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [pagweb] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [pagweb] SET  DISABLE_BROKER
GO
ALTER DATABASE [pagweb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [pagweb] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [pagweb] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [pagweb] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [pagweb] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [pagweb] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [pagweb] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [pagweb] SET  READ_WRITE
GO
ALTER DATABASE [pagweb] SET RECOVERY SIMPLE
GO
ALTER DATABASE [pagweb] SET  MULTI_USER
GO
ALTER DATABASE [pagweb] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [pagweb] SET DB_CHAINING OFF
GO
USE [pagweb]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 03/10/2018 11:27:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[Id] [int] NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sesion]    Script Date: 03/10/2018 11:27:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sesion](
	[Id] [int] NOT NULL,
	[Idusuario] [nvarchar](max) NOT NULL,
	[Inicio] [nvarchar](max) NOT NULL,
	[Finalizacion] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Sesion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 03/10/2018 11:27:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personas](
	[Nombre] [nvarchar](max) NOT NULL,
	[Apellidos] [nvarchar](max) NOT NULL,
	[Sexo] [nvarchar](max) NOT NULL,
	[Edad] [nvarchar](max) NOT NULL,
	[Idpersonas] [int] NOT NULL,
 CONSTRAINT [PK_Personas] PRIMARY KEY CLUSTERED 
(
	[Idpersonas] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Visitas]    Script Date: 03/10/2018 11:27:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Visitas](
	[Idsesion] [nvarchar](max) NOT NULL,
	[Idpersonas] [int] NOT NULL,
	[Fechas] [nvarchar](max) NOT NULL,
	[Idvisitas] [int] NOT NULL,
 CONSTRAINT [PK_Visitas] PRIMARY KEY CLUSTERED 
(
	[Idvisitas] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 03/10/2018 11:27:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[id] [int] NOT NULL,
	[usuario] [nvarchar](max) NOT NULL,
	[permisos] [nvarchar](max) NOT NULL,
	[correo] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_usuarios] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Personas_Categoria]    Script Date: 03/10/2018 11:27:45 ******/
ALTER TABLE [dbo].[Personas]  WITH CHECK ADD  CONSTRAINT [FK_Personas_Categoria] FOREIGN KEY([Idpersonas])
REFERENCES [dbo].[Categoria] ([Id])
GO
ALTER TABLE [dbo].[Personas] CHECK CONSTRAINT [FK_Personas_Categoria]
GO
/****** Object:  ForeignKey [FK_Visitas_Personas]    Script Date: 03/10/2018 11:27:45 ******/
ALTER TABLE [dbo].[Visitas]  WITH CHECK ADD  CONSTRAINT [FK_Visitas_Personas] FOREIGN KEY([Idpersonas])
REFERENCES [dbo].[Personas] ([Idpersonas])
GO
ALTER TABLE [dbo].[Visitas] CHECK CONSTRAINT [FK_Visitas_Personas]
GO
/****** Object:  ForeignKey [FK_Visitas_Sesion]    Script Date: 03/10/2018 11:27:45 ******/
ALTER TABLE [dbo].[Visitas]  WITH CHECK ADD  CONSTRAINT [FK_Visitas_Sesion] FOREIGN KEY([Idvisitas])
REFERENCES [dbo].[Sesion] ([Id])
GO
ALTER TABLE [dbo].[Visitas] CHECK CONSTRAINT [FK_Visitas_Sesion]
GO
/****** Object:  ForeignKey [FK_usuarios_Personas]    Script Date: 03/10/2018 11:27:45 ******/
ALTER TABLE [dbo].[usuarios]  WITH CHECK ADD  CONSTRAINT [FK_usuarios_Personas] FOREIGN KEY([id])
REFERENCES [dbo].[Personas] ([Idpersonas])
GO
ALTER TABLE [dbo].[usuarios] CHECK CONSTRAINT [FK_usuarios_Personas]
GO
/****** Object:  ForeignKey [FK_usuarios_Visitas]    Script Date: 03/10/2018 11:27:45 ******/
ALTER TABLE [dbo].[usuarios]  WITH CHECK ADD  CONSTRAINT [FK_usuarios_Visitas] FOREIGN KEY([id])
REFERENCES [dbo].[Visitas] ([Idvisitas])
GO
ALTER TABLE [dbo].[usuarios] CHECK CONSTRAINT [FK_usuarios_Visitas]
GO

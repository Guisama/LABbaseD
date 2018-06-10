

--Aaron Ezri Moreno Yepez 1614794

--Pamela Sarai Blanquet Zuluaga 1735202

--Guillermo Sandoval Martinez 0799575

USE [HorarioEscuela]

GO

/****** Object:  StoredProcedure [dbo].[apTops]    Script Date: 05/05/2018 09:22:55 p. m. ******/

DROP PROCEDURE [dbo].[apTops]

GO

/****** Object:  StoredProcedure [dbo].[apGrupDiaHoraInicioFin]    Script Date: 05/05/2018 09:22:55 p. m. ******/

DROP PROCEDURE [dbo].[apGrupDiaHoraInicioFin]

GO

/****** Object:  StoredProcedure [dbo].[apFuncionesAgregadas]    Script Date: 05/05/2018 09:22:55 p. m. ******/

DROP PROCEDURE [dbo].[apFuncionesAgregadas]

GO

/****** Object:  StoredProcedure [dbo].[apDatosAlumno]    Script Date: 05/05/2018 09:22:55 p. m. ******/

DROP PROCEDURE [dbo].[apDatosAlumno]

GO

/****** Object:  StoredProcedure [dbo].[aPConsultasTablas]    Script Date: 05/05/2018 09:22:55 p. m. ******/

DROP PROCEDURE [dbo].[aPConsultasTablas]

GO

/****** Object:  StoredProcedure [dbo].[apConsultasGrupos]    Script Date: 05/05/2018 09:22:55 p. m. ******/

DROP PROCEDURE [dbo].[apConsultasGrupos]

GO

/****** Object:  StoredProcedure [dbo].[apAlumnoGrupoHorario]    Script Date: 05/05/2018 09:22:55 p. m. ******/

DROP PROCEDURE [dbo].[apAlumnoGrupoHorario]

GO

ALTER TABLE [dbo].[Materia] DROP CONSTRAINT [FK_Materia_Salon]

GO

ALTER TABLE [dbo].[Materia] DROP CONSTRAINT [FK_Materia_Carrera]

GO

ALTER TABLE [dbo].[Maestro] DROP CONSTRAINT [FK_Maestro_Materia]

GO

ALTER TABLE [dbo].[HorarioAsignado] DROP CONSTRAINT [FK_HorarioAsignado_Horario]

GO

ALTER TABLE [dbo].[HorarioAsignado] DROP CONSTRAINT [FK_HorarioAsignado_Grupo]

GO

ALTER TABLE [dbo].[GrupoAlumno] DROP CONSTRAINT [FK_GrupoAlumno_Grupo]

GO

ALTER TABLE [dbo].[GrupoAlumno] DROP CONSTRAINT [FK_GrupoAlumno_Alumno]

GO

ALTER TABLE [dbo].[Grupo] DROP CONSTRAINT [FK_Grupo_Salon]

GO

ALTER TABLE [dbo].[Grupo] DROP CONSTRAINT [FK_Grupo_Materia]

GO

ALTER TABLE [dbo].[Grupo] DROP CONSTRAINT [FK_Grupo_Maestro]

GO

ALTER TABLE [dbo].[Alumno] DROP CONSTRAINT [FK_Alumno_Carrera]

GO

/****** Object:  View [dbo].[vw_Salon]    Script Date: 05/05/2018 09:22:55 p. m. ******/

DROP VIEW [dbo].[vw_Salon]

GO

/****** Object:  Table [dbo].[Salon]    Script Date: 05/05/2018 09:22:55 p. m. ******/

DROP TABLE [dbo].[Salon]

GO

/****** Object:  View [dbo].[vw_Materia]    Script Date: 05/05/2018 09:22:55 p. m. ******/

DROP VIEW [dbo].[vw_Materia]

GO

/****** Object:  Table [dbo].[Materia]    Script Date: 05/05/2018 09:22:55 p. m. ******/

DROP TABLE [dbo].[Materia]

GO

/****** Object:  View [dbo].[vw_Maestro]    Script Date: 05/05/2018 09:22:55 p. m. ******/

DROP VIEW [dbo].[vw_Maestro]

GO

/****** Object:  Table [dbo].[Maestro]    Script Date: 05/05/2018 09:22:55 p. m. ******/

DROP TABLE [dbo].[Maestro]

GO

/****** Object:  View [dbo].[vw_HorarioAsignado]    Script Date: 05/05/2018 09:22:55 p. m. ******/

DROP VIEW [dbo].[vw_HorarioAsignado]

GO

/****** Object:  Table [dbo].[HorarioAsignado]    Script Date: 05/05/2018 09:22:55 p. m. ******/

DROP TABLE [dbo].[HorarioAsignado]

GO

/****** Object:  View [dbo].[vw_Horario]    Script Date: 05/05/2018 09:22:55 p. m. ******/

DROP VIEW [dbo].[vw_Horario]

GO

/****** Object:  Table [dbo].[Horario]    Script Date: 05/05/2018 09:22:55 p. m. ******/

DROP TABLE [dbo].[Horario]

GO

/****** Object:  View [dbo].[vw_GrupoAlumno]    Script Date: 05/05/2018 09:22:55 p. m. ******/

DROP VIEW [dbo].[vw_GrupoAlumno]

GO

/****** Object:  Table [dbo].[GrupoAlumno]    Script Date: 05/05/2018 09:22:55 p. m. ******/

DROP TABLE [dbo].[GrupoAlumno]

GO

/****** Object:  View [dbo].[vw_Grupo]    Script Date: 05/05/2018 09:22:55 p. m. ******/

DROP VIEW [dbo].[vw_Grupo]

GO

/****** Object:  Table [dbo].[Grupo]    Script Date: 05/05/2018 09:22:55 p. m. ******/

DROP TABLE [dbo].[Grupo]

GO

/****** Object:  View [dbo].[vw_Carrera]    Script Date: 05/05/2018 09:22:55 p. m. ******/

DROP VIEW [dbo].[vw_Carrera]

GO

/****** Object:  Table [dbo].[Carrera]    Script Date: 05/05/2018 09:22:55 p. m. ******/

DROP TABLE [dbo].[Carrera]

GO

/****** Object:  View [dbo].[vw_AlumnoCompreta]    Script Date: 05/05/2018 09:22:55 p. m. ******/

DROP VIEW [dbo].[vw_AlumnoCompreta]

GO

/****** Object:  View [dbo].[vw_Alumno]    Script Date: 05/05/2018 09:22:55 p. m. ******/

DROP VIEW [dbo].[vw_Alumno]

GO

/****** Object:  Table [dbo].[Alumno]    Script Date: 05/05/2018 09:22:55 p. m. ******/

DROP TABLE [dbo].[Alumno]

GO

/****** Object:  UserDefinedFunction [dbo].[MareriaxSemana]    Script Date: 05/05/2018 09:22:55 p. m. ******/

DROP FUNCTION [dbo].[MareriaxSemana]

GO

/****** Object:  UserDefinedFunction [dbo].[MareriaxSemana]    Script Date: 05/05/2018 09:22:55 p. m. ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

create function [dbo].[MareriaxSemana] (@Hora int) returns int

as

begin

declare @horario int=(select COUNT(*) from Horario)

declare @materia int =(select COUNT(*) from Materia)



select @Hora = (@horario / @materia)



return @hora



end

GO

/****** Object:  Table [dbo].[Alumno]    Script Date: 05/05/2018 09:22:55 p. m. ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

CREATE TABLE [dbo].[Alumno](

	[IdAlumno] [uniqueidentifier] NOT NULL,

	[Nombre] [varchar](50) NULL,

	[FechaIngreso] [date] NULL,

	[IdCarrera] [uniqueidentifier] NULL,

	[AñoCurso] [int] NULL,

 CONSTRAINT [PK_Alumno] PRIMARY KEY CLUSTERED 

(

	[IdAlumno] ASC

)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

) ON [PRIMARY]

GO

/****** Object:  View [dbo].[vw_Alumno]    Script Date: 05/05/2018 09:22:56 p. m. ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

create view [dbo].[vw_Alumno]

as

select IdAlumno, Nombre, IdCarrera, AñoCurso from Alumno;

GO

/****** Object:  View [dbo].[vw_AlumnoCompreta]    Script Date: 05/05/2018 09:22:56 p. m. ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

create view [dbo].[vw_AlumnoCompreta]

as

select IdAlumno, Nombre, IdCarrera, FechaIngreso, AñoCurso from Alumno;

GO

/****** Object:  Table [dbo].[Carrera]    Script Date: 05/05/2018 09:22:56 p. m. ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

CREATE TABLE [dbo].[Carrera](

	[IdCarrera] [uniqueidentifier] NOT NULL,

	[Nombre] [varchar](50) NULL,

	[Duracion] [int] NULL,

 CONSTRAINT [PK_Carrera] PRIMARY KEY CLUSTERED 

(

	[IdCarrera] ASC

)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

) ON [PRIMARY]

GO

/****** Object:  View [dbo].[vw_Carrera]    Script Date: 05/05/2018 09:22:56 p. m. ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

create view [dbo].[vw_Carrera] 

as

select IdCarrera, Nombre, Duracion from Carrera;

GO

/****** Object:  Table [dbo].[Grupo]    Script Date: 05/05/2018 09:22:56 p. m. ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

CREATE TABLE [dbo].[Grupo](

	[IdGrupo] [uniqueidentifier] NOT NULL,

	[IDMaestro] [uniqueidentifier] NULL,

	[IdMateria] [uniqueidentifier] NULL,

	[IdSalon] [uniqueidentifier] NULL,

 CONSTRAINT [PK_Grupo] PRIMARY KEY CLUSTERED 

(

	[IdGrupo] ASC

)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

) ON [PRIMARY]

GO

/****** Object:  View [dbo].[vw_Grupo]    Script Date: 05/05/2018 09:22:56 p. m. ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

create view [dbo].[vw_Grupo]

as

select IdGrupo, IDMaestro, IdMateria, IdSalon from Grupo;

GO

/****** Object:  Table [dbo].[GrupoAlumno]    Script Date: 05/05/2018 09:22:56 p. m. ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

CREATE TABLE [dbo].[GrupoAlumno](

	[IdAlumno] [uniqueidentifier] NULL,

	[IdGrupo] [uniqueidentifier] NULL

) ON [PRIMARY]

GO

/****** Object:  View [dbo].[vw_GrupoAlumno]    Script Date: 05/05/2018 09:22:57 p. m. ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

create view [dbo].[vw_GrupoAlumno]

as

select IdAlumno, IdGrupo from GrupoAlumno;

GO

/****** Object:  Table [dbo].[Horario]    Script Date: 05/05/2018 09:22:57 p. m. ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

CREATE TABLE [dbo].[Horario](

	[IdHorario] [uniqueidentifier] NOT NULL,

	[DIa] [date] NULL,

	[HorarioInicio] [time](7) NULL,

	[HorarioFin] [time](7) NULL,

	[Turno] [int] NULL,

 CONSTRAINT [PK_Horario] PRIMARY KEY CLUSTERED 

(

	[IdHorario] ASC

)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

) ON [PRIMARY]

GO

/****** Object:  View [dbo].[vw_Horario]    Script Date: 05/05/2018 09:22:57 p. m. ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO



create view [dbo].[vw_Horario]

as

select IdHorario, DIa, HorarioInicio, HorarioFin, Turno from Horario

GO

/****** Object:  Table [dbo].[HorarioAsignado]    Script Date: 05/05/2018 09:22:57 p. m. ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

CREATE TABLE [dbo].[HorarioAsignado](

	[IdHorario] [uniqueidentifier] NULL,

	[IdGrupo] [uniqueidentifier] NULL

) ON [PRIMARY]

GO

/****** Object:  View [dbo].[vw_HorarioAsignado]    Script Date: 05/05/2018 09:22:57 p. m. ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

create view [dbo].[vw_HorarioAsignado]

as

select Idhorario, IdGrupo from HorarioAsignado

GO

/****** Object:  Table [dbo].[Maestro]    Script Date: 05/05/2018 09:22:57 p. m. ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

CREATE TABLE [dbo].[Maestro](

	[IdMaestro] [uniqueidentifier] NOT NULL,

	[Nombre] [varchar](50) NULL,

	[IdMateria] [uniqueidentifier] NULL,

	[InicioContrato] [date] NULL,

 CONSTRAINT [PK_Maestro] PRIMARY KEY CLUSTERED 

(

	[IdMaestro] ASC

)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

) ON [PRIMARY]

GO

/****** Object:  View [dbo].[vw_Maestro]    Script Date: 05/05/2018 09:22:57 p. m. ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO



create view [dbo].[vw_Maestro]

as

select IdMaestro, Nombre, IdMateria, InicioContrato from Maestro

GO

/****** Object:  Table [dbo].[Materia]    Script Date: 05/05/2018 09:22:57 p. m. ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

CREATE TABLE [dbo].[Materia](

	[IdMateria] [uniqueidentifier] NOT NULL,

	[Nombre] [varchar](50) NULL,

	[IdCarrera] [uniqueidentifier] NULL,

	[IdSalon] [uniqueidentifier] NULL,

 CONSTRAINT [PK_Materia] PRIMARY KEY CLUSTERED 

(

	[IdMateria] ASC

)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

) ON [PRIMARY]

GO

/****** Object:  View [dbo].[vw_Materia]    Script Date: 05/05/2018 09:22:57 p. m. ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO



create view [dbo].[vw_Materia]

as

select IdMateria, Nombre, IdCarrera, IdSalon from Materia

GO

/****** Object:  Table [dbo].[Salon]    Script Date: 05/05/2018 09:22:57 p. m. ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

CREATE TABLE [dbo].[Salon](

	[IdSalon] [uniqueidentifier] NOT NULL,

	[CantidadAlumnos] [int] NULL,

	[Numero] [int] NULL,

 CONSTRAINT [PK_Salon] PRIMARY KEY CLUSTERED 

(

	[IdSalon] ASC

)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

) ON [PRIMARY]

GO

/****** Object:  View [dbo].[vw_Salon]    Script Date: 05/05/2018 09:22:57 p. m. ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO



create view [dbo].[vw_Salon]

as

select IdSalon, CantidadAlumnos, Numero from Salon

GO

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'1cb7276e-f025-4d4b-b9c0-01bb7c19b88c', N'GOHAN', CAST(N'2018-04-30' AS Date), N'129612e5-1ace-4279-b3f6-35e3b9561522', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'cffa0895-7bfe-4b25-bc3c-02fb233f3c22', N'SARA', CAST(N'2018-04-30' AS Date), N'0a229ccd-b2e8-4c0b-b4b6-f14166d274b9', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'a7aad102-0adb-43de-a572-04de7d11e997', N'ELIZABET', CAST(N'2018-04-30' AS Date), N'6d8335af-7d25-404d-abb0-c0233aaae880', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'8c4e6bca-5420-4ab7-8e79-05476b0622d0', N'LUCAS', CAST(N'2018-04-30' AS Date), N'4f99b89f-3fe3-4ac5-b402-fc72ded9216e', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'648e806e-1335-4ab4-aee7-05d7f12914df', N'AXL', CAST(N'2018-04-30' AS Date), N'129612e5-1ace-4279-b3f6-35e3b9561522', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'5eb2d475-9f69-4d78-a46c-065940cfe349', N'JACOB', CAST(N'2018-04-30' AS Date), N'129612e5-1ace-4279-b3f6-35e3b9561522', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'e326bec6-922d-4506-9295-09782c0c36d3', N'JOSUE', CAST(N'2018-04-30' AS Date), N'6d8335af-7d25-404d-abb0-c0233aaae880', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'df6fc7a0-9df2-4210-9673-0bc96ffde141', N'FELIPE', CAST(N'2018-04-30' AS Date), N'41b55495-e318-4809-9c97-707094a3a94e', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'08797129-d023-402f-99ea-0fc99abe81b4', N'BETY', CAST(N'2018-04-30' AS Date), N'0a229ccd-b2e8-4c0b-b4b6-f14166d274b9', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'cdcdbab4-2090-42cd-b5ef-11aa0e0aeadd', N'SARAI', CAST(N'2018-04-30' AS Date), N'41b55495-e318-4809-9c97-707094a3a94e', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'e3c98c5d-2983-4080-a5bb-11fff1ef5aba', N'ANGEL', CAST(N'2018-04-30' AS Date), N'41b55495-e318-4809-9c97-707094a3a94e', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'e18d19fa-c7d0-4dbe-9ac6-1c6a06e9be0a', N'CLAUDIA', CAST(N'2018-04-30' AS Date), N'0a229ccd-b2e8-4c0b-b4b6-f14166d274b9', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'7bac89c0-9904-4fd5-951b-1cd0ba8803fc', N'MESAC', CAST(N'2018-04-30' AS Date), N'129612e5-1ace-4279-b3f6-35e3b9561522', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'e87589dc-51ab-4b42-8a61-1d8b319406a1', N'BRENDA', CAST(N'2018-04-30' AS Date), N'41b55495-e318-4809-9c97-707094a3a94e', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'f0caeadd-b596-496d-9d0e-2cbef5e43e3a', N'JANETH', CAST(N'2018-04-30' AS Date), N'0a229ccd-b2e8-4c0b-b4b6-f14166d274b9', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'50a72cff-7408-45d4-913f-2e4d907442cf', N'TILO', CAST(N'2018-04-30' AS Date), N'0a229ccd-b2e8-4c0b-b4b6-f14166d274b9', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'67c880e4-df72-4547-99ea-306521e6c70e', N'ROGELIO', CAST(N'2018-04-30' AS Date), N'6d8335af-7d25-404d-abb0-c0233aaae880', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'58406a94-a4ca-443c-abc3-319598d85427', N'JAACIEL', CAST(N'2018-04-30' AS Date), N'6d8335af-7d25-404d-abb0-c0233aaae880', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'4cf9a87a-2798-4dce-8a5a-322269dec5a2', N'ASRRAEL', CAST(N'2018-04-30' AS Date), N'129612e5-1ace-4279-b3f6-35e3b9561522', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'5e5f74ea-c4e1-4690-bc12-3cdf8365a25a', N'ARELY', CAST(N'2018-04-30' AS Date), N'4f99b89f-3fe3-4ac5-b402-fc72ded9216e', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'78e3eec4-02c4-46e7-a6c6-3d28fc63f301', N'LILIANA', CAST(N'2018-04-30' AS Date), N'41b55495-e318-4809-9c97-707094a3a94e', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'ea929996-78ac-48fe-8064-41f7d3f66fcf', N'SALMA', CAST(N'2018-04-30' AS Date), N'4f99b89f-3fe3-4ac5-b402-fc72ded9216e', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'cef72769-333d-4b36-9654-43f34efada17', N'DEVANI', CAST(N'2018-04-30' AS Date), N'41b55495-e318-4809-9c97-707094a3a94e', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'5d08d65e-8cf2-4393-917c-49c42f6be488', N'ANA', CAST(N'2018-04-30' AS Date), N'6d8335af-7d25-404d-abb0-c0233aaae880', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'5355b133-84ee-4b31-bffc-4cc3d90bdca8', N'ISBET', CAST(N'2018-04-30' AS Date), N'6d8335af-7d25-404d-abb0-c0233aaae880', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'3f15da20-a033-422d-b3d5-57e553efdb9c', N'MARIA', CAST(N'2018-04-30' AS Date), N'0a229ccd-b2e8-4c0b-b4b6-f14166d274b9', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'457996fe-1a94-4cac-9434-65ff91ee9d0b', N'DANIEL', CAST(N'2018-04-30' AS Date), N'4f99b89f-3fe3-4ac5-b402-fc72ded9216e', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'6a39a815-5aee-4c0c-b60f-6b13586b2bb0', N'PAMELA', CAST(N'2018-04-30' AS Date), N'6d8335af-7d25-404d-abb0-c0233aaae880', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'a350d7d7-16ff-401e-8a7c-6b1784cce80c', N'JESSICA', CAST(N'2018-04-30' AS Date), N'4f99b89f-3fe3-4ac5-b402-fc72ded9216e', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'50267f27-81b6-46d2-a5af-6bffdd06e78f', N'ALMA', CAST(N'2018-04-30' AS Date), N'129612e5-1ace-4279-b3f6-35e3b9561522', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'f8f1745a-6365-452c-93a9-6dc69737633c', N'JESUS', CAST(N'2018-04-30' AS Date), N'41b55495-e318-4809-9c97-707094a3a94e', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'80c2c7e4-f38f-487d-8d2a-749e5f459225', N'ULISES', CAST(N'2018-04-30' AS Date), N'4f99b89f-3fe3-4ac5-b402-fc72ded9216e', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'112cc03f-5a77-42eb-9f88-755e02243f77', N'YADIRA', CAST(N'2018-04-30' AS Date), N'6d8335af-7d25-404d-abb0-c0233aaae880', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'c5aca110-ed78-4a59-b13a-75d2f6d688af', N'ALONDRA', CAST(N'2018-04-30' AS Date), N'41b55495-e318-4809-9c97-707094a3a94e', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'03c61f00-06f2-43a8-8058-75fb667c2e16', N'ALFONSO', CAST(N'2018-04-30' AS Date), N'0a229ccd-b2e8-4c0b-b4b6-f14166d274b9', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'185ef741-e632-439f-87f3-80dd381160b7', N'JAFED', CAST(N'2018-04-30' AS Date), N'4f99b89f-3fe3-4ac5-b402-fc72ded9216e', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'5986f67c-57d2-419c-9a39-823bb7e384b4', N'MARLENY', CAST(N'2018-04-30' AS Date), N'4f99b89f-3fe3-4ac5-b402-fc72ded9216e', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'92a43b93-e3bf-4dfb-9da1-839fad4472d2', N'CLAUDIA', CAST(N'2018-04-30' AS Date), N'129612e5-1ace-4279-b3f6-35e3b9561522', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'ce833193-5f7c-4b87-a658-84c8a23f3f2f', N'LENAR', CAST(N'2018-04-30' AS Date), N'129612e5-1ace-4279-b3f6-35e3b9561522', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'b4824983-6cc6-4977-9eb2-89a8b2129f63', N'KAREN', CAST(N'2018-04-30' AS Date), N'6d8335af-7d25-404d-abb0-c0233aaae880', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'a98bd2f9-ad6c-4a5a-98cb-8d524cc44343', N'EDUARDO', CAST(N'2018-04-30' AS Date), N'4f99b89f-3fe3-4ac5-b402-fc72ded9216e', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'27d6df4a-cc68-4147-a910-944a658fe83e', N'RICARDO', CAST(N'2018-04-30' AS Date), N'41b55495-e318-4809-9c97-707094a3a94e', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'ac02768e-ed54-42fd-817d-96fa3e463b21', N'MICHELL', CAST(N'2018-04-30' AS Date), N'6d8335af-7d25-404d-abb0-c0233aaae880', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'df0c6e2f-4936-4e5b-9884-9a808dd84d2b', N'SAMUEL', CAST(N'2018-04-30' AS Date), N'129612e5-1ace-4279-b3f6-35e3b9561522', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'5bdf47da-315f-4afc-81f8-9c69f6bcf1c0', N'CARLOS', CAST(N'2018-04-30' AS Date), N'6d8335af-7d25-404d-abb0-c0233aaae880', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'521a7278-da1d-46b2-8ba7-9edfcd5815c8', N'MORELIA', CAST(N'2018-04-30' AS Date), N'0a229ccd-b2e8-4c0b-b4b6-f14166d274b9', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'9902209c-9e47-4da5-b168-a05a5b6c0b4f', N'JORGE', CAST(N'2018-04-30' AS Date), N'4f99b89f-3fe3-4ac5-b402-fc72ded9216e', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'e04aaf25-cfc1-4125-b504-a0c7dea10e48', N'CRISTINA', CAST(N'2018-04-30' AS Date), N'129612e5-1ace-4279-b3f6-35e3b9561522', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'4025b1b9-c923-4941-802f-a55eecf21d94', N'EZRI', CAST(N'2018-04-30' AS Date), N'0a229ccd-b2e8-4c0b-b4b6-f14166d274b9', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'6bf39127-4be5-450d-9e8c-a7ae3444b6f4', N'MEGAN', CAST(N'2018-04-30' AS Date), N'0a229ccd-b2e8-4c0b-b4b6-f14166d274b9', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'be7408e5-c714-4580-9c8e-a90b07edd16a', N'EZRI', CAST(N'2018-04-30' AS Date), N'6d8335af-7d25-404d-abb0-c0233aaae880', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'4ac73a71-ea97-4290-922d-b0fb246e0909', N'ELIAS', CAST(N'2018-04-30' AS Date), N'41b55495-e318-4809-9c97-707094a3a94e', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'29796b90-98af-4141-a2b9-bb9c14f10572', N'PEDRO', CAST(N'2018-04-30' AS Date), N'0a229ccd-b2e8-4c0b-b4b6-f14166d274b9', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'd3538cf7-7879-43f3-9dd4-bf00c05cbd15', N'SHELDON', CAST(N'2018-04-30' AS Date), N'129612e5-1ace-4279-b3f6-35e3b9561522', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'aa841dac-27b6-403e-bbef-c779deabb091', N'CAROLINA', CAST(N'2018-04-30' AS Date), N'129612e5-1ace-4279-b3f6-35e3b9561522', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'1ddccbb0-ba61-48ac-b4b1-ce34fae08c26', N'BARRBARA', CAST(N'2018-04-30' AS Date), N'0a229ccd-b2e8-4c0b-b4b6-f14166d274b9', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'27b786d3-9de2-4c0e-bec5-cee84ea8d101', N'BRAYAN', CAST(N'2018-04-30' AS Date), N'41b55495-e318-4809-9c97-707094a3a94e', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'e19f14b7-bb6d-43be-8224-d517d09d56e9', N'ADELINA', CAST(N'2018-04-30' AS Date), N'4f99b89f-3fe3-4ac5-b402-fc72ded9216e', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'0ba5d6b4-21f0-4fdc-bebb-f032d9bcb359', N'ISRAEL', CAST(N'2018-04-30' AS Date), N'4f99b89f-3fe3-4ac5-b402-fc72ded9216e', 1)

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [FechaIngreso], [IdCarrera], [AñoCurso]) VALUES (N'38454bce-20ed-4b51-97bb-f57334cc978d', N'', CAST(N'2018-04-30' AS Date), N'41b55495-e318-4809-9c97-707094a3a94e', 1)

INSERT [dbo].[Carrera] ([IdCarrera], [Nombre], [Duracion]) VALUES (N'129612e5-1ace-4279-b3f6-35e3b9561522', N'LF', 5)

INSERT [dbo].[Carrera] ([IdCarrera], [Nombre], [Duracion]) VALUES (N'41b55495-e318-4809-9c97-707094a3a94e', N'LMAD', 4)

INSERT [dbo].[Carrera] ([IdCarrera], [Nombre], [Duracion]) VALUES (N'6d8335af-7d25-404d-abb0-c0233aaae880', N'LM', 5)

INSERT [dbo].[Carrera] ([IdCarrera], [Nombre], [Duracion]) VALUES (N'0a229ccd-b2e8-4c0b-b4b6-f14166d274b9', N'LSTI', 4)

INSERT [dbo].[Carrera] ([IdCarrera], [Nombre], [Duracion]) VALUES (N'4f99b89f-3fe3-4ac5-b402-fc72ded9216e', N'LCC', 5)

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'25ac794d-d7d9-4849-b922-02604a858a5c', N'7ec63e85-e998-4440-a039-c58800c34a92', N'f1fa660f-a62c-482f-b15f-768bae3f832a', N'2a06d602-9e79-4ba2-b8bf-666b93f6b15d')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'985a0560-5beb-4abf-a22d-051e644b9055', N'2f6ed13a-2689-4c58-8ece-2c036da0c319', N'7439c8ab-f89b-49ef-a648-7bfb2bc5b1ec', N'74a7da2b-a6a1-4bc4-a509-e8b8446540d0')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'3af1d008-69b3-4cb2-ba0c-0651222c2b0c', N'8de5c49d-ed57-43ee-830f-8438138da095', N'e9b66e04-17f6-492c-83f5-5861d6a49096', N'1b08e96f-a41b-41a6-86be-b9bdba89537b')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'838b8310-093d-46a3-8001-09906e5a9013', N'244f052e-a299-4ed7-9d84-b8c1bfb30b23', N'a5c54df8-2b1c-44f9-9be4-2563ef956dae', N'3283ec91-abc5-4c6e-a3f6-219058a3ebbf')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'ec63fadd-e699-4f2e-8331-0a1a9149ace3', N'9e1bedb3-a9b6-4bcb-a1cf-a0a06adecb4e', N'b65f0941-89f6-4ecb-9961-5a45ecf034bb', N'0e7da0da-6855-4d3d-9340-e0bd7380e2bc')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'a556d1ed-09d2-4a76-a77e-0b2a4f630a0f', N'7a4a69cd-6b71-4ad5-a6d4-bf810b9975f3', N'4d308d5e-0060-4aed-a35c-833ff25e8d74', N'125217ff-0491-4b60-87dd-7e32cbb424c7')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'ba780c37-4f0c-475c-802b-100e9158878f', N'583917d8-879d-4ef0-a78b-42dcae6b5813', N'd5be1a00-d88e-436d-91be-6005fca9bf94', N'2a06d602-9e79-4ba2-b8bf-666b93f6b15d')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'6570232f-32f5-4bd6-9674-12408c446b28', N'a3799348-47b7-4531-b11b-75c776fcfe5f', N'05a1fca9-79ed-4af8-b52c-d0a55e5ba308', N'1e7d607a-99b7-4a7e-b8f6-58f120c6ddf0')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'508a540f-8b4a-4511-840d-1e43bdfe260b', N'517958b7-aa9c-46ee-a868-9293de11d5d1', N'd4d81ab1-7946-45e3-8641-fb7689e0fd0e', N'2a06d602-9e79-4ba2-b8bf-666b93f6b15d')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'3dffb761-b763-4d64-ac86-215ecfbcf1f7', N'6f8b6886-d6ac-40ee-88fa-f581d98f141f', N'4d96175a-3158-4e15-a5e4-823a4ed560b8', N'1e7d607a-99b7-4a7e-b8f6-58f120c6ddf0')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'5f66129f-d5ce-493b-825e-22c0747e6812', N'15192e4c-e8e1-4ffa-adc2-fca08cb08129', N'1e1c23a4-b6ba-4953-8403-1da22b9a5e1e', N'3283ec91-abc5-4c6e-a3f6-219058a3ebbf')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'daf671d2-04a5-4b9b-83de-248c688aa9ad', N'62427b07-f39c-4840-9fe5-ac799199a67b', N'f07c78d0-1d27-40db-b3a7-41531cab1cb7', N'3283ec91-abc5-4c6e-a3f6-219058a3ebbf')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'219b3351-8141-4de9-a73b-39b81f2d9d90', N'967f9130-d230-4767-9417-09e1b7b5ba11', N'2e85a51f-755f-4b80-bdaf-f53058733050', N'125217ff-0491-4b60-87dd-7e32cbb424c7')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'6fa15702-59a7-4ee6-a1fa-3a123779fe77', N'd1220ce7-df2f-4ab0-a3aa-2266a54710ce', N'273f7c99-c5da-4c6c-ae91-cb421004083e', N'2a06d602-9e79-4ba2-b8bf-666b93f6b15d')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'9c95b5ba-870f-4e20-a513-3cc3fb5cbf63', N'7043600c-74d5-4c8f-8579-82983705265a', N'a761ef4d-cef0-452d-bf23-76af67857e23', N'74a7da2b-a6a1-4bc4-a509-e8b8446540d0')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'f4a457e6-9862-410a-afc1-400adf9cf5a6', N'be35bb02-3093-4959-9be1-e529441727b7', N'eb980b4f-b234-4d68-8c50-34fbe85d874a', N'125217ff-0491-4b60-87dd-7e32cbb424c7')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'f89d241f-0196-4481-91f3-40f95199185f', N'3ad56acf-51ae-4aed-a972-af5a4e7f9867', N'1e1c23a4-b6ba-4953-8403-1da22b9a5e1e', N'3283ec91-abc5-4c6e-a3f6-219058a3ebbf')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'92844f73-0513-4db3-8d99-4315d1bc24eb', N'da03d107-b6cb-423d-94a5-8523d2f33382', N'ae2e44d2-30b2-4016-b4fe-59ff57091cb3', N'7c884a6c-8690-49a9-9077-a034d69d96eb')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'2b7d3a62-1a20-4dcb-9146-49b5bf748536', N'ce53dc77-63bb-4648-814e-c881d2ecf557', N'8cad15b1-b0cc-4807-ad13-2a9aa7b5a315', N'0e7da0da-6855-4d3d-9340-e0bd7380e2bc')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'3ebe8281-782f-4ab0-9e88-4a0092b7ac3a', N'4ef227a7-82ed-4b34-9f6c-135a9d7e30e7', N'82c85c3a-11a1-4247-93a5-2ebbae7c4399', N'74a7da2b-a6a1-4bc4-a509-e8b8446540d0')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'f14eb885-85b2-4fca-b3f7-4f16f412ef4c', N'7f545c10-eb6f-484a-9210-40a5996a453a', N'c4ab56dd-3199-4e3b-b503-173b3bdbc390', N'0e7da0da-6855-4d3d-9340-e0bd7380e2bc')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'1b894648-7c27-4fb2-97b6-4fa32205f14c', N'fa1204a2-dd40-4109-b52d-bc392e282286', N'cce8f440-42aa-42ec-87cd-eda69636faf2', N'1e7d607a-99b7-4a7e-b8f6-58f120c6ddf0')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'ab8e9d24-1fa9-4b1a-bac4-505cc2d6039c', N'bb59c3f2-ea4b-4717-ad11-1d2405d2aaa6', N'f2ae2ae0-3355-4101-9255-44b5d611d404', N'4f20115e-a2a6-499b-93b1-7ca6ba4e369d')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'c54c61ca-ddb5-4f37-9e9a-50cdfe203e5d', N'd5a63268-299b-4c8a-a154-74d7133b9e1b', N'd3d990c2-8436-4a24-84a4-2a899128bf90', N'74a7da2b-a6a1-4bc4-a509-e8b8446540d0')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'9f0fd8b3-a5c5-4569-b225-51c9ec852bae', N'a8a99a67-7470-4461-85af-c848091b9fa7', N'bfc74f45-d6cf-4e62-b563-bab60b1b148e', N'7c884a6c-8690-49a9-9077-a034d69d96eb')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'aeea0b0c-a7a4-40d3-b494-5337920c41e1', N'59003671-e16d-4a79-97ca-56ab4a250832', N'1201b512-67aa-4134-934c-6d7315357484', N'2a06d602-9e79-4ba2-b8bf-666b93f6b15d')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'e9926ddd-24c1-4f4f-935a-5b569a3fe0f5', N'f166c381-be76-4b4f-88c9-2edac142daa9', N'a8c12454-f33f-467a-9f7c-1cb3ba1111dd', N'125217ff-0491-4b60-87dd-7e32cbb424c7')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'f45c5305-1587-4ab3-bc64-5c825c5681c8', N'e619d8ec-8d07-4927-8322-1717f3c4620a', N'a49a4432-b0e6-468d-a09e-fa0f9ae21940', N'3283ec91-abc5-4c6e-a3f6-219058a3ebbf')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'0126bbef-cf6c-4dd1-9345-661bdbb0bef3', N'de4aecd8-a032-42d4-aa89-9b886fd2c010', N'5ff5d0f1-9211-47c9-94ac-3e3652260fee', N'74a7da2b-a6a1-4bc4-a509-e8b8446540d0')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'360e0adc-f6a6-46cd-aff4-66a0958ceb7c', N'039926cb-5ce6-4762-bc07-bc88b733863f', N'd5b3741a-a24a-4820-9e12-fdeb5bf38053', N'3283ec91-abc5-4c6e-a3f6-219058a3ebbf')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'ec4bd755-ff76-47ca-8ca7-66c6a18a43be', N'b75cacec-60ec-4b7a-a361-b8b892005340', N'9f7b6b0c-3194-4e72-8628-4090ddbc941e', N'3283ec91-abc5-4c6e-a3f6-219058a3ebbf')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'204fa649-f670-4def-a0c4-68edfdebba8b', N'3879b5c1-74ad-4108-978b-7ed77bf4abdf', N'2cc6bf5b-ccf0-418a-92bc-075870a2f426', N'125217ff-0491-4b60-87dd-7e32cbb424c7')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'59724d79-6193-4a2b-909d-6aa7d7752e58', N'da972e7d-f382-4605-9483-daa8fdf6de1e', N'ce89ded8-20d6-4595-891d-d811c560037b', N'125217ff-0491-4b60-87dd-7e32cbb424c7')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'06b83c96-4f9c-43c3-8827-6fc29a6e9c2c', N'2cbfea00-3d92-415f-a1e6-ceb069a5fdb0', N'95bd8940-3707-4869-83d8-081263ed9b38', N'125217ff-0491-4b60-87dd-7e32cbb424c7')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'f8220480-158c-4754-be16-74141eb202c0', N'75f1dd32-8ea8-426e-8757-375f2c010534', N'4fe8d34a-1960-49a0-a1ef-bdfd34185485', N'125217ff-0491-4b60-87dd-7e32cbb424c7')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'ffdfb7ee-ac7e-4c65-ad7c-75e351eee5fc', N'd2a55f40-7479-4e34-b28e-af35e29129a1', N'7860a865-5d64-4f21-b382-c0e82698255a', N'1b08e96f-a41b-41a6-86be-b9bdba89537b')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'1a991fe0-03b1-4d66-92f3-771b9316e24e', N'1d8897ab-233b-43a3-b7df-dd2648036792', N'f177a289-4653-41bf-825a-cc26f6c4aabc', N'125217ff-0491-4b60-87dd-7e32cbb424c7')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'7411762b-7357-4720-8a3e-77919276e200', N'4b0ee3ec-1efe-400d-93f6-71a507f0756b', N'8f98b958-923e-4916-a31c-87a8ac683d0d', N'4f20115e-a2a6-499b-93b1-7ca6ba4e369d')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'a03361c4-9b85-42c4-baf8-7a352f708ee9', N'5bad260d-55f1-45f0-b277-ced612d4bcfe', N'e5ca8c20-4bf7-45b9-a58a-723e4ea33a7a', N'1b08e96f-a41b-41a6-86be-b9bdba89537b')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'3960e2c0-205d-4941-9ac5-80a2191fc0d5', N'a096bd87-1f8f-40bb-affb-383f05cae090', N'f86feaa3-c0f6-41ca-98a3-555842db3bf1', N'cf9b2e4a-0bfd-497e-b3af-a43693c52ad7')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'06d56461-fe15-4ed4-9753-82ac04f8eaf5', N'1fc071bb-abca-49fc-8b3e-9b561da7eeae', N'198f82f8-b000-437f-b69e-ffbca4448a22', N'3283ec91-abc5-4c6e-a3f6-219058a3ebbf')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'3a363ef2-9aa7-4fc0-9fb5-9213ab6b63d1', N'fcd03e52-00ae-44a1-a4b3-af6f635205ab', N'f07c78d0-1d27-40db-b3a7-41531cab1cb7', N'3283ec91-abc5-4c6e-a3f6-219058a3ebbf')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'b3b620d0-077f-455a-ae1e-96ac9c3435c6', N'29f1f7c2-4d23-487f-91fb-9de869429651', N'd8d183b0-1dc5-4f6c-9ce6-675113d0adf0', N'1b08e96f-a41b-41a6-86be-b9bdba89537b')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'3a97b08c-6ef0-450e-9cbf-96c9109474ba', N'86ad2109-4ac3-4930-aa26-3f2112fd452e', N'c26de620-c504-486c-b337-9cf2dafdc6c8', N'cf9b2e4a-0bfd-497e-b3af-a43693c52ad7')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'a95ef6b1-fc64-45ff-8249-9e9af73ef1ad', N'e820d04e-b340-40b8-a580-a9d944499caf', N'aae1ce45-c606-4ef4-ba28-35a8ca99a913', N'7c884a6c-8690-49a9-9077-a034d69d96eb')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'6e0ee4c4-0a06-42b0-a9e2-a3607993a657', N'6c49589f-a5aa-404c-b669-39adce8381a4', N'f177a289-4653-41bf-825a-cc26f6c4aabc', N'1b08e96f-a41b-41a6-86be-b9bdba89537b')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'1730cf3d-be9b-44f4-ac10-aeef1de5e50f', N'50b0771e-aa3a-4856-8dd7-c6eed565bc8a', N'd4d81ab1-7946-45e3-8641-fb7689e0fd0e', N'1e7d607a-99b7-4a7e-b8f6-58f120c6ddf0')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'9144bacf-897e-43da-9bb2-b102e50a9b61', N'2a3d36ee-66fb-4911-ae70-bf5290a92831', N'0a257850-2bdc-4425-8b37-1de99c35fd2a', N'0e7da0da-6855-4d3d-9340-e0bd7380e2bc')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'9d6d2711-3bc1-4e86-87b4-b4ce003af851', N'da042ba0-06ed-4863-9f0e-216c561c650e', N'8492c40c-3d79-4234-8df6-8f8c02bbe316', N'cf9b2e4a-0bfd-497e-b3af-a43693c52ad7')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'9b318732-829d-4339-a07d-bb6e3178aae4', N'34537ed6-feef-4520-b89c-4a1970bcb9d2', N'7d1ea1f6-1cb2-4401-b337-89aaac59bde8', N'3283ec91-abc5-4c6e-a3f6-219058a3ebbf')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'7ed2fb50-eb0a-44f3-9189-bc07ffb4d612', N'ebb8d4e6-a7ef-435f-9933-236b2dfaa795', N'dbc7e7ea-566b-443c-a6e1-650415a1406c', N'7c884a6c-8690-49a9-9077-a034d69d96eb')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'30ffc21d-757b-47dc-b6f8-bc1211cc8f52', N'f6deb3c1-4f2e-41c5-8141-c6e4ec667c49', N'76ec8a6d-0d07-4322-b292-7e621c83eefc', N'1e7d607a-99b7-4a7e-b8f6-58f120c6ddf0')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'8e64b5b6-2e8c-4b61-b164-c6a0f3912649', N'70bec83b-39db-4d31-9101-b3487167fefb', N'69afb606-ad44-435a-a4e9-50e91405959d', N'4f20115e-a2a6-499b-93b1-7ca6ba4e369d')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'ccaa36bb-d189-4c5b-b34f-cb39354d1c90', N'52f01d4f-5930-4943-9557-dff6fde899bb', N'ca244fc3-d904-4e34-8c41-32d4cbb7c18a', N'cf9b2e4a-0bfd-497e-b3af-a43693c52ad7')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'3e3ea414-bd23-464f-a358-d2f8e065a131', N'02d629bc-ea7f-4959-8dda-761826fcba1d', N'640ab638-5712-4948-9c5c-8bed18e35f1d', N'4f20115e-a2a6-499b-93b1-7ca6ba4e369d')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'3c1d2e91-9f7d-4948-bf27-df7188ff27d1', N'4b0ee3ec-1efe-400d-93f6-71a507f0756b', N'f9b4cd33-33f5-44cc-b75e-2da4594ec426', N'4f20115e-a2a6-499b-93b1-7ca6ba4e369d')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'5bc216cb-9cf8-4665-84d8-e5561b93783d', N'd9d58f30-6268-4fbf-a14a-a4fc9a489234', N'969f6c56-93d8-4064-b236-41fbe4e7c97e', N'0e7da0da-6855-4d3d-9340-e0bd7380e2bc')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'c6470972-3b57-410d-870e-e9c972608ba1', N'78ebf59d-e8cf-403c-990e-1a47bebf0542', N'74f33a26-e4bd-4f7c-a8e1-c3e373a76ffb', N'7c884a6c-8690-49a9-9077-a034d69d96eb')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'd78f3158-dd26-43ea-93cd-edde4448b093', N'8e03374d-867a-40d2-b7b5-8a36e8a1a0a2', N'2840b861-2b5b-4f7f-a84b-4fa81a3c4d53', N'cf9b2e4a-0bfd-497e-b3af-a43693c52ad7')

INSERT [dbo].[Grupo] ([IdGrupo], [IDMaestro], [IdMateria], [IdSalon]) VALUES (N'ec5a6c11-f13a-4ba6-931b-ef8337c9b494', N'ff8f49ec-d79d-4717-acce-5b5302e87fb3', N'c2ab03cf-8610-4dbb-a24b-1ed7a0f2a184', N'125217ff-0491-4b60-87dd-7e32cbb424c7')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'cffa0895-7bfe-4b25-bc3c-02fb233f3c22', N'ec5a6c11-f13a-4ba6-931b-ef8337c9b494')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'08797129-d023-402f-99ea-0fc99abe81b4', N'ec4bd755-ff76-47ca-8ca7-66c6a18a43be')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'e18d19fa-c7d0-4dbe-9ac6-1c6a06e9be0a', N'5bc216cb-9cf8-4665-84d8-e5561b93783d')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'f0caeadd-b596-496d-9d0e-2cbef5e43e3a', N'9c95b5ba-870f-4e20-a513-3cc3fb5cbf63')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'50a72cff-7408-45d4-913f-2e4d907442cf', N'7411762b-7357-4720-8a3e-77919276e200')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'3f15da20-a033-422d-b3d5-57e553efdb9c', N'9d6d2711-3bc1-4e86-87b4-b4ce003af851')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'03c61f00-06f2-43a8-8058-75fb667c2e16', N'9f0fd8b3-a5c5-4569-b225-51c9ec852bae')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'521a7278-da1d-46b2-8ba7-9edfcd5815c8', N'ffdfb7ee-ac7e-4c65-ad7c-75e351eee5fc')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'4025b1b9-c923-4941-802f-a55eecf21d94', N'6fa15702-59a7-4ee6-a1fa-3a123779fe77')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'6bf39127-4be5-450d-9e8c-a7ae3444b6f4', N'6570232f-32f5-4bd6-9674-12408c446b28')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'29796b90-98af-4141-a2b9-bb9c14f10572', N'59724d79-6193-4a2b-909d-6aa7d7752e58')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'1ddccbb0-ba61-48ac-b4b1-ce34fae08c26', N'360e0adc-f6a6-46cd-aff4-66a0958ceb7c')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'df6fc7a0-9df2-4210-9673-0bc96ffde141', N'204fa649-f670-4def-a0c4-68edfdebba8b')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'cdcdbab4-2090-42cd-b5ef-11aa0e0aeadd', N'5f66129f-d5ce-493b-825e-22c0747e6812')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'e3c98c5d-2983-4080-a5bb-11fff1ef5aba', N'9144bacf-897e-43da-9bb2-b102e50a9b61')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'e87589dc-51ab-4b42-8a61-1d8b319406a1', N'c54c61ca-ddb5-4f37-9e9a-50cdfe203e5d')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'78e3eec4-02c4-46e7-a6c6-3d28fc63f301', N'3c1d2e91-9f7d-4948-bf27-df7188ff27d1')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'cef72769-333d-4b36-9654-43f34efada17', N'ccaa36bb-d189-4c5b-b34f-cb39354d1c90')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'f8f1745a-6365-452c-93a9-6dc69737633c', N'a95ef6b1-fc64-45ff-8249-9e9af73ef1ad')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'c5aca110-ed78-4a59-b13a-75d2f6d688af', N'3af1d008-69b3-4cb2-ba0c-0651222c2b0c')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'27d6df4a-cc68-4147-a910-944a658fe83e', N'ba780c37-4f0c-475c-802b-100e9158878f')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'4ac73a71-ea97-4290-922d-b0fb246e0909', N'3dffb761-b763-4d64-ac86-215ecfbcf1f7')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'27b786d3-9de2-4c0e-bec5-cee84ea8d101', N'f8220480-158c-4754-be16-74141eb202c0')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'38454bce-20ed-4b51-97bb-f57334cc978d', N'f45c5305-1587-4ab3-bc64-5c825c5681c8')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'8c4e6bca-5420-4ab7-8e79-05476b0622d0', N'06b83c96-4f9c-43c3-8827-6fc29a6e9c2c')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'5e5f74ea-c4e1-4690-bc12-3cdf8365a25a', N'f89d241f-0196-4481-91f3-40f95199185f')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'ea929996-78ac-48fe-8064-41f7d3f66fcf', N'f14eb885-85b2-4fca-b3f7-4f16f412ef4c')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'457996fe-1a94-4cac-9434-65ff91ee9d0b', N'3ebe8281-782f-4ab0-9e88-4a0092b7ac3a')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'a350d7d7-16ff-401e-8a7c-6b1784cce80c', N'8e64b5b6-2e8c-4b61-b164-c6a0f3912649')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'80c2c7e4-f38f-487d-8d2a-749e5f459225', N'3960e2c0-205d-4941-9ac5-80a2191fc0d5')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'185ef741-e632-439f-87f3-80dd381160b7', N'92844f73-0513-4db3-8d99-4315d1bc24eb')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'5986f67c-57d2-419c-9a39-823bb7e384b4', N'b3b620d0-077f-455a-ae1e-96ac9c3435c6')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'a98bd2f9-ad6c-4a5a-98cb-8d524cc44343', N'aeea0b0c-a7a4-40d3-b494-5337920c41e1')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'9902209c-9e47-4da5-b168-a05a5b6c0b4f', N'30ffc21d-757b-47dc-b6f8-bc1211cc8f52')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'e19f14b7-bb6d-43be-8224-d517d09d56e9', N'a556d1ed-09d2-4a76-a77e-0b2a4f630a0f')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'0ba5d6b4-21f0-4fdc-bebb-f032d9bcb359', N'9b318732-829d-4339-a07d-bb6e3178aae4')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'1cb7276e-f025-4d4b-b9c0-01bb7c19b88c', N'e9926ddd-24c1-4f4f-935a-5b569a3fe0f5')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'648e806e-1335-4ab4-aee7-05d7f12914df', N'838b8310-093d-46a3-8001-09906e5a9013')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'5eb2d475-9f69-4d78-a46c-065940cfe349', N'2b7d3a62-1a20-4dcb-9146-49b5bf748536')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'7bac89c0-9904-4fd5-951b-1cd0ba8803fc', N'0126bbef-cf6c-4dd1-9345-661bdbb0bef3')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'4cf9a87a-2798-4dce-8a5a-322269dec5a2', N'ab8e9d24-1fa9-4b1a-bac4-505cc2d6039c')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'50267f27-81b6-46d2-a5af-6bffdd06e78f', N'd78f3158-dd26-43ea-93cd-edde4448b093')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'92a43b93-e3bf-4dfb-9da1-839fad4472d2', N'7ed2fb50-eb0a-44f3-9189-bc07ffb4d612')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'ce833193-5f7c-4b87-a658-84c8a23f3f2f', N'a03361c4-9b85-42c4-baf8-7a352f708ee9')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'df0c6e2f-4936-4e5b-9884-9a808dd84d2b', N'25ac794d-d7d9-4849-b922-02604a858a5c')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'e04aaf25-cfc1-4125-b504-a0c7dea10e48', N'1b894648-7c27-4fb2-97b6-4fa32205f14c')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'd3538cf7-7879-43f3-9dd4-bf00c05cbd15', N'219b3351-8141-4de9-a73b-39b81f2d9d90')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'aa841dac-27b6-403e-bbef-c779deabb091', N'06d56461-fe15-4ed4-9753-82ac04f8eaf5')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'a7aad102-0adb-43de-a572-04de7d11e997', N'f4a457e6-9862-410a-afc1-400adf9cf5a6')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'e326bec6-922d-4506-9295-09782c0c36d3', N'daf671d2-04a5-4b9b-83de-248c688aa9ad')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'67c880e4-df72-4547-99ea-306521e6c70e', N'ec63fadd-e699-4f2e-8331-0a1a9149ace3')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'58406a94-a4ca-443c-abc3-319598d85427', N'985a0560-5beb-4abf-a22d-051e644b9055')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'5d08d65e-8cf2-4393-917c-49c42f6be488', N'3e3ea414-bd23-464f-a358-d2f8e065a131')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'5355b133-84ee-4b31-bffc-4cc3d90bdca8', N'3a97b08c-6ef0-450e-9cbf-96c9109474ba')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'6a39a815-5aee-4c0c-b60f-6b13586b2bb0', N'c6470972-3b57-410d-870e-e9c972608ba1')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'112cc03f-5a77-42eb-9f88-755e02243f77', N'1a991fe0-03b1-4d66-92f3-771b9316e24e')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'b4824983-6cc6-4977-9eb2-89a8b2129f63', N'508a540f-8b4a-4511-840d-1e43bdfe260b')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'ac02768e-ed54-42fd-817d-96fa3e463b21', N'1730cf3d-be9b-44f4-ac10-aeef1de5e50f')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'5bdf47da-315f-4afc-81f8-9c69f6bcf1c0', N'6e0ee4c4-0a06-42b0-a9e2-a3607993a657')

INSERT [dbo].[GrupoAlumno] ([IdAlumno], [IdGrupo]) VALUES (N'be7408e5-c714-4580-9c8e-a90b07edd16a', N'3a363ef2-9aa7-4fc0-9fb5-9213ab6b63d1')

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'eb9d7798-2893-4ce1-8d0c-062f36da4a89', CAST(N'2018-08-11' AS Date), CAST(N'02:30:00' AS Time), CAST(N'03:00:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'f150a35a-b8bb-41f5-b77e-09447c665dde', CAST(N'2018-08-09' AS Date), CAST(N'03:30:00' AS Time), CAST(N'04:00:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'2b4e80f4-0f1c-4d83-bbfb-0a90a5217c57', CAST(N'2018-08-10' AS Date), CAST(N'10:30:00' AS Time), CAST(N'11:00:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'aeda0a08-6863-42ac-93d3-0fff2be7fbcd', CAST(N'2018-08-06' AS Date), CAST(N'05:30:00' AS Time), CAST(N'06:00:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'fec33332-29c4-423a-baec-10ef8ed48063', CAST(N'2018-08-07' AS Date), CAST(N'02:30:00' AS Time), CAST(N'03:00:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'2e547386-a898-4843-9831-112b3a542934', CAST(N'2018-08-11' AS Date), CAST(N'10:00:00' AS Time), CAST(N'10:30:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'76d94662-99ff-4516-a24c-1185e98ce661', CAST(N'2018-08-08' AS Date), CAST(N'03:30:00' AS Time), CAST(N'04:00:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'e66a9302-f7f3-4e6f-be77-119fedbc2533', CAST(N'2018-08-11' AS Date), CAST(N'01:00:00' AS Time), CAST(N'01:30:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'63b25b45-8d41-4e45-b115-12af6e91b1ac', CAST(N'2018-08-10' AS Date), CAST(N'04:00:00' AS Time), CAST(N'04:30:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'e5318f4f-721f-4083-a406-147b89f41fd2', CAST(N'2018-08-09' AS Date), CAST(N'07:00:00' AS Time), CAST(N'07:30:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'c55db855-3f12-4474-a23d-19dc03365cf7', CAST(N'2018-08-10' AS Date), CAST(N'08:30:00' AS Time), CAST(N'09:00:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'6363688c-3007-4054-bb45-1a667e9c55c0', CAST(N'2018-08-07' AS Date), CAST(N'01:30:00' AS Time), CAST(N'02:00:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'661ff74d-0b6e-4864-9792-1c1b9404eae7', CAST(N'2018-08-06' AS Date), CAST(N'06:00:00' AS Time), CAST(N'06:30:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'9bee9d01-bf83-4b07-a81f-1c8114deec90', CAST(N'2018-08-08' AS Date), CAST(N'04:00:00' AS Time), CAST(N'04:30:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'17367cef-84b3-40f1-abfe-1dbd75f4d394', CAST(N'2018-08-09' AS Date), CAST(N'11:30:00' AS Time), CAST(N'12:00:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'53d53767-86c4-463d-8298-1efe1e93db70', CAST(N'2018-08-10' AS Date), CAST(N'03:00:00' AS Time), CAST(N'03:30:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'55928f7e-89b4-4760-b3b8-1fe24cda1bb5', CAST(N'2018-08-09' AS Date), CAST(N'08:00:00' AS Time), CAST(N'08:30:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'221d416f-3042-49a1-95cc-201f7c0b6265', CAST(N'2018-08-11' AS Date), CAST(N'03:00:00' AS Time), CAST(N'03:30:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'd6b99da5-5a52-40d5-85c4-2041444770c7', CAST(N'2018-08-06' AS Date), CAST(N'03:30:00' AS Time), CAST(N'04:00:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'4756acee-b7ab-4ac8-b1a1-2145adcccf02', CAST(N'2018-08-09' AS Date), CAST(N'02:00:00' AS Time), CAST(N'02:30:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'5fcace7d-3dd7-4643-8828-21530baf6171', CAST(N'2018-08-10' AS Date), CAST(N'05:30:00' AS Time), CAST(N'06:00:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'22b24a52-e081-4ec6-bacb-219845d9fede', CAST(N'2018-08-06' AS Date), CAST(N'02:30:00' AS Time), CAST(N'03:00:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'42d7e429-9ae5-4543-95c2-22a0ace496f2', CAST(N'2018-08-10' AS Date), CAST(N'07:30:00' AS Time), CAST(N'08:00:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'6a57d2e0-9f8d-4429-aace-22b1c259b57f', CAST(N'2018-08-08' AS Date), CAST(N'08:30:00' AS Time), CAST(N'09:00:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'693501aa-76c3-4736-8dca-245ce58fec05', CAST(N'2018-08-10' AS Date), CAST(N'05:00:00' AS Time), CAST(N'05:30:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'91ee6d62-9a18-4e9d-ae74-281ed08081a0', CAST(N'2018-08-07' AS Date), CAST(N'10:30:00' AS Time), CAST(N'11:00:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'f0761acf-01fc-42f7-bbf2-28e4e3207279', CAST(N'2018-08-10' AS Date), CAST(N'09:30:00' AS Time), CAST(N'10:00:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'6b986c84-3391-4a36-b6f6-2915df23eda5', CAST(N'2018-08-10' AS Date), CAST(N'07:00:00' AS Time), CAST(N'07:30:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'7d3daf9f-2b9c-488c-aea4-29e01223ce2d', CAST(N'2018-08-06' AS Date), CAST(N'01:30:00' AS Time), CAST(N'02:00:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'3be68158-6cc9-4a04-a81e-29fbed0379bc', CAST(N'2018-08-08' AS Date), CAST(N'05:00:00' AS Time), CAST(N'05:30:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'b97bd25d-ba3e-4e79-b953-2a80c4d2833e', CAST(N'2018-08-11' AS Date), CAST(N'09:30:00' AS Time), CAST(N'10:00:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'e7360df9-351c-4e92-8da0-2b166c9836ab', CAST(N'2018-08-10' AS Date), CAST(N'06:30:00' AS Time), CAST(N'07:00:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'1c4355ce-599d-41b7-b69e-2c88b5cb9470', CAST(N'2018-08-06' AS Date), CAST(N'04:00:00' AS Time), CAST(N'04:30:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'7a73ebed-239c-4d97-8c6f-2d6b951c390b', CAST(N'2018-08-09' AS Date), CAST(N'03:00:00' AS Time), CAST(N'03:30:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'cee6558f-c655-4c51-9f70-2db598622caa', CAST(N'2018-08-10' AS Date), CAST(N'09:00:00' AS Time), CAST(N'09:30:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'9ab4b8e3-e8fe-4271-85ed-2e2d6da40520', CAST(N'2018-08-08' AS Date), CAST(N'11:00:00' AS Time), CAST(N'11:30:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'aef24ec2-8a53-42b6-9b1e-3104ec23f82d', CAST(N'2018-08-08' AS Date), CAST(N'12:30:00' AS Time), CAST(N'01:00:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'1d944979-7f7d-4c52-be3b-317339dfdad7', CAST(N'2018-08-11' AS Date), CAST(N'04:30:00' AS Time), CAST(N'05:00:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'03f74beb-2f67-46ec-8e7d-34c2546c97fe', CAST(N'2018-08-08' AS Date), CAST(N'10:00:00' AS Time), CAST(N'10:30:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'3a8a0469-9c46-442f-9429-36bb6bf2246d', CAST(N'2018-08-10' AS Date), CAST(N'08:30:00' AS Time), CAST(N'09:00:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'0676a12b-10e2-478f-b0c2-38b77c46db75', CAST(N'2018-08-08' AS Date), CAST(N'04:30:00' AS Time), CAST(N'05:00:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'dc91a548-abd1-4fd9-8e4a-3c2cd8a2602a', CAST(N'2018-08-11' AS Date), CAST(N'08:30:00' AS Time), CAST(N'09:00:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'7ad6bf3a-2092-4f9c-b058-3cb04c3d8dea', CAST(N'2018-08-07' AS Date), CAST(N'03:30:00' AS Time), CAST(N'04:00:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'c74c2b80-5400-4d30-a0ca-3d7c98de53de', CAST(N'2018-08-07' AS Date), CAST(N'05:30:00' AS Time), CAST(N'06:00:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'862c48fa-0964-442b-a93c-3f9df7b47ae6', CAST(N'2018-08-06' AS Date), CAST(N'09:30:00' AS Time), CAST(N'10:00:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'87cd8cf6-d852-45ef-b4ca-41a971fdfbe1', CAST(N'2018-08-09' AS Date), CAST(N'04:00:00' AS Time), CAST(N'04:30:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'cb207598-686e-4abe-bf75-457f9c5691ce', CAST(N'2018-08-07' AS Date), CAST(N'11:30:00' AS Time), CAST(N'12:00:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'c9335c66-07db-4f6a-8bb9-4bc82a43600a', CAST(N'2018-08-11' AS Date), CAST(N'09:30:00' AS Time), CAST(N'10:00:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'c70c9aaf-613c-4014-946e-4d92dc291104', CAST(N'2018-08-08' AS Date), CAST(N'07:30:00' AS Time), CAST(N'08:00:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'f09e82bf-a7a9-4371-9eb2-4d9e89af6eb2', CAST(N'2018-08-06' AS Date), CAST(N'01:00:00' AS Time), CAST(N'01:30:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'591fdd3b-1338-4034-9181-4e58e4d9b892', CAST(N'2018-08-08' AS Date), CAST(N'08:30:00' AS Time), CAST(N'09:00:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'cf11dcef-10d8-4aae-9f7c-4fb816806e4d', CAST(N'2018-08-11' AS Date), CAST(N'07:30:00' AS Time), CAST(N'08:00:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'78effe8b-9f58-4d19-9fd5-5299f40ea381', CAST(N'2018-08-11' AS Date), CAST(N'07:00:00' AS Time), CAST(N'07:30:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'0ce7ee31-f5c9-4b58-ab33-550593c40acf', CAST(N'2018-08-08' AS Date), CAST(N'10:30:00' AS Time), CAST(N'11:00:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'495a12f8-b00f-4f09-ac6f-56cd904f6b9a', CAST(N'2018-08-09' AS Date), CAST(N'07:30:00' AS Time), CAST(N'08:00:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'c88f9f03-97af-4219-a8e7-57293a77e6c6', CAST(N'2018-08-06' AS Date), CAST(N'10:00:00' AS Time), CAST(N'10:30:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'b4339777-bb7f-4d22-9cf6-5842aaa5bf5a', CAST(N'2018-08-11' AS Date), CAST(N'11:30:00' AS Time), CAST(N'12:00:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'62b2edef-c8f0-4718-b4ee-5a3060337414', CAST(N'2018-08-11' AS Date), CAST(N'03:30:00' AS Time), CAST(N'04:00:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'48b20179-c4a3-4d11-b243-5a81c9b90849', CAST(N'2018-08-09' AS Date), CAST(N'08:30:00' AS Time), CAST(N'09:00:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'2d8272c7-0a0b-4131-a027-5ae750102d4f', CAST(N'2018-08-11' AS Date), CAST(N'07:30:00' AS Time), CAST(N'08:00:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'a3d2f8c9-28a4-4ec3-bc2a-5b6ce66aafac', CAST(N'2018-08-06' AS Date), CAST(N'08:30:00' AS Time), CAST(N'09:00:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'474d5aa6-14f4-4098-aaa3-5c4a612da246', CAST(N'2018-08-08' AS Date), CAST(N'12:00:00' AS Time), CAST(N'12:30:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'497a619a-f34f-4f95-ba3b-5d85595e48f9', CAST(N'2018-08-06' AS Date), CAST(N'06:30:00' AS Time), CAST(N'07:00:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'bfe5b94d-05a6-4253-93f8-5d98e937731b', CAST(N'2018-08-11' AS Date), CAST(N'08:30:00' AS Time), CAST(N'09:00:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'7326e607-42f0-4224-9ec2-5d9ada6acc3b', CAST(N'2018-08-08' AS Date), CAST(N'02:30:00' AS Time), CAST(N'03:00:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'e02a32c9-892e-4402-a00a-5e10bbead49a', CAST(N'2018-08-08' AS Date), CAST(N'01:00:00' AS Time), CAST(N'01:30:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'41951a39-7af9-411f-aef8-5e4f99da568a', CAST(N'2018-08-09' AS Date), CAST(N'01:30:00' AS Time), CAST(N'02:00:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'017ba38b-8c06-48b9-8f0d-5ffb163db199', CAST(N'2018-08-10' AS Date), CAST(N'06:00:00' AS Time), CAST(N'06:30:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'4840f399-c58e-4910-b164-60e037877584', CAST(N'2018-08-07' AS Date), CAST(N'04:30:00' AS Time), CAST(N'05:00:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'2621cf8b-9b2c-457a-b7ed-62617dbada50', CAST(N'2018-08-06' AS Date), CAST(N'12:30:00' AS Time), CAST(N'01:00:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'0a8e1325-869d-46b1-8a12-68cd7eee9170', CAST(N'2018-08-09' AS Date), CAST(N'07:00:00' AS Time), CAST(N'07:30:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'df3c525b-0ea8-4e37-ba65-692df220289d', CAST(N'2018-08-10' AS Date), CAST(N'09:30:00' AS Time), CAST(N'10:00:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'd52729b4-8ed1-40ce-a0b1-69ab863826a8', CAST(N'2018-08-08' AS Date), CAST(N'02:00:00' AS Time), CAST(N'02:30:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'fd953240-d1e9-4375-ba9d-6a511f8a9957', CAST(N'2018-08-09' AS Date), CAST(N'08:30:00' AS Time), CAST(N'09:00:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'019e6a11-e485-4fe2-9f1e-6b150222bbed', CAST(N'2018-08-10' AS Date), CAST(N'11:00:00' AS Time), CAST(N'11:30:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'4b8055b4-5f6b-41ad-bf8c-6d538d005682', CAST(N'2018-08-08' AS Date), CAST(N'09:30:00' AS Time), CAST(N'10:00:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'dcc7c69c-b2e0-4363-b4de-70dde3168fe3', CAST(N'2018-08-11' AS Date), CAST(N'12:30:00' AS Time), CAST(N'01:00:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'81795595-d9fa-45f0-8f75-71ddc7f59a6d', CAST(N'2018-08-11' AS Date), CAST(N'09:00:00' AS Time), CAST(N'09:30:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'8b5cbd14-f7b4-4562-9572-72d344fee7a4', CAST(N'2018-08-06' AS Date), CAST(N'08:00:00' AS Time), CAST(N'08:30:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'1ca21e27-4e82-4c63-89dc-73a4f975f878', CAST(N'2018-08-10' AS Date), CAST(N'03:30:00' AS Time), CAST(N'04:00:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'ff4eb7b1-7ad0-4d08-912f-778f9d7be3c8', CAST(N'2018-08-10' AS Date), CAST(N'12:00:00' AS Time), CAST(N'12:30:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'082defb3-aed3-40df-846f-77af97be4923', CAST(N'2018-08-06' AS Date), CAST(N'08:00:00' AS Time), CAST(N'08:30:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'27403b00-ed32-4b53-a4a6-7cce1e26c50f', CAST(N'2018-08-09' AS Date), CAST(N'04:30:00' AS Time), CAST(N'05:00:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'4a89d550-797e-497a-9cae-7e30dbf91351', CAST(N'2018-08-06' AS Date), CAST(N'10:30:00' AS Time), CAST(N'11:00:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'acbdc9a8-74c5-4292-9b6e-7e7146024c84', CAST(N'2018-08-06' AS Date), CAST(N'11:00:00' AS Time), CAST(N'11:30:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'8b18c6f6-6c44-4637-ac6f-81b0cb5bebd9', CAST(N'2018-08-09' AS Date), CAST(N'05:00:00' AS Time), CAST(N'05:30:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'cd18ea37-14fa-4ffd-a9e7-82b326ba78a1', CAST(N'2018-08-07' AS Date), CAST(N'08:30:00' AS Time), CAST(N'09:00:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'29ed48d1-d2d9-4210-9bf5-83d16dc4c76c', CAST(N'2018-08-06' AS Date), CAST(N'02:00:00' AS Time), CAST(N'02:30:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'c7e572c4-a6f2-49a7-af09-85028b93c5c7', CAST(N'2018-08-06' AS Date), CAST(N'07:30:00' AS Time), CAST(N'08:00:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'6ec8f93c-4f82-4530-b425-854f56f48c75', CAST(N'2018-08-10' AS Date), CAST(N'08:00:00' AS Time), CAST(N'08:30:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'ee5d7ab6-c226-49d5-9acc-86096e7c4b46', CAST(N'2018-08-09' AS Date), CAST(N'09:30:00' AS Time), CAST(N'10:00:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'ef066a9d-4c3a-4bab-b6a5-8709fd3a0865', CAST(N'2018-08-09' AS Date), CAST(N'01:00:00' AS Time), CAST(N'01:30:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'd7fbd2fb-2637-47b5-bc6f-87caa86653da', CAST(N'2018-08-09' AS Date), CAST(N'09:00:00' AS Time), CAST(N'09:30:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'937bac05-b3ba-48b2-a1cc-89ac1bc614b9', CAST(N'2018-08-10' AS Date), CAST(N'02:30:00' AS Time), CAST(N'03:00:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'c87a8aa5-1793-4bb1-8ba1-8a2fc71a0abb', CAST(N'2018-08-07' AS Date), CAST(N'02:00:00' AS Time), CAST(N'02:30:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'af4d2ff3-dc5e-48db-81c6-8ce286956467', CAST(N'2018-08-08' AS Date), CAST(N'09:00:00' AS Time), CAST(N'09:30:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'7a95e297-3aed-4d83-a6f9-8f443740289a', CAST(N'2018-08-09' AS Date), CAST(N'12:30:00' AS Time), CAST(N'01:00:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'2d255fd2-27f0-4b5d-9e07-90f2c6811003', CAST(N'2018-08-10' AS Date), CAST(N'02:00:00' AS Time), CAST(N'02:30:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'a1d26227-8f50-48a9-b093-932c5e972fcc', CAST(N'2018-08-09' AS Date), CAST(N'02:30:00' AS Time), CAST(N'03:00:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'8e22bf90-f7dd-4181-9ddd-94c6131e4dfa', CAST(N'2018-08-06' AS Date), CAST(N'07:00:00' AS Time), CAST(N'07:30:00' AS Time), 1)

GO

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'79ad44d5-c49a-4d1b-a6e6-9691a127c773', CAST(N'2018-08-07' AS Date), CAST(N'07:00:00' AS Time), CAST(N'07:30:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'7d959064-a00a-4c22-ba6a-9a3b77ed2a24', CAST(N'2018-08-10' AS Date), CAST(N'09:00:00' AS Time), CAST(N'09:30:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'2d309f3b-847f-42e5-80b3-9ca249c4acb6', CAST(N'2018-08-07' AS Date), CAST(N'12:00:00' AS Time), CAST(N'12:30:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'76ddea71-1e75-4da9-8b60-9f54727ef944', CAST(N'2018-08-07' AS Date), CAST(N'12:30:00' AS Time), CAST(N'01:00:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'c29e8626-9b01-4a6d-96a1-9fb5fe312fd1', CAST(N'2018-08-10' AS Date), CAST(N'07:30:00' AS Time), CAST(N'08:00:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'8ee11c48-ddfe-4436-ba04-a011b92d4003', CAST(N'2018-08-09' AS Date), CAST(N'09:30:00' AS Time), CAST(N'10:00:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'0f3b9b46-c0de-4ddb-9153-a115bcbb05b6', CAST(N'2018-08-11' AS Date), CAST(N'09:00:00' AS Time), CAST(N'09:30:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'5dce68e3-1cb4-4a10-a401-a17190bcd396', CAST(N'2018-08-11' AS Date), CAST(N'06:30:00' AS Time), CAST(N'07:00:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'28c7bb7b-3d80-47b8-ba19-a2f1a30844c7', CAST(N'2018-08-07' AS Date), CAST(N'01:00:00' AS Time), CAST(N'01:30:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'37e4a64f-9544-4f33-bf4a-a47f1e4e657d', CAST(N'2018-08-07' AS Date), CAST(N'03:00:00' AS Time), CAST(N'03:30:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'b1a58742-05c1-4f33-9ad4-a652875c8037', CAST(N'2018-08-06' AS Date), CAST(N'07:30:00' AS Time), CAST(N'08:00:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'f4069395-2f19-4ef1-98cf-a67d54d91c55', CAST(N'2018-08-11' AS Date), CAST(N'12:00:00' AS Time), CAST(N'12:30:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'9b16b9e6-bab7-43f4-8cdc-a686b9e5dbfd', CAST(N'2018-08-10' AS Date), CAST(N'01:30:00' AS Time), CAST(N'02:00:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'ee13ae46-9d2c-4b94-957b-a7916d615188', CAST(N'2018-08-07' AS Date), CAST(N'08:00:00' AS Time), CAST(N'08:30:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'888e4190-80ad-4876-8e1f-a8d24fbf1f48', CAST(N'2018-08-07' AS Date), CAST(N'06:00:00' AS Time), CAST(N'06:30:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'063385e3-19d7-4178-be1d-a9238caeaf07', CAST(N'2018-08-08' AS Date), CAST(N'07:00:00' AS Time), CAST(N'07:30:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'c104bf56-dc51-4654-aee2-adec0ea9dd70', CAST(N'2018-08-07' AS Date), CAST(N'11:00:00' AS Time), CAST(N'11:30:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'7b06f7ec-d947-4e12-b20f-ae236212e377', CAST(N'2018-08-10' AS Date), CAST(N'01:00:00' AS Time), CAST(N'01:30:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'0a87236f-0ab8-46a5-906c-b218ee92c2ef', CAST(N'2018-08-10' AS Date), CAST(N'08:00:00' AS Time), CAST(N'08:30:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'f89c8f16-a395-4697-a968-b439a26687bb', CAST(N'2018-08-07' AS Date), CAST(N'09:30:00' AS Time), CAST(N'10:00:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'73063a14-8001-4cbd-a0d3-b49125981f9e', CAST(N'2018-08-06' AS Date), CAST(N'04:30:00' AS Time), CAST(N'05:00:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'163e72e6-c670-4319-b760-b542d133168e', CAST(N'2018-08-10' AS Date), CAST(N'11:30:00' AS Time), CAST(N'12:00:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'e98f1250-ddc7-45ae-a57d-b7915c9b4d11', CAST(N'2018-08-07' AS Date), CAST(N'08:30:00' AS Time), CAST(N'09:00:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'36b21e61-e426-4499-aa7b-baddf1df604b', CAST(N'2018-08-08' AS Date), CAST(N'08:00:00' AS Time), CAST(N'08:30:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'a4a8eecf-1708-41cf-81bd-bcc533774440', CAST(N'2018-08-09' AS Date), CAST(N'08:00:00' AS Time), CAST(N'08:30:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'3884de6a-80e3-4f2c-9bd3-be202a1586d0', CAST(N'2018-08-06' AS Date), CAST(N'08:30:00' AS Time), CAST(N'09:00:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'94867e25-1a31-4001-9733-be377d5e45e8', CAST(N'2018-08-09' AS Date), CAST(N'06:00:00' AS Time), CAST(N'06:30:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'3d94ecb1-8984-4d82-9599-be3f763fa293', CAST(N'2018-08-07' AS Date), CAST(N'04:00:00' AS Time), CAST(N'04:30:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'faada742-7f07-4d65-9d56-c20f523fbdeb', CAST(N'2018-08-10' AS Date), CAST(N'04:30:00' AS Time), CAST(N'05:00:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'eb1b0e55-117f-4e16-afa3-c27be9925b10', CAST(N'2018-08-11' AS Date), CAST(N'04:00:00' AS Time), CAST(N'04:30:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'ce897143-1abc-4217-8978-c387676a2e72', CAST(N'2018-08-11' AS Date), CAST(N'11:00:00' AS Time), CAST(N'11:30:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'3a68389d-3a11-41c4-a4bd-c3ecbbc66c27', CAST(N'2018-08-07' AS Date), CAST(N'08:00:00' AS Time), CAST(N'08:30:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'e48fa81f-71b8-4baf-acf4-c5923f777615', CAST(N'2018-08-06' AS Date), CAST(N'12:00:00' AS Time), CAST(N'12:30:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'49d2520c-c198-4c64-ac66-c7f95e97f34b', CAST(N'2018-08-08' AS Date), CAST(N'03:00:00' AS Time), CAST(N'03:30:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'9050ff20-b5f5-4136-8aff-c8925370b0b3', CAST(N'2018-08-06' AS Date), CAST(N'09:30:00' AS Time), CAST(N'10:00:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'5431b8a7-0794-4dc4-a53b-ca6339bdc851', CAST(N'2018-08-11' AS Date), CAST(N'05:30:00' AS Time), CAST(N'06:00:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'92a7be63-efa8-4775-b94b-ca946dfd374b', CAST(N'2018-08-06' AS Date), CAST(N'05:00:00' AS Time), CAST(N'05:30:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'2c197140-d01b-4b43-8b53-cb9ebcff8b14', CAST(N'2018-08-11' AS Date), CAST(N'01:30:00' AS Time), CAST(N'02:00:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'cb94d725-edc5-4c29-bd02-cc183b6fe1c2', CAST(N'2018-08-07' AS Date), CAST(N'07:30:00' AS Time), CAST(N'08:00:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'a8cf88dd-bdb9-4e09-9ca6-cd79894c5198', CAST(N'2018-08-09' AS Date), CAST(N'10:00:00' AS Time), CAST(N'10:30:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'acec284f-aa93-483c-9e56-cff4b0c7ca39', CAST(N'2018-08-07' AS Date), CAST(N'07:00:00' AS Time), CAST(N'07:30:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'658c0d7a-f479-4d9d-8885-d0ae8555c0c2', CAST(N'2018-08-09' AS Date), CAST(N'05:30:00' AS Time), CAST(N'06:00:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'c747fbd4-a17b-4f0a-b48b-d13060526186', CAST(N'2018-08-11' AS Date), CAST(N'10:30:00' AS Time), CAST(N'11:00:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'0489310d-bf2b-4bb9-a1a0-d2401aab406c', CAST(N'2018-08-09' AS Date), CAST(N'07:30:00' AS Time), CAST(N'08:00:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'0a1546ae-41b7-4167-b5c7-d44516d758c8', CAST(N'2018-08-09' AS Date), CAST(N'11:00:00' AS Time), CAST(N'11:30:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'65faf5f6-e10f-489e-9206-d5932c2ee041', CAST(N'2018-08-09' AS Date), CAST(N'10:30:00' AS Time), CAST(N'11:00:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'64809423-5e3d-4f36-8064-d5ad78e5450a', CAST(N'2018-08-08' AS Date), CAST(N'06:30:00' AS Time), CAST(N'07:00:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'62fd3c42-1e25-4208-8903-d74d5052eb49', CAST(N'2018-08-11' AS Date), CAST(N'08:00:00' AS Time), CAST(N'08:30:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'd1eb1880-ada6-4e4f-8383-d8e2f6a6b28a', CAST(N'2018-08-11' AS Date), CAST(N'05:00:00' AS Time), CAST(N'05:30:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'2eeb547e-e207-4b1a-a5dc-dc55aa3707f0', CAST(N'2018-08-06' AS Date), CAST(N'11:30:00' AS Time), CAST(N'12:00:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'02d05ef8-710f-4137-8434-e16d99d5e4b5', CAST(N'2018-08-06' AS Date), CAST(N'09:00:00' AS Time), CAST(N'09:30:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'0fc1179a-1ded-4073-92d3-e44b1f997ceb', CAST(N'2018-08-07' AS Date), CAST(N'09:30:00' AS Time), CAST(N'10:00:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'02d2323c-08a5-45b8-9147-e54d9a0c5fca', CAST(N'2018-08-07' AS Date), CAST(N'07:30:00' AS Time), CAST(N'08:00:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'5dedf4cc-d14b-4c96-875e-e6a925fe3b38', CAST(N'2018-08-07' AS Date), CAST(N'09:00:00' AS Time), CAST(N'09:30:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'b3f0cd2d-fa7e-40d9-aa30-e735d2a04769', CAST(N'2018-08-10' AS Date), CAST(N'12:30:00' AS Time), CAST(N'01:00:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'32235f36-1340-4bee-8001-e801118360b4', CAST(N'2018-08-07' AS Date), CAST(N'09:00:00' AS Time), CAST(N'09:30:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'e691f739-b3af-4087-b2d8-eb6b42f2fe4e', CAST(N'2018-08-08' AS Date), CAST(N'05:30:00' AS Time), CAST(N'06:00:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'06ac290e-8974-4cee-8926-ebbd13196e8e', CAST(N'2018-08-07' AS Date), CAST(N'10:00:00' AS Time), CAST(N'10:30:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'eb82eae4-2581-41d7-a630-ebdc33304907', CAST(N'2018-08-10' AS Date), CAST(N'07:00:00' AS Time), CAST(N'07:30:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'952e176d-08bd-495e-ab17-ee715f525105', CAST(N'2018-08-07' AS Date), CAST(N'05:00:00' AS Time), CAST(N'05:30:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'4bf266b8-aa61-4213-9b8c-eef0b31ae062', CAST(N'2018-08-08' AS Date), CAST(N'11:30:00' AS Time), CAST(N'12:00:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'dadea831-9cca-4e3b-be19-ef23ac7b7f3e', CAST(N'2018-08-08' AS Date), CAST(N'01:30:00' AS Time), CAST(N'02:00:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'c3ed18d0-373f-4bd9-b6d6-efc1644e5d64', CAST(N'2018-08-06' AS Date), CAST(N'07:00:00' AS Time), CAST(N'07:30:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'c6dc14a3-632d-43c7-838e-f05ba39a508e', CAST(N'2018-08-08' AS Date), CAST(N'09:00:00' AS Time), CAST(N'09:30:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'9d9f4aa3-1cfd-4fb1-8abe-f0fe91a93448', CAST(N'2018-08-07' AS Date), CAST(N'06:30:00' AS Time), CAST(N'07:00:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'44f0d26d-c32d-4a91-bde4-f131fc0900e7', CAST(N'2018-08-09' AS Date), CAST(N'12:00:00' AS Time), CAST(N'12:30:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'02d5690b-d62c-4aaa-b564-f193ca3dab90', CAST(N'2018-08-08' AS Date), CAST(N'07:00:00' AS Time), CAST(N'07:30:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'b15f6742-fccc-428d-b24b-f1a950dd3548', CAST(N'2018-08-06' AS Date), CAST(N'09:00:00' AS Time), CAST(N'09:30:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'bca1a6dc-1b8a-4248-b2a3-f20a92672540', CAST(N'2018-08-06' AS Date), CAST(N'03:00:00' AS Time), CAST(N'03:30:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'edd39ac5-6dd9-479a-8ab6-f5111f559173', CAST(N'2018-08-08' AS Date), CAST(N'09:30:00' AS Time), CAST(N'10:00:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'd4366aca-4b9c-4d09-922f-f513ea9d6646', CAST(N'2018-08-10' AS Date), CAST(N'10:00:00' AS Time), CAST(N'10:30:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'eeef1e1f-69d0-441d-aed3-f5970766e4da', CAST(N'2018-08-09' AS Date), CAST(N'09:00:00' AS Time), CAST(N'09:30:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'a3ec5d75-66f0-4f33-a41d-f66e82a695f6', CAST(N'2018-08-11' AS Date), CAST(N'08:00:00' AS Time), CAST(N'08:30:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'ad837a74-d4e5-41d6-99fe-f83fd6553a2b', CAST(N'2018-08-08' AS Date), CAST(N'08:00:00' AS Time), CAST(N'08:30:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'f60019d5-563a-4468-aeb8-fb862fce4d08', CAST(N'2018-08-09' AS Date), CAST(N'06:30:00' AS Time), CAST(N'07:00:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'aaac03ec-aa5b-48d6-8b0e-fd65b2039354', CAST(N'2018-08-08' AS Date), CAST(N'07:30:00' AS Time), CAST(N'08:00:00' AS Time), 1)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'1a0121e0-4d01-476f-9f2f-fd6a8cfc5cba', CAST(N'2018-08-11' AS Date), CAST(N'02:00:00' AS Time), CAST(N'02:30:00' AS Time), 2)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'ae336ca5-a497-47a8-9278-fdaff1427678', CAST(N'2018-08-08' AS Date), CAST(N'06:00:00' AS Time), CAST(N'06:30:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'2d1cf97a-2efd-46c7-b5bb-fea63c93e01c', CAST(N'2018-08-11' AS Date), CAST(N'06:00:00' AS Time), CAST(N'06:30:00' AS Time), 3)

INSERT [dbo].[Horario] ([IdHorario], [DIa], [HorarioInicio], [HorarioFin], [Turno]) VALUES (N'db6cb578-8dfe-4c4e-bd0b-ff900ae49a49', CAST(N'2018-08-11' AS Date), CAST(N'07:00:00' AS Time), CAST(N'07:30:00' AS Time), 1)

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'8e22bf90-f7dd-4181-9ddd-94c6131e4dfa', N'ec5a6c11-f13a-4ba6-931b-ef8337c9b494')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'c7e572c4-a6f2-49a7-af09-85028b93c5c7', N'ec4bd755-ff76-47ca-8ca7-66c6a18a43be')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'8b5cbd14-f7b4-4562-9572-72d344fee7a4', N'5bc216cb-9cf8-4665-84d8-e5561b93783d')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'a3d2f8c9-28a4-4ec3-bc2a-5b6ce66aafac', N'9c95b5ba-870f-4e20-a513-3cc3fb5cbf63')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'b15f6742-fccc-428d-b24b-f1a950dd3548', N'7411762b-7357-4720-8a3e-77919276e200')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'9050ff20-b5f5-4136-8aff-c8925370b0b3', N'9d6d2711-3bc1-4e86-87b4-b4ce003af851')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'c88f9f03-97af-4219-a8e7-57293a77e6c6', N'9f0fd8b3-a5c5-4569-b225-51c9ec852bae')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'4a89d550-797e-497a-9cae-7e30dbf91351', N'ffdfb7ee-ac7e-4c65-ad7c-75e351eee5fc')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'acbdc9a8-74c5-4292-9b6e-7e7146024c84', N'6fa15702-59a7-4ee6-a1fa-3a123779fe77')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'2eeb547e-e207-4b1a-a5dc-dc55aa3707f0', N'6570232f-32f5-4bd6-9674-12408c446b28')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'e48fa81f-71b8-4baf-acf4-c5923f777615', N'59724d79-6193-4a2b-909d-6aa7d7752e58')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'2621cf8b-9b2c-457a-b7ed-62617dbada50', N'360e0adc-f6a6-46cd-aff4-66a0958ceb7c')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'f09e82bf-a7a9-4371-9eb2-4d9e89af6eb2', N'204fa649-f670-4def-a0c4-68edfdebba8b')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'7d3daf9f-2b9c-488c-aea4-29e01223ce2d', N'5f66129f-d5ce-493b-825e-22c0747e6812')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'29ed48d1-d2d9-4210-9bf5-83d16dc4c76c', N'9144bacf-897e-43da-9bb2-b102e50a9b61')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'22b24a52-e081-4ec6-bacb-219845d9fede', N'c54c61ca-ddb5-4f37-9e9a-50cdfe203e5d')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'bca1a6dc-1b8a-4248-b2a3-f20a92672540', N'3c1d2e91-9f7d-4948-bf27-df7188ff27d1')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'd6b99da5-5a52-40d5-85c4-2041444770c7', N'ccaa36bb-d189-4c5b-b34f-cb39354d1c90')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'1c4355ce-599d-41b7-b69e-2c88b5cb9470', N'a95ef6b1-fc64-45ff-8249-9e9af73ef1ad')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'73063a14-8001-4cbd-a0d3-b49125981f9e', N'3af1d008-69b3-4cb2-ba0c-0651222c2b0c')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'92a7be63-efa8-4775-b94b-ca946dfd374b', N'ba780c37-4f0c-475c-802b-100e9158878f')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'aeda0a08-6863-42ac-93d3-0fff2be7fbcd', N'3dffb761-b763-4d64-ac86-215ecfbcf1f7')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'661ff74d-0b6e-4864-9792-1c1b9404eae7', N'f8220480-158c-4754-be16-74141eb202c0')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'497a619a-f34f-4f95-ba3b-5d85595e48f9', N'f45c5305-1587-4ab3-bc64-5c825c5681c8')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'c3ed18d0-373f-4bd9-b6d6-efc1644e5d64', N'06b83c96-4f9c-43c3-8827-6fc29a6e9c2c')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'b1a58742-05c1-4f33-9ad4-a652875c8037', N'f89d241f-0196-4481-91f3-40f95199185f')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'082defb3-aed3-40df-846f-77af97be4923', N'f14eb885-85b2-4fca-b3f7-4f16f412ef4c')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'3884de6a-80e3-4f2c-9bd3-be202a1586d0', N'3ebe8281-782f-4ab0-9e88-4a0092b7ac3a')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'02d05ef8-710f-4137-8434-e16d99d5e4b5', N'8e64b5b6-2e8c-4b61-b164-c6a0f3912649')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'862c48fa-0964-442b-a93c-3f9df7b47ae6', N'3960e2c0-205d-4941-9ac5-80a2191fc0d5')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'acec284f-aa93-483c-9e56-cff4b0c7ca39', N'92844f73-0513-4db3-8d99-4315d1bc24eb')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'02d2323c-08a5-45b8-9147-e54d9a0c5fca', N'b3b620d0-077f-455a-ae1e-96ac9c3435c6')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'ee13ae46-9d2c-4b94-957b-a7916d615188', N'aeea0b0c-a7a4-40d3-b494-5337920c41e1')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'cd18ea37-14fa-4ffd-a9e7-82b326ba78a1', N'30ffc21d-757b-47dc-b6f8-bc1211cc8f52')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'32235f36-1340-4bee-8001-e801118360b4', N'a556d1ed-09d2-4a76-a77e-0b2a4f630a0f')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'f89c8f16-a395-4697-a968-b439a26687bb', N'9b318732-829d-4339-a07d-bb6e3178aae4')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'06ac290e-8974-4cee-8926-ebbd13196e8e', N'e9926ddd-24c1-4f4f-935a-5b569a3fe0f5')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'91ee6d62-9a18-4e9d-ae74-281ed08081a0', N'838b8310-093d-46a3-8001-09906e5a9013')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'c104bf56-dc51-4654-aee2-adec0ea9dd70', N'2b7d3a62-1a20-4dcb-9146-49b5bf748536')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'cb207598-686e-4abe-bf75-457f9c5691ce', N'0126bbef-cf6c-4dd1-9345-661bdbb0bef3')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'2d309f3b-847f-42e5-80b3-9ca249c4acb6', N'ab8e9d24-1fa9-4b1a-bac4-505cc2d6039c')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'76ddea71-1e75-4da9-8b60-9f54727ef944', N'd78f3158-dd26-43ea-93cd-edde4448b093')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'28c7bb7b-3d80-47b8-ba19-a2f1a30844c7', N'7ed2fb50-eb0a-44f3-9189-bc07ffb4d612')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'6363688c-3007-4054-bb45-1a667e9c55c0', N'a03361c4-9b85-42c4-baf8-7a352f708ee9')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'c87a8aa5-1793-4bb1-8ba1-8a2fc71a0abb', N'25ac794d-d7d9-4849-b922-02604a858a5c')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'fec33332-29c4-423a-baec-10ef8ed48063', N'1b894648-7c27-4fb2-97b6-4fa32205f14c')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'37e4a64f-9544-4f33-bf4a-a47f1e4e657d', N'219b3351-8141-4de9-a73b-39b81f2d9d90')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'7ad6bf3a-2092-4f9c-b058-3cb04c3d8dea', N'06d56461-fe15-4ed4-9753-82ac04f8eaf5')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'06ac290e-8974-4cee-8926-ebbd13196e8e', N'e9926ddd-24c1-4f4f-935a-5b569a3fe0f5')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'91ee6d62-9a18-4e9d-ae74-281ed08081a0', N'838b8310-093d-46a3-8001-09906e5a9013')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'c104bf56-dc51-4654-aee2-adec0ea9dd70', N'2b7d3a62-1a20-4dcb-9146-49b5bf748536')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'cb207598-686e-4abe-bf75-457f9c5691ce', N'0126bbef-cf6c-4dd1-9345-661bdbb0bef3')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'2d309f3b-847f-42e5-80b3-9ca249c4acb6', N'ab8e9d24-1fa9-4b1a-bac4-505cc2d6039c')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'76ddea71-1e75-4da9-8b60-9f54727ef944', N'd78f3158-dd26-43ea-93cd-edde4448b093')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'28c7bb7b-3d80-47b8-ba19-a2f1a30844c7', N'7ed2fb50-eb0a-44f3-9189-bc07ffb4d612')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'6363688c-3007-4054-bb45-1a667e9c55c0', N'a03361c4-9b85-42c4-baf8-7a352f708ee9')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'c87a8aa5-1793-4bb1-8ba1-8a2fc71a0abb', N'25ac794d-d7d9-4849-b922-02604a858a5c')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'fec33332-29c4-423a-baec-10ef8ed48063', N'1b894648-7c27-4fb2-97b6-4fa32205f14c')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'37e4a64f-9544-4f33-bf4a-a47f1e4e657d', N'219b3351-8141-4de9-a73b-39b81f2d9d90')

INSERT [dbo].[HorarioAsignado] ([IdHorario], [IdGrupo]) VALUES (N'7ad6bf3a-2092-4f9c-b058-3cb04c3d8dea', N'06d56461-fe15-4ed4-9753-82ac04f8eaf5')

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'967f9130-d230-4767-9417-09e1b7b5ba11', N'ULISES', N'2e85a51f-755f-4b80-bdaf-f53058733050', CAST(N'2018-01-23' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'4ef227a7-82ed-4b34-9f6c-135a9d7e30e7', N'YADIRA', N'82c85c3a-11a1-4247-93a5-2ebbae7c4399', CAST(N'2018-01-22' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'e619d8ec-8d07-4927-8322-1717f3c4620a', N'JAFLET', N'a49a4432-b0e6-468d-a09e-fa0f9ae21940', CAST(N'2018-01-21' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'78ebf59d-e8cf-403c-990e-1a47bebf0542', N'MESAC', N'74f33a26-e4bd-4f7c-a8e1-c3e373a76ffb', CAST(N'2018-01-24' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'bb59c3f2-ea4b-4717-ad11-1d2405d2aaa6', N'VICTOR', N'f2ae2ae0-3355-4101-9255-44b5d611d404', CAST(N'2018-01-23' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'da042ba0-06ed-4863-9f0e-216c561c650e', N'DANIEL', N'8492c40c-3d79-4234-8df6-8f8c02bbe316', CAST(N'2018-01-20' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'd1220ce7-df2f-4ab0-a3aa-2266a54710ce', N'LEONARDO', N'273f7c99-c5da-4c6c-ae91-cb421004083e', CAST(N'2018-01-20' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'ebb8d4e6-a7ef-435f-9933-236b2dfaa795', N'RAMSSES', N'dbc7e7ea-566b-443c-a6e1-650415a1406c', CAST(N'2018-01-23' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'2f6ed13a-2689-4c58-8ece-2c036da0c319', N'DAVID', N'7439c8ab-f89b-49ef-a648-7bfb2bc5b1ec', CAST(N'2018-01-24' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'f166c381-be76-4b4f-88c9-2edac142daa9', N'JONH', N'a8c12454-f33f-467a-9f7c-1cb3ba1111dd', CAST(N'2018-01-23' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'75f1dd32-8ea8-426e-8757-375f2c010534', N'KENIA', N'4fe8d34a-1960-49a0-a1ef-bdfd34185485', CAST(N'2018-01-21' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'a096bd87-1f8f-40bb-affb-383f05cae090', N'NORA', N'f86feaa3-c0f6-41ca-98a3-555842db3bf1', CAST(N'2018-01-22' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'6c49589f-a5aa-404c-b669-39adce8381a4', N'TARJA', N'f177a289-4653-41bf-825a-cc26f6c4aabc', CAST(N'2018-01-24' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'86ad2109-4ac3-4930-aa26-3f2112fd452e', N'ABED', N'c26de620-c504-486c-b337-9cf2dafdc6c8', CAST(N'2018-01-24' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'7f545c10-eb6f-484a-9210-40a5996a453a', N'ROGELIO', N'c4ab56dd-3199-4e3b-b503-173b3bdbc390', CAST(N'2018-01-22' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'583917d8-879d-4ef0-a78b-42dcae6b5813', N'CALEB', N'd5be1a00-d88e-436d-91be-6005fca9bf94', CAST(N'2018-01-21' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'34537ed6-feef-4520-b89c-4a1970bcb9d2', N'JAFLET', N'7d1ea1f6-1cb2-4401-b337-89aaac59bde8', CAST(N'2018-01-22' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'59003671-e16d-4a79-97ca-56ab4a250832', N'CALEB', N'1201b512-67aa-4134-934c-6d7315357484', CAST(N'2018-01-22' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'ff8f49ec-d79d-4717-acce-5b5302e87fb3', N'ANTONIA', N'c2ab03cf-8610-4dbb-a24b-1ed7a0f2a184', CAST(N'2018-01-20' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'4b0ee3ec-1efe-400d-93f6-71a507f0756b', N'TOMAS', N'8f98b958-923e-4916-a31c-87a8ac683d0d', CAST(N'2018-01-20' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'd5a63268-299b-4c8a-a154-74d7133b9e1b', N'YADIRA', N'd3d990c2-8436-4a24-84a4-2a899128bf90', CAST(N'2018-01-21' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'a3799348-47b7-4531-b11b-75c776fcfe5f', N'AARON', N'05a1fca9-79ed-4af8-b52c-d0a55e5ba308', CAST(N'2018-01-20' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'02d629bc-ea7f-4959-8dda-761826fcba1d', N'JOSE', N'640ab638-5712-4948-9c5c-8bed18e35f1d', CAST(N'2018-01-24' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'3879b5c1-74ad-4108-978b-7ed77bf4abdf', N'NATALIA', N'2cc6bf5b-ccf0-418a-92bc-075870a2f426', CAST(N'2018-01-21' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'7043600c-74d5-4c8f-8579-82983705265a', N'ANDRES', N'a761ef4d-cef0-452d-bf23-76af67857e23', CAST(N'2018-01-20' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'8de5c49d-ed57-43ee-830f-8438138da095', N'ALFREDO', N'e9b66e04-17f6-492c-83f5-5861d6a49096', CAST(N'2018-01-21' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'da03d107-b6cb-423d-94a5-8523d2f33382', N'MIGUEL', N'ae2e44d2-30b2-4016-b4fe-59ff57091cb3', CAST(N'2018-01-22' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'8e03374d-867a-40d2-b7b5-8a36e8a1a0a2', N'HUGO', N'2840b861-2b5b-4f7f-a84b-4fa81a3c4d53', CAST(N'2018-01-23' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'a52549f2-2de5-440b-9a5e-8ea7bdd09b4e', N'CESAR', N'f9b4cd33-33f5-44cc-b75e-2da4594ec426', CAST(N'2018-01-21' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'517958b7-aa9c-46ee-a868-9293de11d5d1', N'TILL', N'd4d81ab1-7946-45e3-8641-fb7689e0fd0e', CAST(N'2018-01-24' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'1fc071bb-abca-49fc-8b3e-9b561da7eeae', N'SOCORRO', N'198f82f8-b000-437f-b69e-ffbca4448a22', CAST(N'2018-01-23' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'de4aecd8-a032-42d4-aa89-9b886fd2c010', N'ROSA', N'5ff5d0f1-9211-47c9-94ac-3e3652260fee', CAST(N'2018-01-23' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'29f1f7c2-4d23-487f-91fb-9de869429651', N'ALFREDO', N'd8d183b0-1dc5-4f6c-9ce6-675113d0adf0', CAST(N'2018-01-22' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'9e1bedb3-a9b6-4bcb-a1cf-a0a06adecb4e', N'JESUS', N'b65f0941-89f6-4ecb-9961-5a45ecf034bb', CAST(N'2018-01-24' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'd9d58f30-6268-4fbf-a14a-a4fc9a489234', N'KAREN', N'969f6c56-93d8-4064-b236-41fbe4e7c97e', CAST(N'2018-01-20' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'e820d04e-b340-40b8-a580-a9d944499caf', N'MIGUEL', N'aae1ce45-c606-4ef4-ba28-35a8ca99a913', CAST(N'2018-01-21' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'62427b07-f39c-4840-9fe5-ac799199a67b', N'BRIAN', N'f07c78d0-1d27-40db-b3a7-41531cab1cb7', CAST(N'2018-01-24' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'd2a55f40-7479-4e34-b28e-af35e29129a1', N'CARLOS', N'7860a865-5d64-4f21-b382-c0e82698255a', CAST(N'2018-01-20' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'3ad56acf-51ae-4aed-a972-af5a4e7f9867', N'ADAN', N'1e1c23a4-b6ba-4953-8403-1da22b9a5e1e', CAST(N'2018-01-21' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'fcd03e52-00ae-44a1-a4b3-af6f635205ab', N'CLAUDIO', N'f07c78d0-1d27-40db-b3a7-41531cab1cb7', CAST(N'2018-01-24' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'70bec83b-39db-4d31-9101-b3487167fefb', N'CESAR', N'69afb606-ad44-435a-a4e9-50e91405959d', CAST(N'2018-01-22' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'b75cacec-60ec-4b7a-a361-b8b892005340', N'ANA', N'9f7b6b0c-3194-4e72-8628-4090ddbc941e', CAST(N'2018-01-20' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'244f052e-a299-4ed7-9d84-b8c1bfb30b23', N'KALIN', N'a5c54df8-2b1c-44f9-9be4-2563ef956dae', CAST(N'2018-01-23' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'fa1204a2-dd40-4109-b52d-bc392e282286', N'BENITO', N'cce8f440-42aa-42ec-87cd-eda69636faf2', CAST(N'2018-01-23' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'039926cb-5ce6-4762-bc07-bc88b733863f', N'JOSUE', N'd5b3741a-a24a-4820-9e12-fdeb5bf38053', CAST(N'2018-01-20' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'2a3d36ee-66fb-4911-ae70-bf5290a92831', N'ROGELIO', N'0a257850-2bdc-4425-8b37-1de99c35fd2a', CAST(N'2018-01-21' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'7a4a69cd-6b71-4ad5-a6d4-bf810b9975f3', N'KENIA', N'4d308d5e-0060-4aed-a35c-833ff25e8d74', CAST(N'2018-01-22' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'7ec63e85-e998-4440-a039-c58800c34a92', N'AMERICA', N'f1fa660f-a62c-482f-b15f-768bae3f832a', CAST(N'2018-01-23' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'f6deb3c1-4f2e-41c5-8141-c6e4ec667c49', N'PRICILA', N'76ec8a6d-0d07-4322-b292-7e621c83eefc', CAST(N'2018-01-22' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'50b0771e-aa3a-4856-8dd7-c6eed565bc8a', N'VARK', N'd4d81ab1-7946-45e3-8641-fb7689e0fd0e', CAST(N'2018-01-24' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'a8a99a67-7470-4461-85af-c848091b9fa7', N'ALEJANDRO', N'bfc74f45-d6cf-4e62-b563-bab60b1b148e', CAST(N'2018-01-20' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'ce53dc77-63bb-4648-814e-c881d2ecf557', N'GERARDO', N'8cad15b1-b0cc-4807-ad13-2a9aa7b5a315', CAST(N'2018-01-23' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'2cbfea00-3d92-415f-a1e6-ceb069a5fdb0', N'NAT', N'95bd8940-3707-4869-83d8-081263ed9b38', CAST(N'2018-01-22' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'5bad260d-55f1-45f0-b277-ced612d4bcfe', N'VERANI', N'e5ca8c20-4bf7-45b9-a58a-723e4ea33a7a', CAST(N'2018-01-23' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'da972e7d-f382-4605-9483-daa8fdf6de1e', N'MICHELL', N'ce89ded8-20d6-4595-891d-d811c560037b', CAST(N'2018-01-20' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'1d8897ab-233b-43a3-b7df-dd2648036792', N'GOLIAD', N'f177a289-4653-41bf-825a-cc26f6c4aabc', CAST(N'2018-01-24' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'52f01d4f-5930-4943-9557-dff6fde899bb', N'NORA', N'ca244fc3-d904-4e34-8c41-32d4cbb7c18a', CAST(N'2018-01-21' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'be35bb02-3093-4959-9be1-e529441727b7', N'CAROLINA', N'eb980b4f-b234-4d68-8c50-34fbe85d874a', CAST(N'2018-01-24' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'6f8b6886-d6ac-40ee-88fa-f581d98f141f', N'PRICILA', N'4d96175a-3158-4e15-a5e4-823a4ed560b8', CAST(N'2018-01-21' AS Date))

INSERT [dbo].[Maestro] ([IdMaestro], [Nombre], [IdMateria], [InicioContrato]) VALUES (N'15192e4c-e8e1-4ffa-adc2-fca08cb08129', N'ADAN', N'f9331739-2974-41f3-92c5-0f6fc3bd31a3', CAST(N'2018-01-22' AS Date))

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'2cc6bf5b-ccf0-418a-92bc-075870a2f426', N'LENGUAJES ENSAMBLADORES', N'41b55495-e318-4809-9c97-707094a3a94e', N'3283ec91-abc5-4c6e-a3f6-219058a3ebbf')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'95bd8940-3707-4869-83d8-081263ed9b38', N'TELEINFORMATICA', N'4f99b89f-3fe3-4ac5-b402-fc72ded9216e', N'0e7da0da-6855-4d3d-9340-e0bd7380e2bc')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'f9331739-2974-41f3-92c5-0f6fc3bd31a3', N'PRINCIPIOS DE ARQUITECTURA COMPUTACIONAL', N'4f99b89f-3fe3-4ac5-b402-fc72ded9216e', N'0e7da0da-6855-4d3d-9340-e0bd7380e2bc')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'c4ab56dd-3199-4e3b-b503-173b3bdbc390', N'APLICACION DE LAS TECNOLOGIAS DE INFORMACION', N'4f99b89f-3fe3-4ac5-b402-fc72ded9216e', N'0e7da0da-6855-4d3d-9340-e0bd7380e2bc')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'a8c12454-f33f-467a-9f7c-1cb3ba1111dd', N'METODOLOGÍA DE LA PROGRAMACIÓN', N'129612e5-1ace-4279-b3f6-35e3b9561522', N'74a7da2b-a6a1-4bc4-a509-e8b8446540d0')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'1e1c23a4-b6ba-4953-8403-1da22b9a5e1e', N'COMPETENCIA COMUNICATIVA', N'41b55495-e318-4809-9c97-707094a3a94e', N'3283ec91-abc5-4c6e-a3f6-219058a3ebbf')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'0a257850-2bdc-4425-8b37-1de99c35fd2a', N'MECANICA PARA EL DISEÑO DE SIMULADORES', N'41b55495-e318-4809-9c97-707094a3a94e', N'3283ec91-abc5-4c6e-a3f6-219058a3ebbf')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'c2ab03cf-8610-4dbb-a24b-1ed7a0f2a184', N'LAB. PROGRAMACIÓN ORIENTADA A OBJETOS', N'0a229ccd-b2e8-4c0b-b4b6-f14166d274b9', N'125217ff-0491-4b60-87dd-7e32cbb424c7')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'a5c54df8-2b1c-44f9-9be4-2563ef956dae', N'DESARROLLO HUMANO Y COMPETITIVIDAD PROFESIONAL', N'129612e5-1ace-4279-b3f6-35e3b9561522', N'74a7da2b-a6a1-4bc4-a509-e8b8446540d0')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'd3d990c2-8436-4a24-84a4-2a899128bf90', N'APRECIACION A LAS ARTES', N'41b55495-e318-4809-9c97-707094a3a94e', N'3283ec91-abc5-4c6e-a3f6-219058a3ebbf')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'8cad15b1-b0cc-4807-ad13-2a9aa7b5a315', N'GEOMETRÍA ANALÍTICA', N'129612e5-1ace-4279-b3f6-35e3b9561522', N'74a7da2b-a6a1-4bc4-a509-e8b8446540d0')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'f9b4cd33-33f5-44cc-b75e-2da4594ec426', N'EXPRESIONES ARTISTICAS Y SOCIOCULTURALES', N'41b55495-e318-4809-9c97-707094a3a94e', N'3283ec91-abc5-4c6e-a3f6-219058a3ebbf')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'82c85c3a-11a1-4247-93a5-2ebbae7c4399', N'METODOLOGIA DE LA PROGRAMACION', N'4f99b89f-3fe3-4ac5-b402-fc72ded9216e', N'0e7da0da-6855-4d3d-9340-e0bd7380e2bc')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'ca244fc3-d904-4e34-8c41-32d4cbb7c18a', N'DIBUJO ARTISTICO', N'41b55495-e318-4809-9c97-707094a3a94e', N'3283ec91-abc5-4c6e-a3f6-219058a3ebbf')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'eb980b4f-b234-4d68-8c50-34fbe85d874a', N'C. G 1 (COMPETENCIA COMUNICATIVA)', N'6d8335af-7d25-404d-abb0-c0233aaae880', N'4f20115e-a2a6-499b-93b1-7ca6ba4e369d')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'aae1ce45-c606-4ef4-ba28-35a8ca99a913', N'FUNDAMENTOS DE LAS GRAFICAS COMPUTACIONALES', N'41b55495-e318-4809-9c97-707094a3a94e', N'3283ec91-abc5-4c6e-a3f6-219058a3ebbf')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'5ff5d0f1-9211-47c9-94ac-3e3652260fee', N'APLICACIÓN DE LAS TECNOLOGÍAS DE INFORMACIÓN', N'129612e5-1ace-4279-b3f6-35e3b9561522', N'74a7da2b-a6a1-4bc4-a509-e8b8446540d0')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'9f7b6b0c-3194-4e72-8628-4090ddbc941e', N'Fundamentos de seguridad', N'0a229ccd-b2e8-4c0b-b4b6-f14166d274b9', N'125217ff-0491-4b60-87dd-7e32cbb424c7')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'f07c78d0-1d27-40db-b3a7-41531cab1cb7', N'GEOMETRÍA ANALÍTICA', N'6d8335af-7d25-404d-abb0-c0233aaae880', N'4f20115e-a2a6-499b-93b1-7ca6ba4e369d')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'969f6c56-93d8-4064-b236-41fbe4e7c97e', N'TELECOMUNICACIONES I', N'0a229ccd-b2e8-4c0b-b4b6-f14166d274b9', N'125217ff-0491-4b60-87dd-7e32cbb424c7')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'f2ae2ae0-3355-4101-9255-44b5d611d404', N'CÁLCULO DIFERENCIAL', N'129612e5-1ace-4279-b3f6-35e3b9561522', N'74a7da2b-a6a1-4bc4-a509-e8b8446540d0')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'2840b861-2b5b-4f7f-a84b-4fa81a3c4d53', N'MECÁNICA TRASLACIONAL', N'129612e5-1ace-4279-b3f6-35e3b9561522', N'74a7da2b-a6a1-4bc4-a509-e8b8446540d0')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'69afb606-ad44-435a-a4e9-50e91405959d', N'COMPORTAMIENTO ORGANIZACIONAL', N'4f99b89f-3fe3-4ac5-b402-fc72ded9216e', N'0e7da0da-6855-4d3d-9340-e0bd7380e2bc')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'f86feaa3-c0f6-41ca-98a3-555842db3bf1', N'COMPETENCIA COMUNICATIVA	', N'4f99b89f-3fe3-4ac5-b402-fc72ded9216e', N'0e7da0da-6855-4d3d-9340-e0bd7380e2bc')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'e9b66e04-17f6-492c-83f5-5861d6a49096', N'TECNOLOGIAS MULTIMEDIA', N'41b55495-e318-4809-9c97-707094a3a94e', N'3283ec91-abc5-4c6e-a3f6-219058a3ebbf')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'ae2e44d2-30b2-4016-b4fe-59ff57091cb3', N'ADMINISTRACION', N'4f99b89f-3fe3-4ac5-b402-fc72ded9216e', N'0e7da0da-6855-4d3d-9340-e0bd7380e2bc')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'b65f0941-89f6-4ecb-9961-5a45ecf034bb', N'PROGRAMACIÓN', N'6d8335af-7d25-404d-abb0-c0233aaae880', N'4f20115e-a2a6-499b-93b1-7ca6ba4e369d')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'd5be1a00-d88e-436d-91be-6005fca9bf94', N'PROCESAMIENTO DE SEÑALES DIGITALES', N'41b55495-e318-4809-9c97-707094a3a94e', N'3283ec91-abc5-4c6e-a3f6-219058a3ebbf')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'dbc7e7ea-566b-443c-a6e1-650415a1406c', N'INTRODUCCIÓN A LA NANOTECNOLOGÍA', N'129612e5-1ace-4279-b3f6-35e3b9561522', N'74a7da2b-a6a1-4bc4-a509-e8b8446540d0')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'd8d183b0-1dc5-4f6c-9ce6-675113d0adf0', N'PROGRAMACION ORIENTADA A OBJETOS', N'4f99b89f-3fe3-4ac5-b402-fc72ded9216e', N'0e7da0da-6855-4d3d-9340-e0bd7380e2bc')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'1201b512-67aa-4134-934c-6d7315357484', N'MATEMATICAS 2', N'4f99b89f-3fe3-4ac5-b402-fc72ded9216e', N'0e7da0da-6855-4d3d-9340-e0bd7380e2bc')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'e5ca8c20-4bf7-45b9-a58a-723e4ea33a7a', N'EQUIDAD DE GENERO', N'129612e5-1ace-4279-b3f6-35e3b9561522', N'74a7da2b-a6a1-4bc4-a509-e8b8446540d0')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'f1fa660f-a62c-482f-b15f-768bae3f832a', N'DERECHOS HUMANOS', N'129612e5-1ace-4279-b3f6-35e3b9561522', N'74a7da2b-a6a1-4bc4-a509-e8b8446540d0')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'a761ef4d-cef0-452d-bf23-76af67857e23', N'CIRCUITOS DIGITALES', N'0a229ccd-b2e8-4c0b-b4b6-f14166d274b9', N'125217ff-0491-4b60-87dd-7e32cbb424c7')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'7439c8ab-f89b-49ef-a648-7bfb2bc5b1ec', N'GEOMETRÍA MODERNA', N'6d8335af-7d25-404d-abb0-c0233aaae880', N'4f20115e-a2a6-499b-93b1-7ca6ba4e369d')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'76ec8a6d-0d07-4322-b292-7e621c83eefc', N'FISICA', N'4f99b89f-3fe3-4ac5-b402-fc72ded9216e', N'0e7da0da-6855-4d3d-9340-e0bd7380e2bc')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'4d96175a-3158-4e15-a5e4-823a4ed560b8', N'PROGRAMACION II', N'41b55495-e318-4809-9c97-707094a3a94e', N'3283ec91-abc5-4c6e-a3f6-219058a3ebbf')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'4d308d5e-0060-4aed-a35c-833ff25e8d74', N'MATEMATICAS 1', N'4f99b89f-3fe3-4ac5-b402-fc72ded9216e', N'0e7da0da-6855-4d3d-9340-e0bd7380e2bc')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'8f98b958-923e-4916-a31c-87a8ac683d0d', N'DISEÑO ORIENTADO A OBJETOS', N'0a229ccd-b2e8-4c0b-b4b6-f14166d274b9', N'125217ff-0491-4b60-87dd-7e32cbb424c7')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'7d1ea1f6-1cb2-4401-b337-89aaac59bde8', N'PROGRAMACION I', N'4f99b89f-3fe3-4ac5-b402-fc72ded9216e', N'0e7da0da-6855-4d3d-9340-e0bd7380e2bc')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'640ab638-5712-4948-9c5c-8bed18e35f1d', N'CÁLCULO INTEGRAL', N'6d8335af-7d25-404d-abb0-c0233aaae880', N'4f20115e-a2a6-499b-93b1-7ca6ba4e369d')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'8492c40c-3d79-4234-8df6-8f8c02bbe316', N'CIRCUITOS DIGITALES', N'0a229ccd-b2e8-4c0b-b4b6-f14166d274b9', N'125217ff-0491-4b60-87dd-7e32cbb424c7')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'c26de620-c504-486c-b337-9cf2dafdc6c8', N'TÓPICOS DE ÁLGEBRA', N'6d8335af-7d25-404d-abb0-c0233aaae880', N'4f20115e-a2a6-499b-93b1-7ca6ba4e369d')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'bfc74f45-d6cf-4e62-b563-bab60b1b148e', N'PRINCIPIOS DE ARQUITECTURA COMPUTACIONAL', N'0a229ccd-b2e8-4c0b-b4b6-f14166d274b9', N'125217ff-0491-4b60-87dd-7e32cbb424c7')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'4fe8d34a-1960-49a0-a1ef-bdfd34185485', N'APLICACION DE LAS TECNOLOGIAS DE INFORMACION', N'41b55495-e318-4809-9c97-707094a3a94e', N'3283ec91-abc5-4c6e-a3f6-219058a3ebbf')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'7860a865-5d64-4f21-b382-c0e82698255a', N'APLICACION DE LAS TECNOLOGIAS DE INFORMACION', N'0a229ccd-b2e8-4c0b-b4b6-f14166d274b9', N'125217ff-0491-4b60-87dd-7e32cbb424c7')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'74f33a26-e4bd-4f7c-a8e1-c3e373a76ffb', N'ÁLGEBRA', N'6d8335af-7d25-404d-abb0-c0233aaae880', N'4f20115e-a2a6-499b-93b1-7ca6ba4e369d')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'273f7c99-c5da-4c6c-ae91-cb421004083e', N'LABORATORIO DISEÑO ORIENTADO A OBJETOS', N'0a229ccd-b2e8-4c0b-b4b6-f14166d274b9', N'125217ff-0491-4b60-87dd-7e32cbb424c7')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'f177a289-4653-41bf-825a-cc26f6c4aabc', N'LÓGICA Y CONJUNTOS', N'6d8335af-7d25-404d-abb0-c0233aaae880', N'4f20115e-a2a6-499b-93b1-7ca6ba4e369d')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'05a1fca9-79ed-4af8-b52c-d0a55e5ba308', N'CÁLCULO DIFERENCIAL Y GEOMETRÍA ANALÍTICA', N'0a229ccd-b2e8-4c0b-b4b6-f14166d274b9', N'125217ff-0491-4b60-87dd-7e32cbb424c7')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'ce89ded8-20d6-4595-891d-d811c560037b', N'INGENIERÍA SOCIAL', N'0a229ccd-b2e8-4c0b-b4b6-f14166d274b9', N'125217ff-0491-4b60-87dd-7e32cbb424c7')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'cce8f440-42aa-42ec-87cd-eda69636faf2', N'COMPETENCIA COMUNICATIVA', N'129612e5-1ace-4279-b3f6-35e3b9561522', N'74a7da2b-a6a1-4bc4-a509-e8b8446540d0')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'2e85a51f-755f-4b80-bdaf-f53058733050', N'AUTOCUIDADO Y ESTILOS DE VIDA SALUDABLE', N'129612e5-1ace-4279-b3f6-35e3b9561522', N'74a7da2b-a6a1-4bc4-a509-e8b8446540d0')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'a49a4432-b0e6-468d-a09e-fa0f9ae21940', N'PROGRAMACION I', N'41b55495-e318-4809-9c97-707094a3a94e', N'3283ec91-abc5-4c6e-a3f6-219058a3ebbf')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'd4d81ab1-7946-45e3-8641-fb7689e0fd0e', N'CÁLCULO DIFERENCIAL', N'6d8335af-7d25-404d-abb0-c0233aaae880', N'4f20115e-a2a6-499b-93b1-7ca6ba4e369d')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'd5b3741a-a24a-4820-9e12-fdeb5bf38053', N'NORMATIVIDAD Y REGULACIONES', N'0a229ccd-b2e8-4c0b-b4b6-f14166d274b9', N'125217ff-0491-4b60-87dd-7e32cbb424c7')

INSERT [dbo].[Materia] ([IdMateria], [Nombre], [IdCarrera], [IdSalon]) VALUES (N'198f82f8-b000-437f-b69e-ffbca4448a22', N'ÁLGEBRA', N'129612e5-1ace-4279-b3f6-35e3b9561522', N'74a7da2b-a6a1-4bc4-a509-e8b8446540d0')

INSERT [dbo].[Salon] ([IdSalon], [CantidadAlumnos], [Numero]) VALUES (N'3283ec91-abc5-4c6e-a3f6-219058a3ebbf', 12, 2)

INSERT [dbo].[Salon] ([IdSalon], [CantidadAlumnos], [Numero]) VALUES (N'1e7d607a-99b7-4a7e-b8f6-58f120c6ddf0', 12, 10)

INSERT [dbo].[Salon] ([IdSalon], [CantidadAlumnos], [Numero]) VALUES (N'2a06d602-9e79-4ba2-b8bf-666b93f6b15d', 12, 9)

INSERT [dbo].[Salon] ([IdSalon], [CantidadAlumnos], [Numero]) VALUES (N'4f20115e-a2a6-499b-93b1-7ca6ba4e369d', 12, 5)

INSERT [dbo].[Salon] ([IdSalon], [CantidadAlumnos], [Numero]) VALUES (N'125217ff-0491-4b60-87dd-7e32cbb424c7', 12, 1)

INSERT [dbo].[Salon] ([IdSalon], [CantidadAlumnos], [Numero]) VALUES (N'7c884a6c-8690-49a9-9077-a034d69d96eb', 12, 7)

INSERT [dbo].[Salon] ([IdSalon], [CantidadAlumnos], [Numero]) VALUES (N'cf9b2e4a-0bfd-497e-b3af-a43693c52ad7', 12, 6)

INSERT [dbo].[Salon] ([IdSalon], [CantidadAlumnos], [Numero]) VALUES (N'1b08e96f-a41b-41a6-86be-b9bdba89537b', 12, 8)

INSERT [dbo].[Salon] ([IdSalon], [CantidadAlumnos], [Numero]) VALUES (N'0e7da0da-6855-4d3d-9340-e0bd7380e2bc', 12, 3)

INSERT [dbo].[Salon] ([IdSalon], [CantidadAlumnos], [Numero]) VALUES (N'74a7da2b-a6a1-4bc4-a509-e8b8446540d0', 12, 4)

ALTER TABLE [dbo].[Alumno]  WITH CHECK ADD  CONSTRAINT [FK_Alumno_Carrera] FOREIGN KEY([IdCarrera])

REFERENCES [dbo].[Carrera] ([IdCarrera])

GO

ALTER TABLE [dbo].[Alumno] CHECK CONSTRAINT [FK_Alumno_Carrera]

GO

ALTER TABLE [dbo].[Grupo]  WITH CHECK ADD  CONSTRAINT [FK_Grupo_Maestro] FOREIGN KEY([IDMaestro])

REFERENCES [dbo].[Maestro] ([IdMaestro])

GO

ALTER TABLE [dbo].[Grupo] CHECK CONSTRAINT [FK_Grupo_Maestro]

GO

ALTER TABLE [dbo].[Grupo]  WITH CHECK ADD  CONSTRAINT [FK_Grupo_Materia] FOREIGN KEY([IdMateria])

REFERENCES [dbo].[Materia] ([IdMateria])

GO

ALTER TABLE [dbo].[Grupo] CHECK CONSTRAINT [FK_Grupo_Materia]

GO

ALTER TABLE [dbo].[Grupo]  WITH CHECK ADD  CONSTRAINT [FK_Grupo_Salon] FOREIGN KEY([IdSalon])

REFERENCES [dbo].[Salon] ([IdSalon])

GO

ALTER TABLE [dbo].[Grupo] CHECK CONSTRAINT [FK_Grupo_Salon]

GO

ALTER TABLE [dbo].[GrupoAlumno]  WITH CHECK ADD  CONSTRAINT [FK_GrupoAlumno_Alumno] FOREIGN KEY([IdAlumno])

REFERENCES [dbo].[Alumno] ([IdAlumno])

GO

ALTER TABLE [dbo].[GrupoAlumno] CHECK CONSTRAINT [FK_GrupoAlumno_Alumno]

GO

ALTER TABLE [dbo].[GrupoAlumno]  WITH CHECK ADD  CONSTRAINT [FK_GrupoAlumno_Grupo] FOREIGN KEY([IdGrupo])

REFERENCES [dbo].[Grupo] ([IdGrupo])

GO

ALTER TABLE [dbo].[GrupoAlumno] CHECK CONSTRAINT [FK_GrupoAlumno_Grupo]

GO

ALTER TABLE [dbo].[HorarioAsignado]  WITH CHECK ADD  CONSTRAINT [FK_HorarioAsignado_Grupo] FOREIGN KEY([IdGrupo])

REFERENCES [dbo].[Grupo] ([IdGrupo])

GO

ALTER TABLE [dbo].[HorarioAsignado] CHECK CONSTRAINT [FK_HorarioAsignado_Grupo]

GO

ALTER TABLE [dbo].[HorarioAsignado]  WITH CHECK ADD  CONSTRAINT [FK_HorarioAsignado_Horario] FOREIGN KEY([IdHorario])

REFERENCES [dbo].[Horario] ([IdHorario])

GO

ALTER TABLE [dbo].[HorarioAsignado] CHECK CONSTRAINT [FK_HorarioAsignado_Horario]

GO

ALTER TABLE [dbo].[Maestro]  WITH CHECK ADD  CONSTRAINT [FK_Maestro_Materia] FOREIGN KEY([IdMateria])

REFERENCES [dbo].[Materia] ([IdMateria])

GO

ALTER TABLE [dbo].[Maestro] CHECK CONSTRAINT [FK_Maestro_Materia]

GO

ALTER TABLE [dbo].[Materia]  WITH CHECK ADD  CONSTRAINT [FK_Materia_Carrera] FOREIGN KEY([IdCarrera])

REFERENCES [dbo].[Carrera] ([IdCarrera])

GO

ALTER TABLE [dbo].[Materia] CHECK CONSTRAINT [FK_Materia_Carrera]

GO

ALTER TABLE [dbo].[Materia]  WITH CHECK ADD  CONSTRAINT [FK_Materia_Salon] FOREIGN KEY([IdSalon])

REFERENCES [dbo].[Salon] ([IdSalon])

GO

ALTER TABLE [dbo].[Materia] CHECK CONSTRAINT [FK_Materia_Salon]

GO

/****** Object:  StoredProcedure [dbo].[apAlumnoGrupoHorario]    Script Date: 05/05/2018 09:22:57 p. m. ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

-- =============================================

-- Author:		<Author,,Name>

-- Create date: <Create Date,,>

-- Description:	<Description,,>

-- =============================================

CREATE PROCEDURE [dbo].[apAlumnoGrupoHorario]

AS

BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from

	-- interfering with SELECT statements.

	SET NOCOUNT ON;

	select GrupoAlumno.IdAlumno, HorarioAsignado.IdGrupo, HorarioAsignado.IdHorario

from GrupoAlumno

inner join HorarioAsignado on GrupoAlumno.IdGrupo = HorarioAsignado.IdGrupo;

END

GO

/****** Object:  StoredProcedure [dbo].[apConsultasGrupos]    Script Date: 05/05/2018 09:22:57 p. m. ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

-- =============================================

-- Author:		Aaron Pamela

-- Create date: 05-05-2018

-- Description:	<Description,,>

-- =============================================

CREATE PROCEDURE [dbo].[apConsultasGrupos]



AS

BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from

	-- interfering with SELECT statements.

	SET NOCOUNT ON;

	

SELECT Nombre ='tilo'

FROM Maestro

GROUP BY Nombre;



SELECT IdHorario FROM Horario

WHERE Turno=2

GROUP BY IdHorario;



SELECT IdAlumno FROM Alumno

WHERE Nombre='BETY'

GROUP BY IdAlumno;



SELECT IdAlumno FROM Alumno

WHERE Nombre='JOSUE'

GROUP BY IdAlumno;



SELECT Nombre FROM Carrera

WHERE Duracion=4

GROUP BY Nombre;

END

GO

/****** Object:  StoredProcedure [dbo].[aPConsultasTablas]    Script Date: 05/05/2018 09:22:57 p. m. ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

-- =============================================

-- Author:		PAmela, Aaron

-- Create date: 05-05-2018

-- Description:	<Description,,>

-- =============================================

CREATE PROCEDURE [dbo].[aPConsultasTablas]

	-- Add the parameters for the stored procedure here

	

AS

BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from

	-- interfering with SELECT statements.

	SET NOCOUNT ON;

	select * from Alumno

select * from Carrera

select * from Maestro

select * from Materia

select * from Salon

select * from Horario

select * from Grupo

select * from HorarioAsignado

select * from GrupoAlumno

END

GO

/****** Object:  StoredProcedure [dbo].[apDatosAlumno]    Script Date: 05/05/2018 09:22:57 p. m. ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

-- =============================================

-- Author:		Aaron, Pamela

-- Create date: 05-05-2018

-- Description:	<Description,,>

-- =============================================

CREATE PROCEDURE [dbo].[apDatosAlumno]

	-- Add the parameters for the stored procedure here

	

AS

BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from

	-- interfering with SELECT statements.

	SET NOCOUNT ON;



    -- Insert statements for procedure here

	SELECT [IdAlumno], [Nombre],[IdCarrera]from[dbo].[Alumno]

END

GO

/****** Object:  StoredProcedure [dbo].[apFuncionesAgregadas]    Script Date: 05/05/2018 09:22:57 p. m. ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

-- =============================================

-- Author:		PAmela Aaron

-- Create date: 05-05-2018

-- Description:	<Description,,>

-- =============================================

CREATE PROCEDURE [dbo].[apFuncionesAgregadas]

	

AS

BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from

	-- interfering with SELECT statements.

	SET NOCOUNT ON;



   declare @Alumnos int = (select COUNT(*) as Alumnos from Alumno)

declare @Maestros int = (select COUNT(*) as Mastros from Maestro)

declare @HorasxSemana int =(select COUNT(*) as HorasxSemana from Horario)

declare @Materias int = (select count(*) as Materias from Materia)

declare @Salones int = (select count (*) as Salones from Salon)



begin

select sum (@Alumnos + @Maestros ) as REGISTRADOS

end



begin

select sum (@HorasxSemana / @Salones) as HorasDiarias

end



begin 

select sum (@Alumnos /  @Salones) as AlumnosxSalon

end



begin

select sum(@HorasxSemana / @Materias ) as FrecuenciaxSemana

end



begin

select sum(@HorasxSemana / @Maestros) as FrecuenciaxSemanaMaestros

end



END

GO

/****** Object:  StoredProcedure [dbo].[apGrupDiaHoraInicioFin]    Script Date: 05/05/2018 09:22:57 p. m. ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

-- =============================================

-- Author:		<Author,,Name>

-- Create date: <Create Date,,>

-- Description:	<Description,,>

-- =============================================

CREATE PROCEDURE [dbo].[apGrupDiaHoraInicioFin]

AS

BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from

	-- interfering with SELECT statements.

	SET NOCOUNT ON;

	select HorarioAsignado.IdGrupo, Horario.DIa, Horario.HorarioInicio, Horario.HorarioFin, Horario.Turno

from Horario 

inner join HorarioAsignado on Horario.IdHorario = HorarioAsignado.Idhorario;

END

GO

/****** Object:  StoredProcedure [dbo].[apTops]    Script Date: 05/05/2018 09:22:57 p. m. ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

CREATE PROCEDURE [dbo].[apTops]



AS

BEGIN

	

SELECT TOP 3 * FROM Alumno;



SELECT TOP 5 * FROM Grupo;



SELECT TOP 6 * FROM Maestro;



SELECT TOP 5 * FROM Horario;



SELECT TOP 3 * FROM Materia;



END

GO

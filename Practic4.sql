USE [HorarioEscuela]

GO


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


SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

CREATE TABLE [dbo].[GrupoAlumno](

	[IdAlumno] [uniqueidentifier] NULL,

	[IdGrupo] [uniqueidentifier] NULL

) ON [PRIMARY]

GO


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


SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

CREATE TABLE [dbo].[HorarioAsignado](

	[IdHorario] [uniqueidentifier] NULL,

	[IdGrupo] [uniqueidentifier] NULL

) ON [PRIMARY]

GO


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
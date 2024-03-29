IF NOT EXISTS(SELECT name FROM sys.databases
   WHERE name = 'TP_20191C')
   CREATE DATABASE [TP_20191C]
GO	

USE [TP_20191C]

IF OBJECT_ID('dbo.[RespuestaAlumno]', 'U') IS NOT NULL 
  DROP TABLE dbo.[RespuestaAlumno]; 

GO
 IF OBJECT_ID('dbo.[Pregunta]', 'U') IS NOT NULL 
  DROP TABLE dbo.[Pregunta]; 

IF OBJECT_ID('dbo.[Tema]', 'U') IS NOT NULL 
  DROP TABLE dbo.Tema;
  
GO
   
  IF OBJECT_ID('dbo.[ResultadoEvaluacion]', 'U') IS NOT NULL 
  DROP TABLE dbo.ResultadoEvaluacion; 

GO
 
GO
 IF OBJECT_ID('dbo.[Profesor]', 'U') IS NOT NULL 
  DROP TABLE dbo.[Profesor]; 
GO
IF OBJECT_ID('dbo.[Clase]', 'U') IS NOT NULL 
  DROP TABLE dbo.[Clase]; 
GO
IF OBJECT_ID('dbo.[Alumno]', 'U') IS NOT NULL 
  DROP TABLE dbo.[Alumno]; 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumno](
	[IdAlumno] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](400) NOT NULL,
	[Password] [nvarchar](400) NOT NULL,
	[Nombre] [nvarchar](400) NOT NULL,
	[Apellido] [nvarchar](400) NOT NULL,
	[Habilitado] [bit] NOT NULL,
	[PuntosTotales] [bigint] NOT NULL,
	[CantidadRespuestasCorrectas] [int] NOT NULL,
	[CantidadRespuestasRegular] [int] NOT NULL,
	[CantidadRespuestasMal] [int] NOT NULL,
	[CantidadMejorRespuesta] [int] NOT NULL,
	[FechaHoraCreacion] [datetime] NOT NULL,
 CONSTRAINT [PK_Alumno] PRIMARY KEY CLUSTERED 
(
	[IdAlumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Clase]    Script Date: 5/2/2019 1:24:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clase](
	[IdClase] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_Clase] PRIMARY KEY CLUSTERED 
(
	[IdClase] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pregunta]    Script Date: 5/2/2019 1:24:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pregunta](
	[IdPregunta] [int] IDENTITY(1,1) NOT NULL,
	[Nro] [int] NOT NULL,
	[IdClase] [int] NOT NULL,
	[IdTema] [int] NOT NULL,
	[FechaDisponibleDesde] [datetime] NULL,
	[FechaDisponibleHasta] [datetime] NULL,
	[Pregunta] [nvarchar](max) NOT NULL,
	[IdProfesorCreacion] [int] NOT NULL,
	[FechaHoraCreacion] [datetime] NOT NULL,
	[IdProfesorModificacion] [int] NULL,
	[FechaHoraModificacion] [datetime] NULL,
 CONSTRAINT [PK_Pregunta] PRIMARY KEY CLUSTERED 
(
	[IdPregunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Profesor]    Script Date: 5/2/2019 1:24:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profesor](
	[IdProfesor] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](400) NOT NULL,
	[Password] [nvarchar](400) NOT NULL,
	[Nombre] [nvarchar](400) NOT NULL,
	[Apellido] [nvarchar](400) NOT NULL,
	[Habilitado] [bit] NOT NULL,
	[FechaHoraCreacion] [datetime] NOT NULL,
 CONSTRAINT [PK_Profesor] PRIMARY KEY CLUSTERED 
(
	[IdProfesor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RespuestaAlumno]    Script Date: 5/2/2019 1:24:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RespuestaAlumno](
	[IdRespuestaAlumno] [int] IDENTITY(1,1) NOT NULL,
	[IdPregunta] [int] NOT NULL,
	[IdAlumno] [int] NOT NULL,
	[FechaHoraRespuesta] [datetime] NOT NULL,
	[Respuesta] [nvarchar](max) NOT NULL,
	[Orden] [int] NOT NULL,
	[IdProfesorEvaluador] [int] NULL,
	[FechaHoraEvaluacion] [datetime] NULL,
	[IdResultadoEvaluacion] [int] NULL,
	[RespuestasCorrectasHastaElMomento] [int] NULL,
	[Puntos] [bigint] NULL,
	[MejorRespuesta] [bit] NOT NULL,
 CONSTRAINT [PK_RespuestaAlumno] PRIMARY KEY CLUSTERED 
(
	[IdRespuestaAlumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ResultadoEvaluacion]    Script Date: 5/2/2019 1:24:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResultadoEvaluacion](
	[IdResultadoEvaluacion] [int] NOT NULL,
	[Resultado] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ResultadoEvaluacion] PRIMARY KEY CLUSTERED 
(
	[IdResultadoEvaluacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tema]    Script Date: 5/2/2019 1:24:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tema](
	[IdTema] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Tema] PRIMARY KEY CLUSTERED 
(
	[IdTema] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Alumno] ADD  CONSTRAINT [DF_Alumno_Habilitado]  DEFAULT ((1)) FOR [Habilitado]
GO
ALTER TABLE [dbo].[Alumno] ADD  CONSTRAINT [DF_Alumno_Puntos]  DEFAULT ((0)) FOR [PuntosTotales]
GO
ALTER TABLE [dbo].[Alumno] ADD  CONSTRAINT [DF_Alumno_RespuestasCorrectas]  DEFAULT ((0)) FOR [CantidadRespuestasCorrectas]
GO
ALTER TABLE [dbo].[Alumno] ADD  CONSTRAINT [DF_Alumno_CantidadRespuestasRegular]  DEFAULT ((0)) FOR [CantidadRespuestasRegular]
GO
ALTER TABLE [dbo].[Alumno] ADD  CONSTRAINT [DF_Alumno_CantidadRespuestasMal]  DEFAULT ((0)) FOR [CantidadRespuestasMal]
GO
ALTER TABLE [dbo].[Alumno] ADD  CONSTRAINT [DF_Alumno_CantidadMejorRespuesta]  DEFAULT ((0)) FOR [CantidadMejorRespuesta]
GO
ALTER TABLE [dbo].[Alumno] ADD  CONSTRAINT [DF_Alumno_FechaCreacion]  DEFAULT (getdate()) FOR [FechaHoraCreacion]
GO
ALTER TABLE [dbo].[Pregunta] ADD  CONSTRAINT [DF_Pregunta_FechaHoraCreacion]  DEFAULT (getdate()) FOR [FechaHoraCreacion]
GO
ALTER TABLE [dbo].[Profesor] ADD  CONSTRAINT [DF_Profesor_Habilitado]  DEFAULT ((1)) FOR [Habilitado]
GO
ALTER TABLE [dbo].[Profesor] ADD  CONSTRAINT [DF_Profesor_FechaCreacion]  DEFAULT (getdate()) FOR [FechaHoraCreacion]
GO
ALTER TABLE [dbo].[RespuestaAlumno] ADD  CONSTRAINT [DF_RespuestaAlumno_FechaCreacion]  DEFAULT (getdate()) FOR [FechaHoraRespuesta]
GO
ALTER TABLE [dbo].[RespuestaAlumno] ADD  CONSTRAINT [DF_RespuestaAlumno_CantidadRespuestasCorrectasHastaAhora]  DEFAULT ((0)) FOR [RespuestasCorrectasHastaElMomento]
GO
ALTER TABLE [dbo].[RespuestaAlumno] ADD  CONSTRAINT [DF_RespuestaAlumno_MejorRespuesta]  DEFAULT ((0)) FOR [MejorRespuesta]
GO
ALTER TABLE [dbo].[Pregunta]  WITH CHECK ADD  CONSTRAINT [FK_Pregunta_Clase] FOREIGN KEY([IdClase])
REFERENCES [dbo].[Clase] ([IdClase])
GO
ALTER TABLE [dbo].[Pregunta] CHECK CONSTRAINT [FK_Pregunta_Clase]
GO
ALTER TABLE [dbo].[Pregunta]  WITH CHECK ADD  CONSTRAINT [FK_Pregunta_Profesor] FOREIGN KEY([IdProfesorCreacion])
REFERENCES [dbo].[Profesor] ([IdProfesor])
GO
ALTER TABLE [dbo].[Pregunta] CHECK CONSTRAINT [FK_Pregunta_Profesor]
GO
ALTER TABLE [dbo].[Pregunta]  WITH CHECK ADD  CONSTRAINT [FK_Pregunta_Profesor1] FOREIGN KEY([IdProfesorModificacion])
REFERENCES [dbo].[Profesor] ([IdProfesor])
GO
ALTER TABLE [dbo].[Pregunta] CHECK CONSTRAINT [FK_Pregunta_Profesor1]
GO
ALTER TABLE [dbo].[Pregunta]  WITH CHECK ADD  CONSTRAINT [FK_Pregunta_Tema] FOREIGN KEY([IdTema])
REFERENCES [dbo].[Tema] ([IdTema])
GO
ALTER TABLE [dbo].[Pregunta] CHECK CONSTRAINT [FK_Pregunta_Tema]
GO
ALTER TABLE [dbo].[RespuestaAlumno]  WITH CHECK ADD  CONSTRAINT [FK_RespuestaAlumno_Alumno] FOREIGN KEY([IdAlumno])
REFERENCES [dbo].[Alumno] ([IdAlumno])
GO
ALTER TABLE [dbo].[RespuestaAlumno] CHECK CONSTRAINT [FK_RespuestaAlumno_Alumno]
GO
ALTER TABLE [dbo].[RespuestaAlumno]  WITH CHECK ADD  CONSTRAINT [FK_RespuestaAlumno_Pregunta] FOREIGN KEY([IdPregunta])
REFERENCES [dbo].[Pregunta] ([IdPregunta])
GO
ALTER TABLE [dbo].[RespuestaAlumno] CHECK CONSTRAINT [FK_RespuestaAlumno_Pregunta]
GO
ALTER TABLE [dbo].[RespuestaAlumno]  WITH CHECK ADD  CONSTRAINT [FK_RespuestaAlumno_Profesor] FOREIGN KEY([IdProfesorEvaluador])
REFERENCES [dbo].[Profesor] ([IdProfesor])
GO
ALTER TABLE [dbo].[RespuestaAlumno] CHECK CONSTRAINT [FK_RespuestaAlumno_Profesor]
GO
ALTER TABLE [dbo].[RespuestaAlumno]  WITH CHECK ADD  CONSTRAINT [FK_RespuestaAlumno_ResultadoEvaluacion] FOREIGN KEY([IdResultadoEvaluacion])
REFERENCES [dbo].[ResultadoEvaluacion] ([IdResultadoEvaluacion])
GO
ALTER TABLE [dbo].[RespuestaAlumno] CHECK CONSTRAINT [FK_RespuestaAlumno_ResultadoEvaluacion]
GO
USE [master]
GO
ALTER DATABASE [TP_20191C] SET  READ_WRITE 
GO

USE [TP_20191C]
GO
SET IDENTITY_INSERT [dbo].[Alumno] ON 

DELETE [dbo].[RespuestaAlumno] 
GO
DELETE [dbo].[Pregunta] 
GO

DELETE [dbo].[Alumno] 
GO
DELETE [dbo].[Profesor] 
GO

DELETE [dbo].[ResultadoEvaluacion] 
GO

DELETE [dbo].[Clase] 
GO

DELETE [dbo].[Tema] 
GO





GO
INSERT [dbo].[Alumno] ([IdAlumno], [Email], [Password], [Nombre], [Apellido], [Habilitado], [PuntosTotales], [CantidadRespuestasCorrectas], [CantidadRespuestasRegular], [CantidadRespuestasMal], [CantidadMejorRespuesta], [FechaHoraCreacion]) VALUES (1, N'pablo_kuko@yahoo.com.ar', N'test123', N'Lucas', N'Martinez', 1, 5950, 7, 4, 0, 0, CAST(N'20190423 20:09:17.930' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [Email], [Password], [Nombre], [Apellido], [Habilitado], [PuntosTotales], [CantidadRespuestasCorrectas], [CantidadRespuestasRegular], [CantidadRespuestasMal], [CantidadMejorRespuesta], [FechaHoraCreacion]) VALUES (2, N'marianagodoy@test.com', N'test123', N'Mariana', N'Godoy', 1, 8200, 8, 2, 1, 1, CAST(N'20190423 20:47:22.893' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [Email], [Password], [Nombre], [Apellido], [Habilitado], [PuntosTotales], [CantidadRespuestasCorrectas], [CantidadRespuestasRegular], [CantidadRespuestasMal], [CantidadMejorRespuesta], [FechaHoraCreacion]) VALUES (3, N'marianothompson@test.com', N'test123', N'Mariano', N'Thompson', 1, 6500, 6, 5, 0, 1, CAST(N'20190423 20:41:54.867' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [Email], [Password], [Nombre], [Apellido], [Habilitado], [PuntosTotales], [CantidadRespuestasCorrectas], [CantidadRespuestasRegular], [CantidadRespuestasMal], [CantidadMejorRespuesta], [FechaHoraCreacion]) VALUES (4, N'federicorodriguez', N'test123', N'Federico', N'Rodriguez', 1, 5450, 7, 4, 0, 1, CAST(N'20190423 20:46:48.413' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [Email], [Password], [Nombre], [Apellido], [Habilitado], [PuntosTotales], [CantidadRespuestasCorrectas], [CantidadRespuestasRegular], [CantidadRespuestasMal], [CantidadMejorRespuesta], [FechaHoraCreacion]) VALUES (5, N'mariogallardo@test.com', N'test123', N'Mario', N'Gallardo', 1, 5350, 6, 3, 2, 0, CAST(N'20190423 20:45:23.907' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [Email], [Password], [Nombre], [Apellido], [Habilitado], [PuntosTotales], [CantidadRespuestasCorrectas], [CantidadRespuestasRegular], [CantidadRespuestasMal], [CantidadMejorRespuesta], [FechaHoraCreacion]) VALUES (6, N'facundocordero@test.com', N'test123', N'Facundo', N'Cordero', 1, 4950, 6, 3, 2, 1, CAST(N'20190423 20:45:03.590' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [Email], [Password], [Nombre], [Apellido], [Habilitado], [PuntosTotales], [CantidadRespuestasCorrectas], [CantidadRespuestasRegular], [CantidadRespuestasMal], [CantidadMejorRespuesta], [FechaHoraCreacion]) VALUES (7, N'carolinaacevedo@test.com', N'test123', N'Carolina', N'Acevedo', 1, 6100, 6, 5, 0, 1, CAST(N'20190423 20:44:30.787' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [Email], [Password], [Nombre], [Apellido], [Habilitado], [PuntosTotales], [CantidadRespuestasCorrectas], [CantidadRespuestasRegular], [CantidadRespuestasMal], [CantidadMejorRespuesta], [FechaHoraCreacion]) VALUES (8, N'florencialopez@test.com', N'test123', N'Florencia', N'Lopez', 1, 5350, 8, 2, 1, 1, CAST(N'20190423 20:42:28.727' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [Email], [Password], [Nombre], [Apellido], [Habilitado], [PuntosTotales], [CantidadRespuestasCorrectas], [CantidadRespuestasRegular], [CantidadRespuestasMal], [CantidadMejorRespuesta], [FechaHoraCreacion]) VALUES (9, N'lauraperez@test.com', N'test123', N'Laura', N'Perez', 1, 5200, 7, 2, 2, 0, CAST(N'20190423 20:43:48.773' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [Email], [Password], [Nombre], [Apellido], [Habilitado], [PuntosTotales], [CantidadRespuestasCorrectas], [CantidadRespuestasRegular], [CantidadRespuestasMal], [CantidadMejorRespuesta], [FechaHoraCreacion]) VALUES (10, N'jesusflores@test.com', N'test123', N'Jesus', N'Flores', 1, 7300, 6, 5, 0, 2, CAST(N'20190423 20:45:50.940' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [Email], [Password], [Nombre], [Apellido], [Habilitado], [PuntosTotales], [CantidadRespuestasCorrectas], [CantidadRespuestasRegular], [CantidadRespuestasMal], [CantidadMejorRespuesta], [FechaHoraCreacion]) VALUES (11, N'mariadeleon@test.com', N'test123', N'Maria', N'De Leon', 1, 6050, 9, 2, 0, 0, CAST(N'20190423 20:46:20.010' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [Email], [Password], [Nombre], [Apellido], [Habilitado], [PuntosTotales], [CantidadRespuestasCorrectas], [CantidadRespuestasRegular], [CantidadRespuestasMal], [CantidadMejorRespuesta], [FechaHoraCreacion]) VALUES (12, N'rodrigocardona@test.com', N'test123', N'Rodrigo', N'Cardona', 1, 6900, 10, 1, 0, 1, CAST(N'20190423 20:42:54.783' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Alumno] OFF
GO
SET IDENTITY_INSERT [dbo].[Profesor] ON 

GO
INSERT [dbo].[Profesor] ([IdProfesor], [Email], [Password], [Nombre], [Apellido], [Habilitado], [FechaHoraCreacion]) VALUES (1, N'pnsanchez@unlam.edu.ar', N'test123', N'Pablo', N'Sanchez', 1, CAST(N'20190424 02:24:04.237' AS DateTime))
GO
INSERT [dbo].[Profesor] ([IdProfesor], [Email], [Password], [Nombre], [Apellido], [Habilitado], [FechaHoraCreacion]) VALUES (2, N'matiaspaz@test.com', N'test123', N'Matias', N'Paz', 1, CAST(N'20190424 02:24:37.767' AS DateTime))
GO
INSERT [dbo].[Profesor] ([IdProfesor], [Email], [Password], [Nombre], [Apellido], [Habilitado], [FechaHoraCreacion]) VALUES (3, N'marianojuiz@test.com', N'test123', N'Mariano', N'Juiz', 1, CAST(N'20190424 02:24:51.650' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Profesor] OFF
GO
INSERT [dbo].[ResultadoEvaluacion] ([IdResultadoEvaluacion], [Resultado]) VALUES (1, N'Correcta')
GO
INSERT [dbo].[ResultadoEvaluacion] ([IdResultadoEvaluacion], [Resultado]) VALUES (2, N'Regular')
GO
INSERT [dbo].[ResultadoEvaluacion] ([IdResultadoEvaluacion], [Resultado]) VALUES (3, N'Mal')
GO
SET IDENTITY_INSERT [dbo].[Clase] ON 

GO
INSERT [dbo].[Clase] ([IdClase], [Nombre], [Fecha]) VALUES (1, N'Clase 1', CAST(N'20190403 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Clase] ([IdClase], [Nombre], [Fecha]) VALUES (2, N'Clase 2', CAST(N'20190410 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Clase] ([IdClase], [Nombre], [Fecha]) VALUES (3, N'Clase 3', CAST(N'20190417 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Clase] ([IdClase], [Nombre], [Fecha]) VALUES (4, N'Clase 4', CAST(N'20190424 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Clase] ([IdClase], [Nombre], [Fecha]) VALUES (5, N'Clase 5', CAST(N'20190430 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Clase] ([IdClase], [Nombre], [Fecha]) VALUES (6, N'Clase 6', CAST(N'20190508 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Clase] ([IdClase], [Nombre], [Fecha]) VALUES (7, N'Clase 7', CAST(N'20190515 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Clase] ([IdClase], [Nombre], [Fecha]) VALUES (8, N'Clase 8', CAST(N'20190529 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Clase] ([IdClase], [Nombre], [Fecha]) VALUES (9, N'Clase 9', CAST(N'20190605 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Clase] ([IdClase], [Nombre], [Fecha]) VALUES (10, N'Clase 10', CAST(N'20190612 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Clase] ([IdClase], [Nombre], [Fecha]) VALUES (11, N'Clase 11', CAST(N'20190619 00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Clase] OFF
GO
SET IDENTITY_INSERT [dbo].[Tema] ON 

GO
INSERT [dbo].[Tema] ([IdTema], [Nombre]) VALUES (1, N'Intro .Net')
GO
INSERT [dbo].[Tema] ([IdTema], [Nombre]) VALUES (2, N'Intro MVC')
GO
INSERT [dbo].[Tema] ([IdTema], [Nombre]) VALUES (3, N'MVC - Routing')
GO
INSERT [dbo].[Tema] ([IdTema], [Nombre]) VALUES (4, N'MVC - Razor')
GO
INSERT [dbo].[Tema] ([IdTema], [Nombre]) VALUES (5, N'MVC - Bindings')
GO
INSERT [dbo].[Tema] ([IdTema], [Nombre]) VALUES (6, N'Intro a C#')
GO
INSERT [dbo].[Tema] ([IdTema], [Nombre]) VALUES (7, N'Patrones - Principios Solid')
GO
INSERT [dbo].[Tema] ([IdTema], [Nombre]) VALUES (8, N'Validaciones')
GO
INSERT [dbo].[Tema] ([IdTema], [Nombre]) VALUES (9, N'MVC - Layouts / Partials')
GO
INSERT [dbo].[Tema] ([IdTema], [Nombre]) VALUES (10, N'Intro Entity Framework')
GO
INSERT [dbo].[Tema] ([IdTema], [Nombre]) VALUES (11, N'EF - Linq')
GO
INSERT [dbo].[Tema] ([IdTema], [Nombre]) VALUES (12, N'EF - Relaciones 1 a 1, 1 a N y N a N')
GO
INSERT [dbo].[Tema] ([IdTema], [Nombre]) VALUES (13, N'Servicios')
GO
SET IDENTITY_INSERT [dbo].[Tema] OFF
GO
SET IDENTITY_INSERT [dbo].[Pregunta] ON 

GO
INSERT [dbo].[Pregunta] ([IdPregunta], [Nro], [IdClase], [IdTema], [FechaDisponibleDesde], [FechaDisponibleHasta], [Pregunta], [IdProfesorCreacion], [FechaHoraCreacion], [FechaHoraModificacion]) VALUES (1, 1, 1, 1, CAST(N'20190402 00:00:00.000' AS DateTime), CAST(N'20190408 23:59:59.000' AS DateTime), N'¿Que componente posee la función de Garbage Collector?', 1, CAST(N'20190401 02:43:03.777' AS DateTime), NULL)
GO
INSERT [dbo].[Pregunta] ([IdPregunta], [Nro], [IdClase], [IdTema], [FechaDisponibleDesde], [FechaDisponibleHasta], [Pregunta], [IdProfesorCreacion], [FechaHoraCreacion], [FechaHoraModificacion]) VALUES (2, 2, 1, 1, CAST(N'20190408 00:00:00.000' AS DateTime), CAST(N'20190409 19:30:00.000' AS DateTime), N'Si creara su propio lenguaje, para que sea compatible con .Net ¿debe ademas crear su propio compilador?', 1, CAST(N'20190401 02:43:03.777' AS DateTime), NULL)
GO
INSERT [dbo].[Pregunta] ([IdPregunta], [Nro], [IdClase], [IdTema], [FechaDisponibleDesde], [FechaDisponibleHasta], [Pregunta], [IdProfesorCreacion], [FechaHoraCreacion], [FechaHoraModificacion]) VALUES (3, 3, 2, 2, CAST(N'20190410 00:00:00.000' AS DateTime), CAST(N'20190415 23:59:00.000' AS DateTime), N'¿Como restringir acciones solo para los metodos POST?', 1, CAST(N'20190401 02:43:03.777' AS DateTime), NULL)
GO
INSERT [dbo].[Pregunta] ([IdPregunta], [Nro], [IdClase], [IdTema], [FechaDisponibleDesde], [FechaDisponibleHasta], [Pregunta], [IdProfesorCreacion], [FechaHoraCreacion], [FechaHoraModificacion]) VALUES (4, 4, 2, 2, CAST(N'20190410 00:00:00.000' AS DateTime), CAST(N'20190416 23:59:00.000' AS DateTime), N'¿Cuál es la responsabilidad de cada componente de MVC (Models Views Controllers)?', 1, CAST(N'20190401 02:43:03.777' AS DateTime), NULL)
GO
INSERT [dbo].[Pregunta] ([IdPregunta], [Nro], [IdClase], [IdTema], [FechaDisponibleDesde], [FechaDisponibleHasta], [Pregunta], [IdProfesorCreacion], [FechaHoraCreacion], [FechaHoraModificacion]) VALUES (5, 5, 3, 3, CAST(N'20190417 19:00:00.000' AS DateTime), CAST(N'20190424 19:59:00.000' AS DateTime), N'¿Cuál es el routing por defecto que utiliza MVC?', 1, CAST(N'20190401 02:43:03.777' AS DateTime), NULL)
GO
INSERT [dbo].[Pregunta] ([IdPregunta], [Nro], [IdClase], [IdTema], [FechaDisponibleDesde], [FechaDisponibleHasta], [Pregunta], [IdProfesorCreacion], [FechaHoraCreacion], [FechaHoraModificacion]) VALUES (6, 6, 3, 3, CAST(N'20190417 19:00:00.000' AS DateTime), CAST(N'20190424 19:59:00.000' AS DateTime), N'¿Como se puede hacer para que el routing acepte mas de un parametro en la url?', 1, CAST(N'20190401 02:43:03.777' AS DateTime), NULL)
GO
INSERT [dbo].[Pregunta] ([IdPregunta], [Nro], [IdClase], [IdTema], [FechaDisponibleDesde], [FechaDisponibleHasta], [Pregunta], [IdProfesorCreacion], [FechaHoraCreacion], [FechaHoraModificacion]) VALUES (7, 7, 4, 3, CAST(N'20190424 19:00:00.000' AS DateTime), CAST(N'20190424 20:00:00.000' AS DateTime), N'¿Puede colocarse una sentencia IF en una View?', 1, CAST(N'20190401 02:43:03.777' AS DateTime), NULL)
GO
INSERT [dbo].[Pregunta] ([IdPregunta], [Nro], [IdClase], [IdTema], [FechaDisponibleDesde], [FechaDisponibleHasta], [Pregunta], [IdProfesorCreacion], [FechaHoraCreacion], [FechaHoraModificacion]) VALUES (8, 8, 4, 4, CAST(N'20190424 00:00:00.000' AS DateTime), CAST(N'20190430 23:00:00.000' AS DateTime), N'¿Cómo se puede generar un link con una accion de un controller?', 1, CAST(N'20190401 02:43:03.777' AS DateTime), NULL)
GO
INSERT [dbo].[Pregunta] ([IdPregunta], [Nro], [IdClase], [IdTema], [FechaDisponibleDesde], [FechaDisponibleHasta], [Pregunta], [IdProfesorCreacion], [FechaHoraCreacion], [FechaHoraModificacion]) VALUES (9, 9, 4, 4, CAST(N'20190424 00:00:00.000' AS DateTime), CAST(N'20190430 23:00:00.000' AS DateTime), N'¿Cómo se identifica que una vista es tipada?', 1, CAST(N'20190401 02:43:03.777' AS DateTime), NULL)
GO
INSERT [dbo].[Pregunta] ([IdPregunta], [Nro], [IdClase], [IdTema], [FechaDisponibleDesde], [FechaDisponibleHasta], [Pregunta], [IdProfesorCreacion], [FechaHoraCreacion], [FechaHoraModificacion]) VALUES (10, 10, 4, 5, CAST(N'20190424 00:00:00.000' AS DateTime), CAST(N'20190430 23:00:00.000' AS DateTime), N'¿Se debe tener en cuenta los atributos name de los inputs del formulario para Binding Automático? Justifique', 1, CAST(N'20190401 02:43:03.777' AS DateTime), NULL)
GO
INSERT [dbo].[Pregunta] ([IdPregunta], [Nro], [IdClase], [IdTema], [FechaDisponibleDesde], [FechaDisponibleHasta], [Pregunta], [IdProfesorCreacion], [FechaHoraCreacion], [FechaHoraModificacion]) VALUES (11, 11, 5, 6, CAST(N'20190430 19:00:00.000' AS DateTime), CAST(N'20190430 23:00:00.000' AS DateTime), N'¿Para que sirven los namespaces?', 1, CAST(N'20190401 02:43:03.777' AS DateTime), NULL)
GO
INSERT [dbo].[Pregunta] ([IdPregunta], [Nro], [IdClase], [IdTema], [FechaDisponibleDesde], [FechaDisponibleHasta], [Pregunta], [IdProfesorCreacion], [FechaHoraCreacion], [FechaHoraModificacion]) VALUES (12, 12, 5, 7, CAST(N'20190430 19:00:00.000' AS DateTime), CAST(N'20190430 23:00:00.000' AS DateTime), N'¿En que casos cree conveniente aplicar los principios SOLID?', 1, CAST(N'20190401 02:43:03.777' AS DateTime), NULL)
GO
INSERT [dbo].[Pregunta] ([IdPregunta], [Nro], [IdClase], [IdTema], [FechaDisponibleDesde], [FechaDisponibleHasta], [Pregunta], [IdProfesorCreacion], [FechaHoraCreacion], [FechaHoraModificacion]) VALUES (13, 13, 6, 7, CAST(N'20190508 19:00:00.000' AS DateTime), CAST(N'20190514 00:00:00.000' AS DateTime), N'Explique con código o pseudocodigo un caso de la D de los principios SOLID.', 1, CAST(N'20190401 02:43:03.777' AS DateTime), NULL)
GO
INSERT [dbo].[Pregunta] ([IdPregunta], [Nro], [IdClase], [IdTema], [FechaDisponibleDesde], [FechaDisponibleHasta], [Pregunta], [IdProfesorCreacion], [FechaHoraCreacion], [FechaHoraModificacion]) VALUES (14, 14, 6, 8, CAST(N'20190508 19:00:00.000' AS DateTime), CAST(N'20190514 00:00:00.000' AS DateTime), N'¿Qué se debe hacer para validar del lado del servidor?', 1, CAST(N'20190401 02:43:03.777' AS DateTime), NULL)
GO
INSERT [dbo].[Pregunta] ([IdPregunta], [Nro], [IdClase], [IdTema], [FechaDisponibleDesde], [FechaDisponibleHasta], [Pregunta], [IdProfesorCreacion], [FechaHoraCreacion], [FechaHoraModificacion]) VALUES (15, 15, 7, 8, CAST(N'20190516 00:00:00.000' AS DateTime), CAST(N'20190529 00:00:00.000' AS DateTime), N'¿Para qué se valida del lado del cliente?', 1, CAST(N'20190401 02:43:03.777' AS DateTime), NULL)
GO
INSERT [dbo].[Pregunta] ([IdPregunta], [Nro], [IdClase], [IdTema], [FechaDisponibleDesde], [FechaDisponibleHasta], [Pregunta], [IdProfesorCreacion], [FechaHoraCreacion], [FechaHoraModificacion]) VALUES (16, 16, 8, 9, CAST(N'20190529 23:00:00.000' AS DateTime), CAST(N'20190605 00:00:00.000' AS DateTime), N'¿Qué es un Layout?', 1, CAST(N'20190401 02:43:03.777' AS DateTime), NULL)
GO
INSERT [dbo].[Pregunta] ([IdPregunta], [Nro], [IdClase], [IdTema], [FechaDisponibleDesde], [FechaDisponibleHasta], [Pregunta], [IdProfesorCreacion], [FechaHoraCreacion], [FechaHoraModificacion]) VALUES (17, 17, 9, 10, CAST(N'20190604 23:00:00.000' AS DateTime), CAST(N'20190610 23:00:00.000' AS DateTime), N'¿Qué ventajas y desventajas tiene el usar un ORM?', 1, CAST(N'20190401 02:43:03.777' AS DateTime), NULL)
GO
INSERT [dbo].[Pregunta] ([IdPregunta], [Nro], [IdClase], [IdTema], [FechaDisponibleDesde], [FechaDisponibleHasta], [Pregunta], [IdProfesorCreacion], [FechaHoraCreacion], [FechaHoraModificacion]) VALUES (18, 18, 9, 10, CAST(N'20190604 23:00:00.000' AS DateTime), CAST(N'20190610 23:00:00.000' AS DateTime), N'¿Qué motores de base datos soporta EF?', 1, CAST(N'20190430 21:08:57.383' AS DateTime), NULL)
GO
INSERT [dbo].[Pregunta] ([IdPregunta], [Nro], [IdClase], [IdTema], [FechaDisponibleDesde], [FechaDisponibleHasta], [Pregunta], [IdProfesorCreacion], [FechaHoraCreacion], [FechaHoraModificacion]) VALUES (19, 19, 9, 11, CAST(N'20190604 23:00:00.000' AS DateTime), CAST(N'20190610 23:00:00.000' AS DateTime), N'¿Cuales son los pasos de consulta Linq?', 1, CAST(N'20190430 21:12:00.893' AS DateTime), NULL)
GO
INSERT [dbo].[Pregunta] ([IdPregunta], [Nro], [IdClase], [IdTema], [FechaDisponibleDesde], [FechaDisponibleHasta], [Pregunta], [IdProfesorCreacion], [FechaHoraCreacion], [FechaHoraModificacion]) VALUES (21, 20, 10, 12, CAST(N'20190611 23:00:00.000' AS DateTime), CAST(N'20190617 23:00:00.000' AS DateTime), N'¿Como se representan lasrelaciones N a N en las clases gnerda por EF?', 1, CAST(N'20190430 21:13:48.377' AS DateTime), NULL)
GO
INSERT [dbo].[Pregunta] ([IdPregunta], [Nro], [IdClase], [IdTema], [FechaDisponibleDesde], [FechaDisponibleHasta], [Pregunta], [IdProfesorCreacion], [FechaHoraCreacion], [FechaHoraModificacion]) VALUES (22, 21, 11, 13, NULL, NULL, N'Pregunta pendiente sin publicar', 2, CAST(N'20190430 21:14:09.830' AS DateTime), NULL)
GO
INSERT [dbo].[Pregunta] ([IdPregunta], [Nro], [IdClase], [IdTema], [FechaDisponibleDesde], [FechaDisponibleHasta], [Pregunta], [IdProfesorCreacion], [FechaHoraCreacion], [FechaHoraModificacion]) VALUES (23, 22, 11, 13, NULL, NULL, N'Pregunta pendiente sin publicar', 2, CAST(N'20190430 21:14:26.833' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[Pregunta] OFF
GO
SET IDENTITY_INSERT [dbo].[RespuestaAlumno] ON 

GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (1, 1, 10, CAST(N'20190402 00:30:00.000' AS DateTime), N'bla bla Respuesta Correcta MEJOR RESPUESTA!', 1, 1, CAST(N'20190402 00:30:00.000' AS DateTime), 1, 0, 1500, 1)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (2, 1, 7, CAST(N'20190402 01:00:00.000' AS DateTime), N'bla bla Respuesta Regular', 2, 1, CAST(N'20190402 01:00:00.000' AS DateTime), 2, 1, 450, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (3, 1, 11, CAST(N'20190402 01:30:00.000' AS DateTime), N'bla bla Respuesta Regular', 3, 2, CAST(N'20190402 01:30:00.000' AS DateTime), 2, 1, 450, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (4, 1, 2, CAST(N'20190402 02:00:00.000' AS DateTime), N'bla bla Respuesta Regular', 4, 3, CAST(N'20190402 02:00:00.000' AS DateTime), 2, 1, 450, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (5, 1, 6, CAST(N'20190402 02:30:00.000' AS DateTime), N'bla bla Respuesta Correcta', 5, 2, CAST(N'20190402 02:30:00.000' AS DateTime), 1, 1, 900, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (6, 1, 4, CAST(N'20190402 03:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 6, 2, CAST(N'20190402 03:00:00.000' AS DateTime), 1, 2, 800, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (7, 1, 1, CAST(N'20190402 03:30:00.000' AS DateTime), N'bla bla Respuesta Correcta', 7, 3, CAST(N'20190402 03:30:00.000' AS DateTime), 1, 3, 700, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (8, 1, 8, CAST(N'20190402 04:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 8, 2, CAST(N'20190402 04:00:00.000' AS DateTime), 1, 4, 600, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (9, 1, 3, CAST(N'20190402 04:30:00.000' AS DateTime), N'bla bla Respuesta Correcta', 9, 2, CAST(N'20190402 04:30:00.000' AS DateTime), 1, 5, 500, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (10, 1, 9, CAST(N'20190402 05:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 10, 1, CAST(N'20190402 05:00:00.000' AS DateTime), 1, 6, 400, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (11, 1, 12, CAST(N'20190402 05:30:00.000' AS DateTime), N'bla bla Respuesta Correcta', 11, 3, CAST(N'20190402 05:30:00.000' AS DateTime), 1, 7, 300, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (12, 1, 5, CAST(N'20190402 06:00:00.000' AS DateTime), N'bla bla Respuesta Regular', 12, 2, CAST(N'20190402 06:00:00.000' AS DateTime), 2, 8, 100, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (13, 2, 2, CAST(N'20190408 00:30:00.000' AS DateTime), N'bla bla Respuesta Correcta', 1, 1, CAST(N'20190408 00:30:00.000' AS DateTime), 1, 0, 1000, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (14, 2, 3, CAST(N'20190408 01:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 2, 2, CAST(N'20190408 01:00:00.000' AS DateTime), 1, 1, 900, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (15, 2, 7, CAST(N'20190408 01:30:00.000' AS DateTime), N'bla bla Respuesta Correcta', 3, 3, CAST(N'20190408 01:30:00.000' AS DateTime), 1, 2, 800, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (16, 2, 6, CAST(N'20190408 02:00:00.000' AS DateTime), N'bla bla Respuesta Regular', 4, 2, CAST(N'20190408 02:00:00.000' AS DateTime), 2, 3, 350, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (17, 2, 9, CAST(N'20190408 02:30:00.000' AS DateTime), N'bla bla Respuesta Correcta', 5, 3, CAST(N'20190408 02:30:00.000' AS DateTime), 1, 3, 700, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (18, 2, 1, CAST(N'20190408 03:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 6, 1, CAST(N'20190408 03:00:00.000' AS DateTime), 1, 4, 600, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (19, 2, 12, CAST(N'20190408 03:30:00.000' AS DateTime), N'bla bla Respuesta Correcta', 7, 2, CAST(N'20190408 03:30:00.000' AS DateTime), 1, 5, 500, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (20, 2, 10, CAST(N'20190408 04:00:00.000' AS DateTime), N'bla bla Respuesta Correcta MEJOR RESPUESTA!', 8, 1, CAST(N'20190408 04:00:00.000' AS DateTime), 1, 6, 900, 1)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (21, 2, 5, CAST(N'20190408 04:30:00.000' AS DateTime), N'bla bla Respuesta Mal', 9, 3, CAST(N'20190408 04:30:00.000' AS DateTime), 3, 7, 0, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (22, 2, 8, CAST(N'20190408 05:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 10, 1, CAST(N'20190408 05:00:00.000' AS DateTime), 1, 7, 300, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (23, 2, 11, CAST(N'20190408 05:30:00.000' AS DateTime), N'bla bla Respuesta Correcta', 11, 3, CAST(N'20190408 05:30:00.000' AS DateTime), 1, 8, 200, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (24, 2, 4, CAST(N'20190408 06:00:00.000' AS DateTime), N'bla bla Respuesta Regular', 12, 3, CAST(N'20190408 06:00:00.000' AS DateTime), 2, 9, 50, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (25, 3, 12, CAST(N'20190410 00:30:00.000' AS DateTime), N'bla bla Respuesta Correcta', 1, 3, CAST(N'20190410 00:30:00.000' AS DateTime), 1, 0, 1000, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (26, 3, 1, CAST(N'20190410 01:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 2, 3, CAST(N'20190410 01:00:00.000' AS DateTime), 1, 1, 900, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (27, 3, 2, CAST(N'20190410 01:30:00.000' AS DateTime), N'bla bla Respuesta Mal', 3, 1, CAST(N'20190410 01:30:00.000' AS DateTime), 3, 2, 0, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (28, 3, 5, CAST(N'20190410 02:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 4, 3, CAST(N'20190410 02:00:00.000' AS DateTime), 1, 2, 800, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (29, 3, 6, CAST(N'20190410 02:30:00.000' AS DateTime), N'bla bla Respuesta Correcta', 5, 1, CAST(N'20190410 02:30:00.000' AS DateTime), 1, 3, 700, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (30, 3, 10, CAST(N'20190410 03:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 6, 1, CAST(N'20190410 03:00:00.000' AS DateTime), 1, 4, 600, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (31, 3, 3, CAST(N'20190410 03:30:00.000' AS DateTime), N'bla bla Respuesta Regular', 7, 1, CAST(N'20190410 03:30:00.000' AS DateTime), 2, 5, 250, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (32, 3, 11, CAST(N'20190410 04:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 8, 3, CAST(N'20190410 04:00:00.000' AS DateTime), 1, 5, 500, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (33, 3, 7, CAST(N'20190410 04:30:00.000' AS DateTime), N'bla bla Respuesta Regular', 9, 3, CAST(N'20190410 04:30:00.000' AS DateTime), 2, 6, 200, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (34, 3, 9, CAST(N'20190410 05:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 10, 1, CAST(N'20190410 05:00:00.000' AS DateTime), 1, 6, 400, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (35, 3, 8, CAST(N'20190410 05:30:00.000' AS DateTime), N'bla bla Respuesta Correcta', 11, 2, CAST(N'20190410 05:30:00.000' AS DateTime), 1, 7, 300, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (36, 3, 4, CAST(N'20190410 06:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 12, 3, CAST(N'20190410 06:00:00.000' AS DateTime), 1, 8, 200, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (37, 4, 2, CAST(N'20190410 00:30:00.000' AS DateTime), N'bla bla Respuesta Correcta', 1, 3, CAST(N'20190410 00:30:00.000' AS DateTime), 1, 0, 1000, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (38, 4, 11, CAST(N'20190410 01:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 2, 2, CAST(N'20190410 01:00:00.000' AS DateTime), 1, 1, 900, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (39, 4, 12, CAST(N'20190410 01:30:00.000' AS DateTime), N'bla bla Respuesta Correcta', 3, 2, CAST(N'20190410 01:30:00.000' AS DateTime), 1, 2, 800, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (40, 4, 9, CAST(N'20190410 02:00:00.000' AS DateTime), N'bla bla Respuesta Regular', 4, 3, CAST(N'20190410 02:00:00.000' AS DateTime), 2, 3, 350, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (41, 4, 5, CAST(N'20190410 02:30:00.000' AS DateTime), N'bla bla Respuesta Correcta', 5, 1, CAST(N'20190410 02:30:00.000' AS DateTime), 1, 3, 700, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (42, 4, 7, CAST(N'20190410 03:00:00.000' AS DateTime), N'bla bla Respuesta Regular', 6, 1, CAST(N'20190410 03:00:00.000' AS DateTime), 2, 4, 300, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (43, 4, 3, CAST(N'20190410 03:30:00.000' AS DateTime), N'bla bla Respuesta Regular', 7, 1, CAST(N'20190410 03:30:00.000' AS DateTime), 2, 4, 300, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (44, 4, 8, CAST(N'20190410 04:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 8, 3, CAST(N'20190410 04:00:00.000' AS DateTime), 1, 4, 600, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (45, 4, 6, CAST(N'20190410 04:30:00.000' AS DateTime), N'bla bla Respuesta Correcta MEJOR RESPUESTA!', 9, 2, CAST(N'20190410 04:30:00.000' AS DateTime), 1, 5, 1000, 1)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (46, 4, 1, CAST(N'20190410 05:00:00.000' AS DateTime), N'bla bla Respuesta Regular', 10, 1, CAST(N'20190410 05:00:00.000' AS DateTime), 2, 6, 200, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (47, 4, 4, CAST(N'20190410 05:30:00.000' AS DateTime), N'bla bla Respuesta Correcta', 11, 1, CAST(N'20190410 05:30:00.000' AS DateTime), 1, 6, 400, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (48, 4, 10, CAST(N'20190410 06:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 12, 3, CAST(N'20190410 06:00:00.000' AS DateTime), 1, 7, 300, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (49, 5, 11, CAST(N'20190417 19:30:00.000' AS DateTime), N'bla bla Respuesta Correcta', 1, 1, CAST(N'20190417 19:30:00.000' AS DateTime), 1, 0, 1000, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (50, 5, 4, CAST(N'20190417 20:00:00.000' AS DateTime), N'bla bla Respuesta Regular', 2, 1, CAST(N'20190417 20:00:00.000' AS DateTime), 2, 1, 450, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (51, 5, 5, CAST(N'20190417 20:30:00.000' AS DateTime), N'bla bla Respuesta Mal', 3, 3, CAST(N'20190417 20:30:00.000' AS DateTime), 3, 1, 0, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (52, 5, 2, CAST(N'20190417 21:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 4, 1, CAST(N'20190417 21:00:00.000' AS DateTime), 1, 1, 900, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (53, 5, 7, CAST(N'20190417 21:30:00.000' AS DateTime), N'bla bla Respuesta Regular', 5, 1, CAST(N'20190417 21:30:00.000' AS DateTime), 2, 2, 400, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (54, 5, 10, CAST(N'20190417 22:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 6, 1, CAST(N'20190417 22:00:00.000' AS DateTime), 1, 2, 800, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (55, 5, 3, CAST(N'20190417 22:30:00.000' AS DateTime), N'bla bla Respuesta Correcta MEJOR RESPUESTA!', 7, 1, CAST(N'20190417 22:30:00.000' AS DateTime), 1, 3, 1200, 1)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (56, 5, 9, CAST(N'20190417 23:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 8, 1, CAST(N'20190417 23:00:00.000' AS DateTime), 1, 4, 600, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (57, 5, 1, CAST(N'20190417 23:30:00.000' AS DateTime), N'bla bla Respuesta Regular', 9, 2, CAST(N'20190417 23:30:00.000' AS DateTime), 2, 5, 250, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (58, 5, 12, CAST(N'20190418 00:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 10, 3, CAST(N'20190418 00:00:00.000' AS DateTime), 1, 5, 500, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (59, 5, 8, CAST(N'20190418 00:30:00.000' AS DateTime), N'bla bla Respuesta Regular', 11, 3, CAST(N'20190418 00:30:00.000' AS DateTime), 2, 6, 200, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (60, 5, 6, CAST(N'20190418 01:00:00.000' AS DateTime), N'bla bla Respuesta Regular', 12, 3, CAST(N'20190418 01:00:00.000' AS DateTime), 2, 6, 200, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (61, 6, 5, CAST(N'20190417 19:30:00.000' AS DateTime), N'bla bla Respuesta Correcta', 1, 2, CAST(N'20190417 19:30:00.000' AS DateTime), 1, 0, 1000, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (62, 6, 10, CAST(N'20190417 20:00:00.000' AS DateTime), N'bla bla Respuesta Regular', 2, 1, CAST(N'20190417 20:00:00.000' AS DateTime), 2, 1, 450, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (63, 6, 2, CAST(N'20190417 20:30:00.000' AS DateTime), N'bla bla Respuesta Correcta', 3, 3, CAST(N'20190417 20:30:00.000' AS DateTime), 1, 1, 900, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (64, 6, 4, CAST(N'20190417 21:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 4, 1, CAST(N'20190417 21:00:00.000' AS DateTime), 1, 2, 800, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (65, 6, 9, CAST(N'20190417 21:30:00.000' AS DateTime), N'bla bla Respuesta Regular', 5, 3, CAST(N'20190417 21:30:00.000' AS DateTime), 2, 3, 350, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (66, 6, 11, CAST(N'20190417 22:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 6, 1, CAST(N'20190417 22:00:00.000' AS DateTime), 1, 3, 700, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (67, 6, 8, CAST(N'20190417 22:30:00.000' AS DateTime), N'bla bla Respuesta Correcta', 7, 3, CAST(N'20190417 22:30:00.000' AS DateTime), 1, 4, 600, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (68, 6, 3, CAST(N'20190417 23:00:00.000' AS DateTime), N'bla bla Respuesta Regular', 8, 2, CAST(N'20190417 23:00:00.000' AS DateTime), 2, 5, 250, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (69, 6, 6, CAST(N'20190417 23:30:00.000' AS DateTime), N'bla bla Respuesta Mal', 9, 3, CAST(N'20190417 23:30:00.000' AS DateTime), 3, 5, 0, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (70, 6, 12, CAST(N'20190418 00:00:00.000' AS DateTime), N'bla bla Respuesta Correcta MEJOR RESPUESTA!', 10, 2, CAST(N'20190418 00:00:00.000' AS DateTime), 1, 5, 1000, 1)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (71, 6, 7, CAST(N'20190418 00:30:00.000' AS DateTime), N'bla bla Respuesta Correcta', 11, 1, CAST(N'20190418 00:30:00.000' AS DateTime), 1, 6, 400, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (72, 6, 1, CAST(N'20190418 01:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 12, 2, CAST(N'20190418 01:00:00.000' AS DateTime), 1, 7, 300, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (73, 7, 3, CAST(N'20190424 19:30:00.000' AS DateTime), N'bla bla Respuesta Correcta', 1, 1, CAST(N'20190424 19:30:00.000' AS DateTime), 1, 0, 1000, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (74, 7, 1, CAST(N'20190424 20:00:00.000' AS DateTime), N'bla bla Respuesta Regular', 2, 2, CAST(N'20190424 20:00:00.000' AS DateTime), 2, 1, 450, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (75, 7, 5, CAST(N'20190424 20:30:00.000' AS DateTime), N'bla bla Respuesta Correcta', 3, 3, CAST(N'20190424 20:30:00.000' AS DateTime), 1, 1, 900, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (76, 7, 8, CAST(N'20190424 21:00:00.000' AS DateTime), N'bla bla Respuesta Correcta MEJOR RESPUESTA!', 4, 1, CAST(N'20190424 21:00:00.000' AS DateTime), 1, 2, 1300, 1)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (77, 7, 10, CAST(N'20190424 21:30:00.000' AS DateTime), N'bla bla Respuesta Regular', 5, 1, CAST(N'20190424 21:30:00.000' AS DateTime), 2, 3, 350, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (78, 7, 2, CAST(N'20190424 22:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 6, 3, CAST(N'20190424 22:00:00.000' AS DateTime), 1, 3, 700, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (79, 7, 12, CAST(N'20190424 22:30:00.000' AS DateTime), N'bla bla Respuesta Correcta', 7, 3, CAST(N'20190424 22:30:00.000' AS DateTime), 1, 4, 600, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (80, 7, 7, CAST(N'20190424 23:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 8, 3, CAST(N'20190424 23:00:00.000' AS DateTime), 1, 5, 500, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (81, 7, 9, CAST(N'20190424 23:30:00.000' AS DateTime), N'bla bla Respuesta Correcta', 9, 2, CAST(N'20190424 23:30:00.000' AS DateTime), 1, 6, 400, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (82, 7, 4, CAST(N'20190425 00:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 10, 3, CAST(N'20190425 00:00:00.000' AS DateTime), 1, 7, 300, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (83, 7, 6, CAST(N'20190425 00:30:00.000' AS DateTime), N'bla bla Respuesta Correcta', 11, 3, CAST(N'20190425 00:30:00.000' AS DateTime), 1, 8, 200, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (84, 7, 11, CAST(N'20190425 01:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 12, 2, CAST(N'20190425 01:00:00.000' AS DateTime), 1, 9, 100, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (85, 8, 10, CAST(N'20190424 00:30:00.000' AS DateTime), N'bla bla Respuesta Correcta', 1, 1, CAST(N'20190424 00:30:00.000' AS DateTime), 1, 0, 1000, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (86, 8, 2, CAST(N'20190424 01:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 2, 1, CAST(N'20190424 01:00:00.000' AS DateTime), 1, 1, 900, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (87, 8, 11, CAST(N'20190424 01:30:00.000' AS DateTime), N'bla bla Respuesta Regular', 3, 3, CAST(N'20190424 01:30:00.000' AS DateTime), 2, 2, 400, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (88, 8, 1, CAST(N'20190424 02:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 4, 3, CAST(N'20190424 02:00:00.000' AS DateTime), 1, 2, 800, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (89, 8, 3, CAST(N'20190424 02:30:00.000' AS DateTime), N'bla bla Respuesta Correcta', 5, 3, CAST(N'20190424 02:30:00.000' AS DateTime), 1, 3, 700, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (90, 8, 12, CAST(N'20190424 03:00:00.000' AS DateTime), N'bla bla Respuesta Regular', 6, 2, CAST(N'20190424 03:00:00.000' AS DateTime), 2, 4, 300, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (91, 8, 6, CAST(N'20190424 03:30:00.000' AS DateTime), N'bla bla Respuesta Regular', 7, 3, CAST(N'20190424 03:30:00.000' AS DateTime), 2, 4, 300, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (92, 8, 7, CAST(N'20190424 04:00:00.000' AS DateTime), N'bla bla Respuesta Correcta MEJOR RESPUESTA!', 8, 1, CAST(N'20190424 04:00:00.000' AS DateTime), 1, 4, 1100, 1)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (93, 8, 8, CAST(N'20190424 04:30:00.000' AS DateTime), N'bla bla Respuesta Regular', 9, 2, CAST(N'20190424 04:30:00.000' AS DateTime), 2, 5, 250, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (94, 8, 9, CAST(N'20190424 05:00:00.000' AS DateTime), N'bla bla Respuesta Mal', 10, 2, CAST(N'20190424 05:00:00.000' AS DateTime), 3, 5, 0, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (95, 8, 5, CAST(N'20190424 05:30:00.000' AS DateTime), N'bla bla Respuesta Correcta', 11, 2, CAST(N'20190424 05:30:00.000' AS DateTime), 1, 5, 500, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (96, 8, 4, CAST(N'20190424 06:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 12, 3, CAST(N'20190424 06:00:00.000' AS DateTime), 1, 6, 400, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (97, 9, 9, CAST(N'20190424 00:30:00.000' AS DateTime), N'bla bla Respuesta Correcta', 1, 3, CAST(N'20190424 00:30:00.000' AS DateTime), 1, 0, 1000, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (98, 9, 7, CAST(N'20190424 01:00:00.000' AS DateTime), N'bla bla Respuesta Regular', 2, 3, CAST(N'20190424 01:00:00.000' AS DateTime), 2, 1, 450, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (99, 9, 10, CAST(N'20190424 01:30:00.000' AS DateTime), N'bla bla Respuesta Regular', 3, 2, CAST(N'20190424 01:30:00.000' AS DateTime), 2, 1, 450, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (100, 9, 4, CAST(N'20190424 02:00:00.000' AS DateTime), N'bla bla Respuesta Correcta MEJOR RESPUESTA!', 4, 2, CAST(N'20190424 02:00:00.000' AS DateTime), 1, 1, 1400, 1)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (101, 9, 3, CAST(N'20190424 02:30:00.000' AS DateTime), N'bla bla Respuesta Regular', 5, 2, CAST(N'20190424 02:30:00.000' AS DateTime), 2, 2, 400, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (102, 9, 11, CAST(N'20190424 03:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 6, 3, CAST(N'20190424 03:00:00.000' AS DateTime), 1, 2, 800, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (103, 9, 1, CAST(N'20190424 03:30:00.000' AS DateTime), N'bla bla Respuesta Correcta', 7, 3, CAST(N'20190424 03:30:00.000' AS DateTime), 1, 3, 700, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (104, 9, 2, CAST(N'20190424 04:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 8, 3, CAST(N'20190424 04:00:00.000' AS DateTime), 1, 4, 600, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (105, 9, 12, CAST(N'20190424 04:30:00.000' AS DateTime), N'bla bla Respuesta Correcta', 9, 1, CAST(N'20190424 04:30:00.000' AS DateTime), 1, 5, 500, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (106, 9, 5, CAST(N'20190424 05:00:00.000' AS DateTime), N'bla bla Respuesta Regular', 10, 2, CAST(N'20190424 05:00:00.000' AS DateTime), 2, 6, 200, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (107, 9, 8, CAST(N'20190424 05:30:00.000' AS DateTime), N'bla bla Respuesta Correcta', 11, 2, CAST(N'20190424 05:30:00.000' AS DateTime), 1, 6, 400, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (108, 9, 6, CAST(N'20190424 06:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 12, 1, CAST(N'20190424 06:00:00.000' AS DateTime), 1, 7, 300, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (109, 10, 10, CAST(N'20190424 00:30:00.000' AS DateTime), N'bla bla Respuesta Regular', 1, 3, CAST(N'20190424 00:30:00.000' AS DateTime), 2, 0, 500, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (110, 10, 6, CAST(N'20190424 01:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 2, 2, CAST(N'20190424 01:00:00.000' AS DateTime), 1, 0, 1000, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (111, 10, 1, CAST(N'20190424 01:30:00.000' AS DateTime), N'bla bla Respuesta Regular', 3, 1, CAST(N'20190424 01:30:00.000' AS DateTime), 2, 1, 450, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (112, 10, 12, CAST(N'20190424 02:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 4, 1, CAST(N'20190424 02:00:00.000' AS DateTime), 1, 1, 900, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (113, 10, 7, CAST(N'20190424 02:30:00.000' AS DateTime), N'bla bla Respuesta Correcta', 5, 2, CAST(N'20190424 02:30:00.000' AS DateTime), 1, 2, 800, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (114, 10, 2, CAST(N'20190424 03:00:00.000' AS DateTime), N'bla bla Respuesta Regular', 6, 1, CAST(N'20190424 03:00:00.000' AS DateTime), 2, 3, 350, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (115, 10, 9, CAST(N'20190424 03:30:00.000' AS DateTime), N'bla bla Respuesta Mal', 7, 2, CAST(N'20190424 03:30:00.000' AS DateTime), 3, 3, 0, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (116, 10, 4, CAST(N'20190424 04:00:00.000' AS DateTime), N'bla bla Respuesta Regular', 8, 2, CAST(N'20190424 04:00:00.000' AS DateTime), 2, 3, 350, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (117, 10, 8, CAST(N'20190424 04:30:00.000' AS DateTime), N'bla bla Respuesta Mal', 9, 2, CAST(N'20190424 04:30:00.000' AS DateTime), 3, 3, 0, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (118, 10, 5, CAST(N'20190424 05:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 10, 3, CAST(N'20190424 05:00:00.000' AS DateTime), 1, 3, 700, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (119, 10, 11, CAST(N'20190424 05:30:00.000' AS DateTime), N'bla bla Respuesta Correcta', 11, 3, CAST(N'20190424 05:30:00.000' AS DateTime), 1, 4, 600, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (120, 10, 3, CAST(N'20190424 06:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 12, 1, CAST(N'20190424 06:00:00.000' AS DateTime), 1, 5, 500, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (121, 11, 3, CAST(N'20190430 19:30:00.000' AS DateTime), N'bla bla Respuesta Regular', 1, 2, CAST(N'20190430 19:30:00.000' AS DateTime), 2, 0, 500, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (122, 11, 9, CAST(N'20190430 20:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 2, 2, CAST(N'20190430 20:00:00.000' AS DateTime), 1, 0, 1000, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (123, 11, 5, CAST(N'20190430 20:30:00.000' AS DateTime), N'bla bla Respuesta Regular', 3, 3, CAST(N'20190430 20:30:00.000' AS DateTime), 2, 1, 450, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (124, 11, 10, CAST(N'20190430 21:00:00.000' AS DateTime), N'bla bla Respuesta Regular', 4, 1, CAST(N'20190430 21:00:00.000' AS DateTime), 2, 1, 450, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (125, 11, 2, CAST(N'20190430 21:30:00.000' AS DateTime), N'bla bla Respuesta Correcta MEJOR RESPUESTA!', 5, 2, CAST(N'20190430 21:30:00.000' AS DateTime), 1, 1, 1400, 1)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (126, 11, 8, CAST(N'20190430 22:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 6, 1, CAST(N'20190430 22:00:00.000' AS DateTime), 1, 2, 800, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (127, 11, 7, CAST(N'20190430 22:30:00.000' AS DateTime), N'bla bla Respuesta Correcta', 7, 1, CAST(N'20190430 22:30:00.000' AS DateTime), 1, 3, 700, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (128, 11, 4, CAST(N'20190430 23:00:00.000' AS DateTime), N'bla bla Respuesta Regular', 8, 3, CAST(N'20190430 23:00:00.000' AS DateTime), 2, 4, 300, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (129, 11, 1, CAST(N'20190430 23:30:00.000' AS DateTime), N'bla bla Respuesta Correcta', 9, 2, CAST(N'20190430 23:30:00.000' AS DateTime), 1, 4, 600, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (130, 11, 12, CAST(N'20190501 00:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 10, 2, CAST(N'20190501 00:00:00.000' AS DateTime), 1, 5, 500, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (131, 11, 6, CAST(N'20190501 00:30:00.000' AS DateTime), N'bla bla Respuesta Mal', 11, 3, CAST(N'20190501 00:30:00.000' AS DateTime), 3, 6, 0, 0)
GO
INSERT [dbo].[RespuestaAlumno] ([IdRespuestaAlumno], [IdPregunta], [IdAlumno], [FechaHoraRespuesta], [Respuesta], [Orden], [IdProfesorEvaluador], [FechaHoraEvaluacion], [IdResultadoEvaluacion], [RespuestasCorrectasHastaElMomento], [Puntos], [MejorRespuesta]) VALUES (132, 11, 11, CAST(N'20190501 01:00:00.000' AS DateTime), N'bla bla Respuesta Correcta', 12, 1, CAST(N'20190501 01:00:00.000' AS DateTime), 1, 6, 400, 0)
GO
SET IDENTITY_INSERT [dbo].[RespuestaAlumno] OFF
GO

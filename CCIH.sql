USE [master]
GO
/****** Object:  Database [CCIH_DB]    Script Date: 16/8/2023 18:49:09 ******/
CREATE DATABASE [CCIH_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CCIH_DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\CCIH_DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CCIH_DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\CCIH_DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [CCIH_DB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CCIH_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CCIH_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CCIH_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CCIH_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CCIH_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CCIH_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [CCIH_DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CCIH_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CCIH_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CCIH_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CCIH_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CCIH_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CCIH_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CCIH_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CCIH_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CCIH_DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CCIH_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CCIH_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CCIH_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CCIH_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CCIH_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CCIH_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CCIH_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CCIH_DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CCIH_DB] SET  MULTI_USER 
GO
ALTER DATABASE [CCIH_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CCIH_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CCIH_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CCIH_DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CCIH_DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CCIH_DB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [CCIH_DB] SET QUERY_STORE = ON
GO
ALTER DATABASE [CCIH_DB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [CCIH_DB]
GO
/****** Object:  Table [dbo].[Asignaciones]    Script Date: 16/8/2023 18:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asignaciones](
	[IdAsignacion] [bigint] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[FechaCreacion] [datetime] NULL,
	[IdUsuarioModificacion] [bigint] NULL,
	[FechaModificacion] [datetime] NULL,
 CONSTRAINT [PK_Asignaciones] PRIMARY KEY CLUSTERED 
(
	[IdAsignacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bitacora]    Script Date: 16/8/2023 18:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bitacora](
	[IdBitacora] [bigint] IDENTITY(1,1) NOT NULL,
	[FechaHora] [datetime] NULL,
	[Mensaje] [varchar](5000) NULL,
	[Origen] [varchar](5000) NULL,
	[IdUsuario] [bigint] NULL,
 CONSTRAINT [PK_Bitacora] PRIMARY KEY CLUSTERED 
(
	[IdBitacora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 16/8/2023 18:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[IdCliente] [bigint] IDENTITY(1,1) NOT NULL,
	[Cedula] [varchar](20) NULL,
	[Correo] [varchar](50) NULL,
	[Nombre] [varchar](15) NULL,
	[Apellido1] [varchar](15) NULL,
	[Apellido2] [varchar](15) NULL,
	[FechaNacimiento] [datetime] NULL,
	[Telefono] [varchar](15) NULL,
	[Direccion] [varchar](100) NULL,
	[IdEstatus] [bigint] NULL,
	[IdRol] [bigint] NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curso]    Script Date: 16/8/2023 18:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curso](
	[IdCurso] [bigint] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Curso] PRIMARY KEY CLUSTERED 
(
	[IdCurso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estatus]    Script Date: 16/8/2023 18:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estatus](
	[IdEstatus] [bigint] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](20) NULL,
 CONSTRAINT [PK_Estatus] PRIMARY KEY CLUSTERED 
(
	[IdEstatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 16/8/2023 18:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grupo](
	[IdGrupo] [bigint] IDENTITY(1,1) NOT NULL,
	[IdEstatus] [bigint] NULL,
 CONSTRAINT [PK_Grupo] PRIMARY KEY CLUSTERED 
(
	[IdGrupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Horario]    Script Date: 16/8/2023 18:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horario](
	[IdHorario] [bigint] IDENTITY(1,1) NOT NULL,
	[Dia] [varchar](50) NULL,
 CONSTRAINT [PK_Horario] PRIMARY KEY CLUSTERED 
(
	[IdHorario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Matricula]    Script Date: 16/8/2023 18:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Matricula](
	[IdMatricula] [bigint] IDENTITY(1,1) NOT NULL,
	[Cedula] [varchar](20) NULL,
	[IdCurso] [bigint] NULL,
	[IdModalidad] [bigint] NULL,
	[IdNivel] [bigint] NULL,
	[IdHorario] [bigint] NULL,
	[Monto] [decimal](10, 2) NULL,
	[FechaMatricula] [datetime] NULL,
	[DiaPago] [int] NULL,
	[Comentario] [varchar](500) NULL,
	[IdEstatus] [bigint] NULL,
 CONSTRAINT [PK_Matricula] PRIMARY KEY CLUSTERED 
(
	[IdMatricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modalidad]    Script Date: 16/8/2023 18:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modalidad](
	[IdModalidad] [bigint] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Modalidad] PRIMARY KEY CLUSTERED 
(
	[IdModalidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NivelCurso]    Script Date: 16/8/2023 18:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NivelCurso](
	[IdNivelCurso] [bigint] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_NivelCurso] PRIMARY KEY CLUSTERED 
(
	[IdNivelCurso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nota]    Script Date: 16/8/2023 18:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nota](
	[IdNota] [bigint] IDENTITY(1,1) NOT NULL,
	[IdGrupo] [bigint] NULL,
	[IdUsuario] [bigint] NULL,
	[IdOficinas] [bigint] NULL,
	[Nota] [decimal](4, 1) NULL,
	[IdAgisnacion] [bigint] NULL,
	[IdCurso] [bigint] NULL,
	[IdUsuarioModificacion] [bigint] NULL,
	[FechaCreacion] [datetime] NULL,
	[FechaModificacion] [datetime] NULL,
 CONSTRAINT [PK_Nota] PRIMARY KEY CLUSTERED 
(
	[IdNota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oficina]    Script Date: 16/8/2023 18:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oficina](
	[IdOficina] [bigint] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](15) NULL,
	[Apellido1] [varchar](15) NULL,
	[Apellido2] [varchar](15) NULL,
	[IdUsuario] [bigint] NULL,
	[Telefono] [varchar](15) NULL,
	[IdEstatus] [bigint] NULL,
	[Correo] [varchar](50) NULL,
	[IdUsuarioModificacion] [bigint] NULL,
	[FechaCreacion] [datetime] NULL,
	[FechaModificacion] [datetime] NULL,
	[IdRol] [bigint] NULL,
 CONSTRAINT [PK_Profesor] PRIMARY KEY CLUSTERED 
(
	[IdOficina] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PagoClientes]    Script Date: 16/8/2023 18:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PagoClientes](
	[IdPagoCliente] [bigint] IDENTITY(1,1) NOT NULL,
	[Monto] [decimal](10, 2) NULL,
	[Motivo] [varchar](500) NULL,
	[IdCliente] [varchar](20) NULL,
	[IdCurso] [bigint] NULL,
	[FechaPago] [datetime] NULL,
	[IdUsuarioModificacion] [bigint] NULL,
	[FechaCreacion] [datetime] NULL,
	[FechaModificacion] [datetime] NULL,
 CONSTRAINT [PK_Pago] PRIMARY KEY CLUSTERED 
(
	[IdPagoCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PagoProveedor]    Script Date: 16/8/2023 18:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PagoProveedor](
	[IdPagoProveedor] [bigint] IDENTITY(1,1) NOT NULL,
	[Monto] [decimal](10, 2) NULL,
	[Motivo] [varchar](500) NULL,
	[IdProveedor] [bigint] NULL,
	[FechaPago] [datetime] NULL,
	[IdUsuarioModificacion] [bigint] NULL,
	[FechaCreacion] [datetime] NULL,
	[FechaModificacion] [datetime] NULL,
 CONSTRAINT [PK_PagoProveedor] PRIMARY KEY CLUSTERED 
(
	[IdPagoProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PreMatricula]    Script Date: 16/8/2023 18:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreMatricula](
	[IdPrematricula] [bigint] IDENTITY(1,1) NOT NULL,
	[CorreoElectronico] [varchar](100) NULL,
	[Telefono] [varchar](15) NULL,
	[Nombre] [varchar](15) NULL,
	[Apellido1] [varchar](15) NULL,
	[Apellido2] [varchar](15) NULL,
	[IdCurso] [bigint] NULL,
	[IdModalidad] [bigint] NULL,
	[IdNivel] [bigint] NULL,
	[IdEstatus] [bigint] NULL,
	[FechaPrematricula] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 16/8/2023 18:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[IdProveedor] [bigint] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](200) NULL,
	[FechaCreacion] [datetime] NULL,
	[FechaModificacion] [datetime] NULL,
	[IdUsuarioModificacion] [bigint] NULL,
 CONSTRAINT [PK_Proveedor] PRIMARY KEY CLUSTERED 
(
	[IdProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 16/8/2023 18:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[IdRol] [bigint] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](20) NULL,
	[IdUsuarioModificacion] [bigint] NULL,
	[FechaCreacion] [datetime] NULL,
	[FechaModificacion] [datetime] NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[IdRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 16/8/2023 18:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [bigint] IDENTITY(1,1) NOT NULL,
	[Usuario] [varchar](15) NULL,
	[PwUsuario] [varchar](50) NULL,
	[IdOficina] [bigint] NULL,
	[IdCliente] [varchar](20) NULL,
	[IdRol] [bigint] NULL,
	[FechaCreacion] [datetime] NULL,
	[FechaUltimaActividad] [datetime] NULL,
	[IdUsuarioModificacion] [bigint] NULL,
	[FechaModificacion] [datetime] NULL,
	[IdEstatus] [bigint] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Nota]  WITH CHECK ADD  CONSTRAINT [FK_Nota_Asignaciones] FOREIGN KEY([IdAgisnacion])
REFERENCES [dbo].[Asignaciones] ([IdAsignacion])
GO
ALTER TABLE [dbo].[Nota] CHECK CONSTRAINT [FK_Nota_Asignaciones]
GO
ALTER TABLE [dbo].[Nota]  WITH CHECK ADD  CONSTRAINT [FK_Nota_Curso] FOREIGN KEY([IdCurso])
REFERENCES [dbo].[Curso] ([IdCurso])
GO
ALTER TABLE [dbo].[Nota] CHECK CONSTRAINT [FK_Nota_Curso]
GO
ALTER TABLE [dbo].[Nota]  WITH CHECK ADD  CONSTRAINT [FK_Nota_Oficina] FOREIGN KEY([IdOficinas])
REFERENCES [dbo].[Oficina] ([IdOficina])
GO
ALTER TABLE [dbo].[Nota] CHECK CONSTRAINT [FK_Nota_Oficina]
GO
ALTER TABLE [dbo].[Oficina]  WITH CHECK ADD  CONSTRAINT [FK_Oficina_Estatus] FOREIGN KEY([IdEstatus])
REFERENCES [dbo].[Estatus] ([IdEstatus])
GO
ALTER TABLE [dbo].[Oficina] CHECK CONSTRAINT [FK_Oficina_Estatus]
GO
ALTER TABLE [dbo].[Oficina]  WITH CHECK ADD  CONSTRAINT [FK_Oficina_Rol] FOREIGN KEY([IdRol])
REFERENCES [dbo].[Rol] ([IdRol])
GO
ALTER TABLE [dbo].[Oficina] CHECK CONSTRAINT [FK_Oficina_Rol]
GO
ALTER TABLE [dbo].[PagoProveedor]  WITH CHECK ADD  CONSTRAINT [FK_PagoProveedor_Proveedor] FOREIGN KEY([IdProveedor])
REFERENCES [dbo].[Proveedor] ([IdProveedor])
GO
ALTER TABLE [dbo].[PagoProveedor] CHECK CONSTRAINT [FK_PagoProveedor_Proveedor]
GO
/****** Object:  StoredProcedure [dbo].[ConsultarCursos]    Script Date: 16/8/2023 18:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[ConsultarCursos]
AS
BEGIN
	select * from Curso;
END
GO
/****** Object:  StoredProcedure [dbo].[ConsultarEstatus]    Script Date: 16/8/2023 18:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ConsultarEstatus]
AS
BEGIN
	Select * from Estatus;
END
GO
/****** Object:  StoredProcedure [dbo].[ConsultarGrupos]    Script Date: 16/8/2023 18:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[ConsultarGrupos]
AS
BEGIN
	select * from Grupo;
END
GO
/****** Object:  StoredProcedure [dbo].[ConsultarHorarios]    Script Date: 16/8/2023 18:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[ConsultarHorarios]
AS
BEGIN
	select * from Horario;
END
GO
/****** Object:  StoredProcedure [dbo].[ConsultarModalidad]    Script Date: 16/8/2023 18:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[ConsultarModalidad]
AS
BEGIN
	select * from Modalidad;
END
GO
/****** Object:  StoredProcedure [dbo].[ConsultarNivel]    Script Date: 16/8/2023 18:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[ConsultarNivel]
AS
BEGIN
	select * from NivelCurso;
END
GO
/****** Object:  StoredProcedure [dbo].[ConsultarPreMatricula]    Script Date: 16/8/2023 18:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   PROCEDURE [dbo].[ConsultarPreMatricula]
AS
BEGIN

SELECT PreMatricula.IdPrematricula, PreMatricula.CorreoElectronico, PreMatricula.Telefono, PreMatricula.FechaPrematricula as Fecha,
		PreMatricula.Nombre, PreMatricula.Apellido1, PreMatricula.Apellido2, Curso.Nombre as Curso, 
		Modalidad.Nombre as Modalidad, NivelCurso.Nombre as Nivel, Estatus.Nombre as Estatus
FROM PreMatricula
JOIN Curso ON Curso.IdCurso = PreMatricula.IdCurso
JOIN Modalidad ON Modalidad.IdModalidad = PreMatricula.IdModalidad
JOIN NivelCurso ON NivelCurso.IdNivelCurso = PreMatricula.IdNivel
JOIN Estatus ON Estatus.IdEstatus = PreMatricula.IdEstatus;

END

SELECT * FROM PreMatricula
GO
/****** Object:  StoredProcedure [dbo].[CREAR_ROL]    Script Date: 16/8/2023 18:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CREAR_ROL]
	@Nombre VARCHAR(20),
	@IdUsuario BIGINT
AS
BEGIN
	INSERT INTO [dbo].[Rol]
           ([Nombre]
           ,[IdUsuarioModificacion]
           ,[FechaCreacion]
           ,[FechaModificacion])
     VALUES
           (@Nombre
           ,@IdUsuario
           ,GETDATE()
           ,GETDATE())

END;
GO
/****** Object:  StoredProcedure [dbo].[EDITAR_ROL]    Script Date: 16/8/2023 18:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EDITAR_ROL]
	@IdRol BIGINT,
	@Nombre VARCHAR(20),
	@IdUsuario BIGINT
AS
BEGIN
UPDATE [dbo].[Rol]
   SET [Nombre] = @Nombre
      ,[IdUsuarioModificacion] = @IdUsuario
      ,[FechaModificacion] = GETDATE()
 WHERE [IdRol] = @IdRol;

END;
GO
/****** Object:  StoredProcedure [dbo].[ELIMINAR_ROL]    Script Date: 16/8/2023 18:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ELIMINAR_ROL]
	@IdRol BIGINT

AS
BEGIN
DELETE FROM [dbo].[Rol]
	WHERE [IdRol] = @IdRol;

END;
GO
/****** Object:  StoredProcedure [dbo].[InicioSesion]    Script Date: 16/8/2023 18:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InicioSesion]
    @nombreUsuario VARCHAR(50),
    @contrasenna VARCHAR(50)
AS
BEGIN
    -- Verificar si el usuario y contraseña coinciden en la tabla "Usuarios"
    IF EXISTS (
        SELECT 1
        FROM Usuario
        WHERE Usuario = @nombreUsuario AND PwUsuario = @contrasenna
    )
    BEGIN
        -- Si hay una coincidencia, retornar la información del usuario
        SELECT *
        FROM Usuario
        WHERE Usuario = @nombreUsuario;
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[INSERTAR_ROL]    Script Date: 16/8/2023 18:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[INSERTAR_ROL]
	
	@NombreRol VARCHAR(20),
    @IdUsuario bigint
AS
BEGIN
	INSERT INTO [dbo].[Rol]
           ([Nombre]
           ,[IdUsuarioModificacion]
           ,[FechaCreacion]
           ,[FechaModificacion])
     VALUES
           (@NombreRol
           ,@IdUsuario
           ,GETDATE()
           ,GETDATE())

END;
GO
/****** Object:  StoredProcedure [dbo].[InsertarCliente]    Script Date: 16/8/2023 18:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [dbo].[InsertarCliente]
		   @Cedula varchar(20),
		   @Correo varchar(50),
		   @Nombre varchar(15),
           @Apellido1 varchar(15),
           @Apellido2 varchar(15),
		   @FechaNacimiento datetime,
           @Telefono varchar(15),
           @Direccion varchar(100),
           @IdEstatus bigint,
		   @IdRol bigint
AS
BEGIN
	INSERT INTO [dbo].[Cliente]
           ([Cedula]
           ,[Correo]
           ,[Nombre]
           ,[Apellido1]
           ,[Apellido2]
           ,[FechaNacimiento]
           ,[Telefono]
           ,[Direccion]
           ,[IdEstatus]
		   ,[IdRol])
     VALUES
           (@Cedula,
		   @Correo,
		   @Nombre,
           @Apellido1,
           @Apellido2,
		   @FechaNacimiento,
           @Telefono,
           @Direccion,
           @IdEstatus,
		   @IdRol)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertarPrematricula]    Script Date: 16/8/2023 18:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarPrematricula]
			@CorreoElectronico varchar(100),
			@Telefono varchar(15),
			@Nombre varchar(15),
			@Apellido1 varchar(15),
			@Apellido2 varchar(15),
			@IdCurso bigint,
			@IdModalidad bigint,
			@IdNivel bigint,
			@IdEstatus bigint,
			@FechaPrematricula datetime
AS
BEGIN
	INSERT INTO PreMatricula
           ([CorreoElectronico]
           ,[Telefono]
           ,[Nombre]
           ,[Apellido1]
           ,[Apellido2]
           ,[IdCurso]
           ,[IdModalidad]
           ,[IdNivel]
           ,[IdEstatus]
           ,[FechaPrematricula])
     VALUES(
           	@CorreoElectronico,
			@Telefono,
			@Nombre,
			@Apellido1,
			@Apellido2,
			@IdCurso,
			@IdModalidad,
			@IdNivel,
			@IdEstatus,
			@FechaPrematricula)
END
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_ROLES]    Script Date: 16/8/2023 18:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE PROCEDURE [dbo].[LISTAR_ROLES]
	
AS
BEGIN
	SELECT * FROM Rol

END;
GO
/****** Object:  StoredProcedure [dbo].[RegistarMatricula]    Script Date: 16/8/2023 18:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RegistarMatricula]
		   @Cedula varchar(20),
           @IdCurso bigint,
           @IdModalidad bigint,
           @IdNivel bigint,
           @IdHorario bigint,
           @Monto decimal(10,2),
           @FechaMatricula datetime,
           @DiaPago int,
           @Comentario varchar(500),
           @IdEstatus bigint
AS
BEGIN
	INSERT INTO [dbo].[Matricula]
           ([Cedula]
           ,[IdCurso]
           ,[IdModalidad]
           ,[IdNivel]
           ,[IdHorario]
           ,[Monto]
           ,[FechaMatricula]
           ,[DiaPago]
           ,[Comentario]
           ,[IdEstatus])
     VALUES
           (
		   @Cedula,
           @IdCurso,
           @IdModalidad,
           @IdNivel,
           @IdHorario,
           @Monto,
           @FechaMatricula,
           @DiaPago,
           @Comentario,
           @IdEstatus
		   );
END
GO
USE [master]
GO
ALTER DATABASE [CCIH_DB] SET  READ_WRITE 
GO

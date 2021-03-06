USE [master]
GO
/****** Object:  Database [BD_Ferreteria]    Script Date: 14/1/2019 18:35:03 ******/
CREATE DATABASE [BD_Ferreteria]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BD_Ferreteria', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BD_Ferreteria.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BD_Ferreteria_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BD_Ferreteria_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BD_Ferreteria] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BD_Ferreteria].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BD_Ferreteria] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BD_Ferreteria] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BD_Ferreteria] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BD_Ferreteria] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BD_Ferreteria] SET ARITHABORT OFF 
GO
ALTER DATABASE [BD_Ferreteria] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BD_Ferreteria] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BD_Ferreteria] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BD_Ferreteria] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BD_Ferreteria] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BD_Ferreteria] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BD_Ferreteria] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BD_Ferreteria] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BD_Ferreteria] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BD_Ferreteria] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BD_Ferreteria] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BD_Ferreteria] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BD_Ferreteria] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BD_Ferreteria] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BD_Ferreteria] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BD_Ferreteria] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BD_Ferreteria] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BD_Ferreteria] SET RECOVERY FULL 
GO
ALTER DATABASE [BD_Ferreteria] SET  MULTI_USER 
GO
ALTER DATABASE [BD_Ferreteria] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BD_Ferreteria] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BD_Ferreteria] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BD_Ferreteria] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BD_Ferreteria] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BD_Ferreteria', N'ON'
GO
ALTER DATABASE [BD_Ferreteria] SET QUERY_STORE = OFF
GO
USE [BD_Ferreteria]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [BD_Ferreteria]
GO
/****** Object:  Table [dbo].[Auditoria]    Script Date: 14/1/2019 18:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auditoria](
	[IdModificado] [varchar](20) NULL,
	[CampoModificado] [varchar](100) NULL,
	[IdTabla] [varchar](50) NULL,
	[Accion] [varchar](1) NULL,
	[Usuario] [varchar](20) NULL,
	[Fecha] [datetime] NULL,
	[DatoAnterior] [varchar](500) NULL,
	[DatoNuevo] [varchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Llave]    Script Date: 14/1/2019 18:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Llave](
	[id] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 14/1/2019 18:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[TipoProducto] [int] NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Auditoria] ([IdModificado], [CampoModificado], [IdTabla], [Accion], [Usuario], [Fecha], [DatoAnterior], [DatoNuevo]) VALUES (N'1', N'Descripcion', N'Producto', N'I', N'croweloper', CAST(N'2019-01-13T18:07:01.983' AS DateTime), NULL, N'Martillo')
INSERT [dbo].[Auditoria] ([IdModificado], [CampoModificado], [IdTabla], [Accion], [Usuario], [Fecha], [DatoAnterior], [DatoNuevo]) VALUES (N'1', N'TipoProducto', N'Producto', N'I', N'croweloper', CAST(N'2019-01-13T18:07:01.983' AS DateTime), NULL, N'1')
INSERT [dbo].[Auditoria] ([IdModificado], [CampoModificado], [IdTabla], [Accion], [Usuario], [Fecha], [DatoAnterior], [DatoNuevo]) VALUES (N'1', N'Estado', N'Producto', N'I', N'croweloper', CAST(N'2019-01-13T18:07:01.983' AS DateTime), NULL, N'1')
INSERT [dbo].[Auditoria] ([IdModificado], [CampoModificado], [IdTabla], [Accion], [Usuario], [Fecha], [DatoAnterior], [DatoNuevo]) VALUES (N'2', N'Descripcion', N'Producto', N'I', N'croweloper', CAST(N'2019-01-13T18:08:27.747' AS DateTime), NULL, N'Clavo')
INSERT [dbo].[Auditoria] ([IdModificado], [CampoModificado], [IdTabla], [Accion], [Usuario], [Fecha], [DatoAnterior], [DatoNuevo]) VALUES (N'2', N'TipoProducto', N'Producto', N'I', N'croweloper', CAST(N'2019-01-13T18:08:27.747' AS DateTime), NULL, N'1')
INSERT [dbo].[Auditoria] ([IdModificado], [CampoModificado], [IdTabla], [Accion], [Usuario], [Fecha], [DatoAnterior], [DatoNuevo]) VALUES (N'2', N'Estado', N'Producto', N'I', N'croweloper', CAST(N'2019-01-13T18:08:27.747' AS DateTime), NULL, N'1')
INSERT [dbo].[Auditoria] ([IdModificado], [CampoModificado], [IdTabla], [Accion], [Usuario], [Fecha], [DatoAnterior], [DatoNuevo]) VALUES (N'3', N'Descripcion', N'Producto', N'I', N'croweloper', CAST(N'2019-01-13T18:08:35.183' AS DateTime), NULL, N'Tornillo')
INSERT [dbo].[Auditoria] ([IdModificado], [CampoModificado], [IdTabla], [Accion], [Usuario], [Fecha], [DatoAnterior], [DatoNuevo]) VALUES (N'3', N'TipoProducto', N'Producto', N'I', N'croweloper', CAST(N'2019-01-13T18:08:35.183' AS DateTime), NULL, N'1')
INSERT [dbo].[Auditoria] ([IdModificado], [CampoModificado], [IdTabla], [Accion], [Usuario], [Fecha], [DatoAnterior], [DatoNuevo]) VALUES (N'3', N'Estado', N'Producto', N'I', N'croweloper', CAST(N'2019-01-13T18:08:35.183' AS DateTime), NULL, N'1')
SET IDENTITY_INSERT [dbo].[Producto] ON 

INSERT [dbo].[Producto] ([id], [Descripcion], [TipoProducto], [Estado]) VALUES (1, N'Martillo', 1, 1)
INSERT [dbo].[Producto] ([id], [Descripcion], [TipoProducto], [Estado]) VALUES (2, N'Clavo', 1, 1)
INSERT [dbo].[Producto] ([id], [Descripcion], [TipoProducto], [Estado]) VALUES (3, N'Tornillo', 1, 1)
SET IDENTITY_INSERT [dbo].[Producto] OFF
/****** Object:  StoredProcedure [dbo].[Usp_AdministrarProducto]    Script Date: 14/1/2019 18:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Usp_AdministrarProducto]
@IdProducto int, @Descripcion Varchar(100),
@TipoProducto int,@Estado int,@Usuario Varchar(20)
as
Declare @DescripcionAnterior Varchar(100),@TipoProductoAnterior int,
@EstadoAnterior Int
begin
	If @IdProducto=0 -- Inserta
	begin
		Insert Into Producto(Descripcion,TipoProducto,Estado)
		Values(@Descripcion,@TipoProducto,@Estado);
		set @IdProducto=@@IDENTITY;
		exec Usp_InsertaAuditoria @IdProducto,'Descripcion',
		'Producto','I',@Usuario,NULL,@Descripcion;

		exec Usp_InsertaAuditoria @IdProducto,'TipoProducto',
		'Producto','I',@Usuario,NULL,@TipoProducto;

		exec Usp_InsertaAuditoria @IdProducto,'Estado',
		'Producto','I',@Usuario,NULL,@Estado;
	end
	else
	begin 
		Select @DescripcionAnterior=Descripcion,@TipoProductoAnterior=TipoProducto,@EstadoAnterior=Estado From Producto where id=@IdProducto;
		Update Producto set Descripcion=@Descripcion,TipoProducto=@TipoProducto,Estado=@Estado where id=@IdProducto;

		If @DescripcionAnterior!=@Descripcion
		begin
			exec Usp_InsertaAuditoria @IdProducto,'Descripcion','Producto','U',@Usuario,@DescripcionAnterior,@Descripcion;
		end

		If @TipoProductoAnterior!=@TipoProducto
		begin
			exec Usp_InsertaAuditoria @IdProducto,'TipoProducto','Producto','U',@Usuario,@TipoProductoAnterior,@TipoProducto;
		end

		If @EstadoAnterior!=@Estado
		begin
			exec Usp_InsertaAuditoria @IdProducto,'Estado','Producto','U',@Usuario,@EstadoAnterior,@Estado;
		end
	end
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_InsertaAuditoria]    Script Date: 14/1/2019 18:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Usp_InsertaAuditoria]
@idModificado varchar(20),@CampoModificado varchar(100),
@idTabla Varchar(50),@Accion varchar(1),@Usuario varchar(20),
@DatoAnterior varchar(500),@DatoNuevo Varchar(500)
as
begin
	Insert Into Auditoria (IdModificado,CampoModificado,IdTabla,Accion,Usuario,Fecha,DatoAnterior,DatoNuevo) 
	Values(@idModificado,@CampoModificado,@idTabla, @Accion,@Usuario,GETDATE(),@DatoAnterior,@DatoNuevo);
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_ObtenerProductoById]    Script Date: 14/1/2019 18:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Usp_ObtenerProductoById]
@IdProducto int
as
begin
	select Id,Descripcion,TipoProducto,Estado from Producto
	where Id=@IdProducto;
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_ObtenerProductos]    Script Date: 14/1/2019 18:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Usp_ObtenerProductos]
as
begin
	select Id,Descripcion,TipoProducto,Estado from Producto;
end
GO
USE [master]
GO
ALTER DATABASE [BD_Ferreteria] SET  READ_WRITE 
GO

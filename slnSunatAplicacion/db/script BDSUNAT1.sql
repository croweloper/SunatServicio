USE [master]
GO
/****** Object:  Database [BD_Sunat1]    Script Date: 14/1/2019 18:33:56 ******/
CREATE DATABASE [BD_Sunat1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BD_Sunat1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BD_Sunat1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BD_Sunat1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BD_Sunat1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BD_Sunat1] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BD_Sunat1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BD_Sunat1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BD_Sunat1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BD_Sunat1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BD_Sunat1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BD_Sunat1] SET ARITHABORT OFF 
GO
ALTER DATABASE [BD_Sunat1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BD_Sunat1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BD_Sunat1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BD_Sunat1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BD_Sunat1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BD_Sunat1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BD_Sunat1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BD_Sunat1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BD_Sunat1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BD_Sunat1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BD_Sunat1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BD_Sunat1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BD_Sunat1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BD_Sunat1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BD_Sunat1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BD_Sunat1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BD_Sunat1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BD_Sunat1] SET RECOVERY FULL 
GO
ALTER DATABASE [BD_Sunat1] SET  MULTI_USER 
GO
ALTER DATABASE [BD_Sunat1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BD_Sunat1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BD_Sunat1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BD_Sunat1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BD_Sunat1] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BD_Sunat1', N'ON'
GO
ALTER DATABASE [BD_Sunat1] SET QUERY_STORE = OFF
GO
USE [BD_Sunat1]
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
USE [BD_Sunat1]
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 14/1/2019 18:33:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresa](
	[IdEmpresa] [varchar](10) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Llave] [varchar](20) NULL,
	[Estado] [int] NULL,
 CONSTRAINT [PK_Empresa] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Token]    Script Date: 14/1/2019 18:33:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Token](
	[IdToken] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [varchar](20) NULL,
	[Token] [varchar](100) NULL,
	[FechaUltimaAccion] [datetime] NULL,
	[FechaCaducidad] [datetime] NULL,
 CONSTRAINT [PK_Token] PRIMARY KEY CLUSTERED 
(
	[IdToken] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 14/1/2019 18:33:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Username] [varchar](15) NULL,
	[DNI] [char](8) NULL,
	[Pass] [varchar](10) NULL,
	[Estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario1]    Script Date: 14/1/2019 18:33:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario1](
	[IdUsuario] [varchar](20) NOT NULL,
	[Nombres] [varchar](100) NULL,
	[Apellidos] [varchar](100) NULL,
	[Clave] [varchar](100) NULL,
	[Estado] [int] NULL,
 CONSTRAINT [PK_Usuario1] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Empresa] ([IdEmpresa], [Nombre], [Llave], [Estado]) VALUES (N'e001', N'idat', N'0001', 1)
INSERT [dbo].[Empresa] ([IdEmpresa], [Nombre], [Llave], [Estado]) VALUES (N'e002', N'utp', N'0002', 2)
INSERT [dbo].[Empresa] ([IdEmpresa], [Nombre], [Llave], [Estado]) VALUES (N'e003', N'senati', N'0003', 3)
SET IDENTITY_INSERT [dbo].[Token] ON 

INSERT [dbo].[Token] ([IdToken], [IdUsuario], [Token], [FechaUltimaAccion], [FechaCaducidad]) VALUES (1, N'croweloper', N'xDxDxDxDxDxDxDxDxD', CAST(N'2018-12-03T19:38:05.140' AS DateTime), NULL)
INSERT [dbo].[Token] ([IdToken], [IdUsuario], [Token], [FechaUltimaAccion], [FechaCaducidad]) VALUES (2, N'croweloper', N'skcn1Mspg2eGvKw4Z3YhvLC1mDK1bnR1zffnV8GBZ8Qyae0nvCpf/g==', CAST(N'2018-12-06T21:47:02.637' AS DateTime), NULL)
INSERT [dbo].[Token] ([IdToken], [IdUsuario], [Token], [FechaUltimaAccion], [FechaCaducidad]) VALUES (3, N'croweloper', N'RUJrpM3RXkcE6e2zVm4Cpw1rgE5kZDY7SKZ9Sa+Zs7IpqF+HM4KU9g==', CAST(N'2018-12-06T21:59:42.790' AS DateTime), NULL)
INSERT [dbo].[Token] ([IdToken], [IdUsuario], [Token], [FechaUltimaAccion], [FechaCaducidad]) VALUES (4, N'croweloper', N'LYqbTOOBk7SFIjv0FSzaHxPjwLq6OyvknRhbK9aDZ6DzzE4CrYTSJg==', CAST(N'2018-12-10T23:02:52.643' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Token] OFF
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([IdUsuario], [Nombre], [Apellido], [Username], [DNI], [Pass], [Estado]) VALUES (1, N'Daniel', N'Romero', N'croweloper', N'72696054', N'123456', 1)
INSERT [dbo].[Usuario] ([IdUsuario], [Nombre], [Apellido], [Username], [DNI], [Pass], [Estado]) VALUES (2, N'Juanito', N'Alcachofa', N'jalcachofa', N'70000000', N'123456', 1)
INSERT [dbo].[Usuario] ([IdUsuario], [Nombre], [Apellido], [Username], [DNI], [Pass], [Estado]) VALUES (3, N'Elmer', N'Curio', N'elmercurio', N'40000000', N'123456', 1)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
INSERT [dbo].[Usuario1] ([IdUsuario], [Nombres], [Apellidos], [Clave], [Estado]) VALUES (N'croweloper', N'Daniel', N'Romero', N'ZEfL92AYMz0=', 1)
INSERT [dbo].[Usuario1] ([IdUsuario], [Nombres], [Apellidos], [Clave], [Estado]) VALUES (N'epito', N'Elsa', N'Pito', N'ZEfL92AYMz0=', 1)
INSERT [dbo].[Usuario1] ([IdUsuario], [Nombres], [Apellidos], [Clave], [Estado]) VALUES (N'pinpon', N'Pin', N'Pon', N'muñeco', 1)
/****** Object:  StoredProcedure [dbo].[AgregarEmpresa]    Script Date: 14/1/2019 18:33:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



Create procedure [dbo].[AgregarEmpresa]
@IdEmpresa Varchar(10) , @Nombre varchar(50),
@Llave Varchar(20), @Estado int
as
begin
Insert Into Empresa (IdEmpresa,Nombre,Llave,Estado)
Values(@IdEmpresa,@Nombre,@Llave,@Estado);
end 

GO
/****** Object:  StoredProcedure [dbo].[EditarEmpresa]    Script Date: 14/1/2019 18:33:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[EditarEmpresa]
@Idempresa varchar(10),@Nombre varchar(50),@Llave Varchar(20), @Estado int
AS
begin
update Empresa
set	Nombre = @Nombre,Llave = @Llave,Estado = @Estado	
where IdEmpresa = @IdEmpresa
end

GO
/****** Object:  StoredProcedure [dbo].[EliminarEmpresa]    Script Date: 14/1/2019 18:33:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



Create procedure [dbo].[EliminarEmpresa]
@Idempresa varchar(10)
As
begin
delete from Empresa
where IdEmpresa = @IdEmpresa
end

GO
/****** Object:  StoredProcedure [dbo].[ObtenerEmpresa]    Script Date: 14/1/2019 18:33:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Procedure [dbo].[ObtenerEmpresa]
@idEmpresa varchar(10),@key varchar(20)
as
begin
	Select IdEmpresa,Nombre,Llave,Estado from Empresa
	where IdEmpresa=@idEmpresa And Llave=@key;
END



GO
/****** Object:  StoredProcedure [dbo].[ObtenerEmpresaTodas]    Script Date: 14/1/2019 18:33:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Procedure [dbo].[ObtenerEmpresaTodas]
as
begin
	Select IdEmpresa,Nombre,Llave,Estado from Empresa;
END

GO
/****** Object:  StoredProcedure [dbo].[ObtenerUsuario]    Script Date: 14/1/2019 18:33:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[ObtenerUsuario]
@idUsuario varchar(10)
as
begin
	Select u.IdUsuario,u.Nombres,u.Apellidos,u.Estado from Usuario1 as u
	where IdUsuario=@idUsuario;
END
GO
/****** Object:  StoredProcedure [dbo].[RegistrarUsuario]    Script Date: 14/1/2019 18:33:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[RegistrarUsuario]
@IdUsuario varchar(20),@Nombres varchar(100),@Apellidos varchar(100),@Clave varchar(100)
as
begin
	insert into Usuario1 (IdUsuario,Nombres,Apellidos,Clave,Estado) values(@IdUsuario,@Nombres,@Apellidos,@Clave,1);
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_Login]    Script Date: 14/1/2019 18:33:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[Sp_Login]
@IdUsuario varchar(20),@clave varchar(100)
as
Begin
  declare @cont int,@token varbinary(200),@PassFecha Varchar(120);
  
  Select @cont=COUNT(1) from Usuario1 
    Where IdUsuario=@IdUsuario And Clave=@clave;

  If @cont>0
  begin
    select @PassFecha= cast(@clave as varchar(100))+cast(GETDATE() as varchar(20));
	select @token= ENCRYPTBYPASSPHRASE('IDAT',@PassFecha);

	Insert Into Token Values(@IdUsuario,@token,GETDATE(),null);

	select @token  As Respuesta
  end
  else
  begin
	 select 'No existe el Usuario' As Respuesta
  end
end


GO
/****** Object:  StoredProcedure [dbo].[Sp_Login_Token]    Script Date: 14/1/2019 18:33:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Sp_Login_Token]
@IdUsuario VARCHAR(20),@clave VARCHAR(100),@TOKEN VARCHAR(100)
as
Begin
  declare @cont int;
  
  Select @cont=COUNT(1) from Usuario1 Where IdUsuario=@IdUsuario And Clave=@clave;

  If @cont>0
  begin
    
	Insert Into Token Values(@IdUsuario,@token,GETDATE(),null);

	select @token  As Respuesta
  end
  else
  begin
	 select 'Error:No existe el Usuario' As Respuesta
  end
end
GO
/****** Object:  StoredProcedure [dbo].[ValidarUsuario]    Script Date: 14/1/2019 18:33:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
 


create Procedure [dbo].[ValidarUsuario]
@Username varchar(15),@Pass varchar(10)
as
begin
	select count(*) as Cantidad from Usuario
	where Username=@Username and Pass=@Pass;
END

GO
USE [master]
GO
ALTER DATABASE [BD_Sunat1] SET  READ_WRITE 
GO

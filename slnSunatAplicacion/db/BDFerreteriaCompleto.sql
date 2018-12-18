USE [master]
GO
/****** Object:  Database [BD_Ferreteria]    Script Date: 18/12/2018 00:23:57 ******/
CREATE DATABASE [BD_Ferreteria]
GO

USE [BD_Ferreteria]
GO
/****** Object:  Table [dbo].[Auditoria]    Script Date: 18/12/2018 00:23:57 ******/
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
/****** Object:  Table [dbo].[Llave]    Script Date: 18/12/2018 00:23:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Llave](
	[id] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 18/12/2018 00:23:57 ******/
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
/****** Object:  StoredProcedure [dbo].[Usp_AdministrarProducto]    Script Date: 18/12/2018 00:23:57 ******/
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
/****** Object:  StoredProcedure [dbo].[Usp_InsertaAuditoria]    Script Date: 18/12/2018 00:23:57 ******/
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
USE [master]
GO
ALTER DATABASE [BD_Ferreteria] SET  READ_WRITE 
GO

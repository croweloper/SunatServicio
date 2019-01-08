USE [BD_Ferreteria]
GO
/****** Object:  StoredProcedure [dbo].[Usp_AdministrarProducto]    Script Date: 7/1/2019 19:24:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[Usp_AdministrarProducto]
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
/* --------------------------------------------------------------------- */

USE [BD_Ferreteria]
GO
/****** Object:  StoredProcedure [dbo].[Usp_InsertaAuditoria]    Script Date: 7/1/2019 19:24:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [dbo].[Usp_InsertaAuditoria]
@idModificado varchar(20),@CampoModificado varchar(100),
@idTabla Varchar(50),@Accion varchar(1),@Usuario varchar(20),
@DatoAnterior varchar(500),@DatoNuevo Varchar(500)
as
begin
	Insert Into Auditoria (IdModificado,CampoModificado,IdTabla,Accion,Usuario,Fecha,DatoAnterior,DatoNuevo) 
	Values(@idModificado,@CampoModificado,@idTabla, @Accion,@Usuario,GETDATE(),@DatoAnterior,@DatoNuevo);
end
use master
go

if exists(select * from sys.databases where name='ZapateriaValdez')
	drop database ZapateriaValdez
go

create database ZapateriaValdez
go

use ZapateriaValdez
go

CREATE TABLE [Cliente] (
  [ID] int identity(1, 1) NOT NULL primary key,
  [Nombre] varchar(255) NULL,
  [Direccion] varchar(255) NULL,
  [Telefono] varchar(9) NULL,
  [Email] varchar(255) NULL,
  [Rol]	bit NULL,
  [Contraseña] varchar(25) NULL
)
GO

CREATE TABLE [Boleta] (
  [ID] int identity(1,1) NOT NULL primary key,
  [Cliente] int NULL,
  [Fecha] date NULL,
  [Total] decimal(38,2) NULL
)
GO

CREATE TABLE [DetalleBoleta] (
  [ID] int identity(1,1) NOT NULL primary key,
  [Boleta] int NULL,
  [Producto] int NULL,
  [Cantidad] int NULL,
  [Subtotal] decimal(38,2) NULL
)
GO

CREATE TABLE [Categoria] (
  [ID] int identity(1,1) NOT NULL primary key,
  [Nombre] varchar(255) NOT NULL,
  [Imagen] varchar(255) NOT NULL
)
GO

INSERT INTO Categoria ([Nombre], [Imagen])  VALUES
('Zapatilla', 'zapatilla.jpg'),
('Sandalia', 'sandalia.jpg'),
('Zapato', 'zapato.jpg'),
('Botín', 'botin.jpg'),
('Escolar', 'escolar.jpg')
GO

CREATE TABLE [Marca] (
  [ID] int identity(1,1) NOT NULL primary key,
  [Nombre] varchar(255) NULL
)
GO

INSERT INTO [Marca] ([Nombre]) VALUES 
('Skeche'),
('Rebook'),
('Adidas'),
('Nike'),
('Puma'),
('Vizzano'),
('Renzo Renzini'),
('Faena')
GO

CREATE TABLE [Galeria] (
[ID] int identity(1,1) NOT NULL primary key,
[Imagen] varchar(255) NOT NULL,
[Imagen_2] varchar(255),
[Imagen_3] varchar(255),
[Imagen_4] varchar(255),
[Imagen_5] varchar (255)
)
GO


CREATE TABLE [Talla] (
[ID] int identity(1, 1) NOT NULL primary key,
[Numero] int not null
)
GO

INSERT INTO [Talla] ([Numero]) VALUES
(28), (29), (30), (31), (32),(33),(34), (35), (36), (37), (38), (39), (40), (41), (42), (43), (44), (45)
GO
--Detalle Talla
CREATE TABLE [DetalleTalla] (
[ID] int identity(1, 1) NOT NULL primary key,
[Talla_1] int,
[Talla_2] int,
[Talla_3] int,
[Talla_4] int,
[Talla_5] int
)
GO

INSERT INTO [DetalleTalla] ([Talla_1], [Talla_2], [Talla_3], [Talla_4], [Talla_5]) VALUES

--------------------------------------------Mujeres---------------------------------------
--5
(1, 2, 4, 6, 7),
(2, 4, 5, 6, 8),
(6, 7, 8, 9, 10),
(2, 5, 9, 10, 12),
(6, 7, 8, 10, 11),

--10
(8, 10, 11, 12, 6),
(3, 4, 6, 8, 9),
(5, 8, 10, 11, 9),
(6, 8, 9, 10, 11),
(9, 10, 11, 12, 8),
--15
(5, 9, 8, 11, 7),
(8, 9, 6, 7, 10),
(7, 9, 10, 11, 12),
(7, 8, 9, 10, 12),
(6, 5, 7, 9, 11),
--20
(10, 11, 9, 12, 8),
(9, 7, 10, 11, 12),
(2, 3, 4, 6, 7),
(7, 8, 10, 11, 12),
(3, 4, 6, 7, 9),
--25
(1, 2, 4, 6, 7),
(2, 4, 5, 6, 8),
(6, 7, 8, 9, 10),
(2, 5, 9, 10, 12),
(6, 7, 8, 10, 11),
--30
(8, 10, 11, 12, 6),
(3, 4, 6, 8, 9),
(5, 8, 10, 11, 9),
(6, 8, 9, 10, 11),
(9, 10, 11, 12, 8),
--35
(1, 2, 4, 6, 7),
(2, 4, 5, 6, 8),
(6, 7, 8, 9, 10),
(2, 5, 9, 10, 12),
(6, 7, 8, 10, 11),
--40 - Talla de Niñas 
(13, 14, 15, 16, 17),
(13, 14, 15, 16, 17),
(13, 14, 15, 16, 17),
(13, 14, 15, 16, 17),
(13, 14, 15, 16, 17),
--------------------------------------------Hombres---------------------------------------
--45
(10, 11, 12, 9, 8),
(1, 2, 4, 5, 6),
(2, 5, 6, 9, 10),
(6, 5, 8, 10, 9),
(8, 9, 7, 10, 6),
--50
(8, 10, 11, 12, 6),
(3, 4, 6, 8, 9),
(5, 8, 10, 11, 9),
(6, 8, 9, 10, 11),
(9, 10, 11, 12, 8),
--55
(8, 10, 11, 12, 6),
(3, 4, 6, 8, 9),
(5, 8, 10, 11, 9),
(6, 8, 9, 10, 11),
(9, 10, 11, 12, 8),
--60
(10, 11, 12, 9, 8),
(1, 2, 4, 5, 6),
(2, 5, 6, 9, 10),
(6, 5, 8, 10, 9),
(8, 9, 7, 10, 6),
--65
(5, 9, 8, 11, 7),
(8, 9, 6, 7, 10),
(7, 9, 10, 11, 12),
(7, 8, 9, 10, 12),
(6, 5, 7, 9, 11),
--70
(10, 11, 12, 9, 8),
(1, 2, 4, 5, 6),
(2, 5, 6, 9, 10),
(6, 5, 8, 10, 9),
(8, 9, 7, 10, 6),
--75
(10, 11, 12, 9, 8),
(1, 2, 4, 5, 6),
(2, 5, 6, 9, 10),
(6, 5, 8, 10, 9),
(8, 9, 7, 10, 6),
--80  -  Talla de Niños 
(13, 14, 15, 16, 17),
(13, 14, 15, 16, 17),
(13, 14, 15, 16, 17),
(13, 14, 15, 16, 17),
(13, 14, 15, 16, 17)
GO


CREATE TABLE [Producto] (
  [ID] int identity(1, 1) NOT NULL primary key,
  [Nombre] varchar(255) NOT NULL,
  [Descripcion] varchar(255) NOT NULL,
  [Marca] int NOT NULL,
  [Precio] decimal(6, 2) NOT NULL,
  [Categoria] int NOT NULL,
  [Stock] int NOT NULL,
  [DetalleTalla] int,
  [Color] varchar(255) NOT NULL,
  [Galeria] int,
  [FechaRegistro] date NOT NULL,
  [UnidadesVendidas] int NOT NULL,
  [Estado] bit NOT NULL
)
GO
ALTER TABLE ZapateriaValdez.dbo.Producto
ALTER COLUMN Descripcion VARCHAR(400);

go

CREATE TRIGGER [ProductoIdentity] ON [Producto] FOR INSERT
AS
UPDATE [Producto] SET [DetalleTalla] = p.ID, [Galeria] = p.ID
FROM [Producto] p INNER JOIN inserted ON p.ID = inserted.id
GO



CREATE TABLE [Consulta] (
    [ID] int identity NOT NULL primary key,
    [Nombres] varchar(255) NULL,
    [Apellidos] varchar(255) NULL,
    [Correo] varchar(255) NULL,
    [Asunto] varchar(255) NULL,
    [Mensaje] varchar(255) NULL,
)
GO

select * from consulta
go


ALTER TABLE [Boleta] ADD CONSTRAINT [fk_Boleta_Cliente] FOREIGN KEY ([Cliente]) REFERENCES [Cliente] ([ID])
GO
ALTER TABLE [DetalleBoleta] ADD CONSTRAINT [fk_DetalleOrden_Boleta] FOREIGN KEY ([Boleta]) REFERENCES [Boleta] ([ID])
GO
ALTER TABLE [DetalleBoleta] ADD CONSTRAINT [fk_DetalleOrden_Producto] FOREIGN KEY ([Producto]) REFERENCES [Producto] ([ID])
GO


ALTER TABLE [Producto] ADD CONSTRAINT [fk_Producto_Marca] FOREIGN KEY ([Marca]) REFERENCES [Marca] ([ID])
GO
ALTER TABLE [Producto] ADD CONSTRAINT [fk_Producto_Categoria] FOREIGN KEY ([Categoria]) REFERENCES [Categoria] ([ID])
GO
ALTER TABLE [Producto] ADD CONSTRAINT [fk_Producto_DetalleTalla] FOREIGN KEY ([DetalleTalla]) REFERENCES [DetalleTalla] ([ID])
GO
ALTER TABLE [Producto] ADD CONSTRAINT [fk_Producto_Galeria] FOREIGN KEY ([Galeria]) REFERENCES [Galeria] ([ID])
GO


ALTER TABLE [DetalleTalla] ADD CONSTRAINT [fk_DetalleTalla_Talla_1] FOREIGN KEY ([Talla_1]) REFERENCES [Talla] ([ID])
GO
ALTER TABLE [DetalleTalla] ADD CONSTRAINT [fk_DetalleTalla_Talla_2] FOREIGN KEY ([Talla_2]) REFERENCES [Talla] ([ID])
GO
ALTER TABLE [DetalleTalla] ADD CONSTRAINT [fk_DetalleTalla_Talla_3] FOREIGN KEY ([Talla_3]) REFERENCES [Talla] ([ID])
GO
ALTER TABLE [DetalleTalla] ADD CONSTRAINT [fk_DetalleTalla_Talla_4] FOREIGN KEY ([Talla_4]) REFERENCES [Talla] ([ID])
GO
ALTER TABLE [DetalleTalla] ADD CONSTRAINT [fk_DetalleTalla_Talla_5] FOREIGN KEY ([Talla_5]) REFERENCES [Talla] ([ID])
GO

IF OBJECT_ID('usp_listar_productos') is not null
	drop proc usp_listar_productos
GO
CREATE PROCEDURE usp_listar_productos
AS
SELECT 
p.ID, p.Nombre, p.Descripcion, m.Nombre [Marca], p.Precio, c.Nombre [Categoria], p.Stock, p.Color, p.FechaRegistro, p.UnidadesVendidas, p.Estado,
t1.Numero [Talla_1], t2.Numero [Talla_2], t3.Numero [Talla_3], t4.Numero [Talla_4], t5.Numero [Talla_5], g.Imagen, g.Imagen_2, g.Imagen_3, g.Imagen_4, g.Imagen_5
FROM Producto p
INNER JOIN Marca m ON p.Marca = m.ID
INNER JOIN Categoria c ON p.Categoria = c.ID
INNER JOIN DetalleTalla dt ON p.DetalleTalla = dt.ID
INNER JOIN Talla t1 ON dt.Talla_1 = t1.ID
INNER JOIN Talla t2 ON dt.Talla_2 = t2.ID
INNER JOIN Talla t3 ON dt.Talla_3 = t3.ID
INNER JOIN Talla t4 ON dt.Talla_4 = t4.ID
INNER JOIN Talla t5 ON dt.Talla_5 = t5.ID
INNER JOIN Galeria g ON p.Galeria = g.ID
GO

EXEC usp_listar_productos
GO


CREATE PROCEDURE SP_REGISTRAR_CONSULTA (
    @Nombres varchar (255),
    @Apellidos varchar (255),
    @Correo varchar (255),
    @Asunto varchar (255),
    @Mensaje varchar (255)
)
AS
BEGIN
    INSERT INTO Consulta(Nombres, Apellidos, Correo, Asunto, Mensaje)
    VALUES (@Nombres, @Apellidos, @Correo, @Asunto, @Mensaje)
END
GO

--===========================================
IF OBJECT_ID('sp_RegistrarCliente') is not null
	drop proc sp_RegistrarCliente
GO
create procedure sp_RegistrarCliente(
@Email varchar (255),
@Contraseña varchar (25),
@Nombre varchar(255) ,
@Direccion varchar(255) ,
@Telefono varchar(9) ,
@Registrado bit output,
@Mensaje varchar(100)output
)
as
begin
	if (not exists(select * from Cliente where Email = @Email))
	begin 
		insert into Cliente(Email, Contraseña, Nombre, Direccion, Telefono) values (@Email, @Contraseña, @Nombre, @Direccion, @Telefono)
		set @Registrado = 1
		set @Mensaje = 'Cliente Registrado'
	end
	else
	begin
		set @Registrado = 0
		set @Mensaje = 'Correo ya existe'
	end
end

--===========================================
IF OBJECT_ID('sp_ValidarCliente', 'P') is not null
	drop proc sp_ValidarCliente
GO
create procedure sp_ValidarCliente(
@Email varchar (255),
@Contraseña varchar (25)
)
As
Begin 
	if(exists(select * from Cliente where Email = @Email and Contraseña = @Contraseña))
		Select Id from Cliente where Email = @Email and @Contraseña = @Contraseña
	else 
		select '0'
end
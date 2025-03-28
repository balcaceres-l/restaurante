USE [Restaurante_PBD]
GO
/****** Object:  Table [dbo].[Areas]    Script Date: 27/3/2025 18:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Areas](
	[id_area] [int] IDENTITY(1,1) NOT NULL,
	[nombre_area] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_area] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Auditorias]    Script Date: 27/3/2025 18:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auditorias](
	[id_auditoria] [int] IDENTITY(1,1) NOT NULL,
	[nombre_tabla] [varchar](255) NULL,
	[id_usuario] [int] NOT NULL,
	[accion] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_auditoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria_Ingrediente]    Script Date: 27/3/2025 18:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria_Ingrediente](
	[id_categoria_ingrediente] [int] IDENTITY(1,1) NOT NULL,
	[nombre_categoria] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_categoria_ingrediente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria_Utensilio]    Script Date: 27/3/2025 18:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria_Utensilio](
	[id_categoria_utensilio] [int] IDENTITY(1,1) NOT NULL,
	[nombre_categoria] [varchar](255) NULL,
	[descripcion] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_categoria_utensilio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 27/3/2025 18:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[id_empleado] [int] IDENTITY(1,1) NOT NULL,
	[id_usuario] [int] NOT NULL,
	[fechaContratacion] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado_Ingredientes]    Script Date: 27/3/2025 18:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado_Ingredientes](
	[id_estado_ingrediente] [int] IDENTITY(1,1) NOT NULL,
	[estado] [varchar](255) NULL,
	[descripcion] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_estado_ingrediente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado_Utensilios]    Script Date: 27/3/2025 18:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado_Utensilios](
	[id_estado_utensilio] [int] IDENTITY(1,1) NOT NULL,
	[estado] [varchar](255) NULL,
	[descripcion] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_estado_utensilio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Horarios]    Script Date: 27/3/2025 18:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horarios](
	[id_horario] [int] IDENTITY(1,1) NOT NULL,
	[dias_descanso] [varchar](255) NULL,
	[dias_laborales] [varchar](255) NULL,
	[hora_entrada] [time](7) NULL,
	[hora_salida] [time](7) NULL,
	[id_empleado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_horario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingredientes]    Script Date: 27/3/2025 18:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingredientes](
	[id_ingrediente] [int] IDENTITY(1,1) NOT NULL,
	[id_tipo_ingrediente] [int] NOT NULL,
	[id_categoria_ingrediente] [int] NOT NULL,
	[nombre_ingrediente] [varchar](255) NULL,
	[descripcion] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_ingrediente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventario_Ingredientes]    Script Date: 27/3/2025 18:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventario_Ingredientes](
	[id_inventario] [int] IDENTITY(1,1) NOT NULL,
	[id_ingrediente] [int] NOT NULL,
	[id_proveedor] [int] NOT NULL,
	[id_area] [int] NOT NULL,
	[id_estado_ingrediente] [int] NOT NULL,
	[descripcion] [varchar](255) NULL,
	[cantidad] [int] NULL,
	[fecha_ingreso] [date] NULL,
	[vencimiento] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_inventario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventario_Utensilios]    Script Date: 27/3/2025 18:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventario_Utensilios](
	[id_inventario] [int] IDENTITY(1,1) NOT NULL,
	[id_utensilio] [int] NOT NULL,
	[id_area] [int] NOT NULL,
	[id_estado_utensilio] [int] NOT NULL,
	[descripcion] [varchar](255) NULL,
	[cantidad] [int] NULL,
	[costo_unitario] [float] NULL,
	[ubicacion_detallada] [varchar](255) NULL,
	[fecha_ingreso] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_inventario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pagos]    Script Date: 27/3/2025 18:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagos](
	[id_pago] [int] IDENTITY(1,1) NOT NULL,
	[id_empleado] [int] NOT NULL,
	[fecha_inicio] [date] NULL,
	[fecha_pago] [date] NULL,
	[horas_extras] [float] NULL,
	[descuentos] [float] NULL,
	[salario_neto] [float] NULL,
	[id_puesto] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permisos_area]    Script Date: 27/3/2025 18:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permisos_area](
	[id_permisos] [int] IDENTITY(1,1) NOT NULL,
	[id_rol] [int] NOT NULL,
	[id_area] [int] NOT NULL,
	[puede_agregar] [bit] NULL,
	[puede_modificar] [bit] NULL,
	[puede_eliminar] [bit] NULL,
	[puede_consultar] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_permisos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 27/3/2025 18:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[id_proveedor] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](255) NULL,
	[telefono] [varchar](255) NULL,
	[correo] [varchar](255) NULL,
	[direccion] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Puestos]    Script Date: 27/3/2025 18:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Puestos](
	[id_puesto] [int] IDENTITY(1,1) NOT NULL,
	[id_area] [int] NOT NULL,
	[nombre_puesto] [varchar](255) NULL,
	[salario_base] [float] NULL,
	[id_empleado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_puesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 27/3/2025 18:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[id_rol] [int] IDENTITY(1,1) NOT NULL,
	[nombre_rol] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Ingrediente]    Script Date: 27/3/2025 18:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Ingrediente](
	[id_tipo_ingrediente] [int] IDENTITY(1,1) NOT NULL,
	[nombre_tipo] [varchar](255) NULL,
	[descripcion] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipo_ingrediente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Utensilio]    Script Date: 27/3/2025 18:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Utensilio](
	[id_tipo_utensilio] [int] IDENTITY(1,1) NOT NULL,
	[nombre_tipo] [varchar](255) NULL,
	[descripcion] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipo_utensilio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 27/3/2025 18:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[id_rol] [int] NOT NULL,
	[usuario] [varchar](255) NULL,
	[clave] [varchar](255) NULL,
	[nombre] [varchar](255) NULL,
	[apellido] [varchar](255) NULL,
	[correo] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Utensilios]    Script Date: 27/3/2025 18:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Utensilios](
	[id_utensilio] [int] IDENTITY(1,1) NOT NULL,
	[id_tipo_utensilio] [int] NOT NULL,
	[id_categoria_utensilio] [int] NOT NULL,
	[id_proveedor] [int] NOT NULL,
	[nombre_utensilio] [varchar](255) NULL,
	[descripcion] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_utensilio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Auditorias]  WITH CHECK ADD FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuarios] ([id_usuario])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuarios] ([id_usuario])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Horarios]  WITH CHECK ADD  CONSTRAINT [FK_Horarios_Empleados] FOREIGN KEY([id_empleado])
REFERENCES [dbo].[Empleados] ([id_empleado])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Horarios] CHECK CONSTRAINT [FK_Horarios_Empleados]
GO
ALTER TABLE [dbo].[Ingredientes]  WITH CHECK ADD FOREIGN KEY([id_categoria_ingrediente])
REFERENCES [dbo].[Categoria_Ingrediente] ([id_categoria_ingrediente])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ingredientes]  WITH CHECK ADD FOREIGN KEY([id_tipo_ingrediente])
REFERENCES [dbo].[Tipo_Ingrediente] ([id_tipo_ingrediente])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Inventario_Ingredientes]  WITH CHECK ADD FOREIGN KEY([id_area])
REFERENCES [dbo].[Areas] ([id_area])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Inventario_Ingredientes]  WITH CHECK ADD FOREIGN KEY([id_estado_ingrediente])
REFERENCES [dbo].[Estado_Ingredientes] ([id_estado_ingrediente])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Inventario_Ingredientes]  WITH CHECK ADD FOREIGN KEY([id_ingrediente])
REFERENCES [dbo].[Ingredientes] ([id_ingrediente])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Inventario_Ingredientes]  WITH CHECK ADD FOREIGN KEY([id_proveedor])
REFERENCES [dbo].[Proveedor] ([id_proveedor])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Inventario_Utensilios]  WITH CHECK ADD FOREIGN KEY([id_area])
REFERENCES [dbo].[Areas] ([id_area])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Inventario_Utensilios]  WITH CHECK ADD FOREIGN KEY([id_estado_utensilio])
REFERENCES [dbo].[Estado_Utensilios] ([id_estado_utensilio])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Inventario_Utensilios]  WITH CHECK ADD FOREIGN KEY([id_utensilio])
REFERENCES [dbo].[Utensilios] ([id_utensilio])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD FOREIGN KEY([id_empleado])
REFERENCES [dbo].[Empleados] ([id_empleado])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD  CONSTRAINT [fk_pagos_puestos] FOREIGN KEY([id_puesto])
REFERENCES [dbo].[Puestos] ([id_puesto])
GO
ALTER TABLE [dbo].[Pagos] CHECK CONSTRAINT [fk_pagos_puestos]
GO
ALTER TABLE [dbo].[Permisos_area]  WITH CHECK ADD FOREIGN KEY([id_area])
REFERENCES [dbo].[Areas] ([id_area])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Permisos_area]  WITH CHECK ADD FOREIGN KEY([id_rol])
REFERENCES [dbo].[roles] ([id_rol])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Puestos]  WITH CHECK ADD FOREIGN KEY([id_area])
REFERENCES [dbo].[Areas] ([id_area])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Puestos]  WITH CHECK ADD  CONSTRAINT [FK_Puestos_Empleados] FOREIGN KEY([id_empleado])
REFERENCES [dbo].[Empleados] ([id_empleado])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Puestos] CHECK CONSTRAINT [FK_Puestos_Empleados]
GO
ALTER TABLE [dbo].[usuarios]  WITH CHECK ADD FOREIGN KEY([id_rol])
REFERENCES [dbo].[roles] ([id_rol])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Utensilios]  WITH CHECK ADD FOREIGN KEY([id_categoria_utensilio])
REFERENCES [dbo].[Categoria_Utensilio] ([id_categoria_utensilio])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Utensilios]  WITH CHECK ADD FOREIGN KEY([id_proveedor])
REFERENCES [dbo].[Proveedor] ([id_proveedor])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Utensilios]  WITH CHECK ADD FOREIGN KEY([id_tipo_utensilio])
REFERENCES [dbo].[Tipo_Utensilio] ([id_tipo_utensilio])
ON DELETE CASCADE
GO
/****** Object:  StoredProcedure [dbo].[ActualizarOAsignarPuesto]    Script Date: 27/3/2025 18:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarOAsignarPuesto]
     @id_empleado INT,
    @nombre_puesto VARCHAR(255)
AS
BEGIN
    SET NOCOUNT ON;
    
    DECLARE @id_area INT, @salario_base FLOAT;
    
    -- Determinar el id_area y el salario base según el nombre del puesto
    IF @nombre_puesto = 'Chef'
    BEGIN
        SET @id_area = 1; -- Cocina
        SET @salario_base = 3200.59;
    END
    ELSE IF @nombre_puesto = 'Bodeguero'
    BEGIN
        SET @id_area = 2; -- Bodega
        SET @salario_base = 589.89;
    END
    ELSE IF @nombre_puesto = 'Cocinero'
    BEGIN
        SET @id_area = 3; -- Cuarto Frío
        SET @salario_base = 800.14;
    END
    ELSE IF @nombre_puesto = 'Bar tender'
    BEGIN
        SET @id_area = 4; -- Bar
        SET @salario_base = 788.63;
    END
    ELSE IF @nombre_puesto = 'Recepcionista'
    BEGIN
        SET @id_area = 5; -- Recepción
        SET @salario_base = 456.12;
    END
    ELSE
        THROW 50000, 'Puesto no válido.', 1;

    -- Verificar si el empleado ya tiene un puesto asignado
    IF EXISTS (SELECT 1 FROM Puestos WHERE id_empleado = @id_empleado)
    BEGIN
        -- Si el empleado ya tiene puesto, actualizarlo
        UPDATE Puestos
        SET id_area = @id_area, 
            nombre_puesto = @nombre_puesto, 
            salario_base = @salario_base
        WHERE id_empleado = @id_empleado;
    END
    ELSE
    BEGIN
        -- Si el empleado no tiene puesto, insertar uno nuevo
        INSERT INTO Puestos (id_area, id_empleado, nombre_puesto, salario_base)
        VALUES (@id_area, @id_empleado, @nombre_puesto, @salario_base);
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[AsignarPuesto]    Script Date: 27/3/2025 18:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AsignarPuesto]
     @id_empleado INT,
    @nombre_puesto VARCHAR(255)
AS
BEGIN
    SET NOCOUNT ON;
    
    DECLARE @id_area INT, @salario_base FLOAT;
    
    -- Determinar el id_area y el salario según el nombre del puesto
    IF @nombre_puesto = 'Chef'
    BEGIN
        SET @id_area = 1; -- Cocina
        SET @salario_base = 3200.59;
    END
    ELSE IF @nombre_puesto = 'Bodeguero'
    BEGIN
        SET @id_area = 2; -- Bodega
        SET @salario_base = 589.89;
    END
    ELSE IF @nombre_puesto = 'Cocinero'
    BEGIN
        SET @id_area = 3; -- Cuarto Frío
        SET @salario_base = 800.14;
    END
    ELSE IF @nombre_puesto = 'Bar tender'
    BEGIN
        SET @id_area = 4; -- Bar
        SET @salario_base = 788.63;
    END
    ELSE IF @nombre_puesto = 'Recepcionista'
    BEGIN
        SET @id_area = 5; -- Recepción
        SET @salario_base = 456.12;
    END
    ELSE
        THROW 50000, 'Puesto no válido.', 1;
    
    -- Insertar en la tabla Puestos
    INSERT INTO Puestos (id_area, id_empleado, nombre_puesto, salario_base)
    VALUES (@id_area, @id_empleado, @nombre_puesto, @salario_base);
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertarUsuario]    Script Date: 27/3/2025 18:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarUsuario]
    @id_rol INT,
    @usuario VARCHAR(255),
    @clave VARCHAR(255),
    @nombre VARCHAR(255),
    @apellido VARCHAR(255),
    @correo VARCHAR(255)
    
as
BEGIN 
    INSERT INTO usuarios (id_rol, usuario, nombre, correo, apellido, clave)
    VALUES (@id_rol, @usuario, @clave, @nombre, @apellido, @correo);
    
END;
GO
/****** Object:  StoredProcedure [dbo].[ObtenerHorarioPorId]    Script Date: 27/3/2025 18:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ObtenerHorarioPorId]
    @id_horario INT
AS
BEGIN
    SELECT 
        id_horario,
        dias_descanso,
        dias_laborales,
        hora_entrada,
        hora_salida
    FROM 
        Horarios
    WHERE 
        id_horario = @id_horario;
END
GO
/****** Object:  StoredProcedure [dbo].[Obtenertrabajo]    Script Date: 27/3/2025 18:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Obtenertrabajo]
    @id_horario INT
AS
BEGIN
    SELECT 
        dias_descanso,
        dias_laborales
    FROM 
        Horarios
    WHERE 
        id_horario = @id_horario;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ActualizarEmpleado]    Script Date: 27/3/2025 18:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ActualizarEmpleado]
    @id_usuario INT,
    @nuevo_nombre VARCHAR(255),
    @nuevo_rol VARCHAR(255), -- Ahora el rol es un STRING
    @nueva_fechaContratacion DATE
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @id_rol INT;
    
    -- Obtener el id_rol a partir del nombre del rol
    SELECT @id_rol = id_rol FROM roles WHERE nombre_rol = @nuevo_rol;
    
    -- Si el rol no existe, lanzar un error
    IF @id_rol IS NULL
    BEGIN
        THROW 50000, 'El rol especificado no existe.', 1;
    END

    -- Actualizar los datos en la tabla usuarios
    UPDATE usuarios
    SET nombre = @nuevo_nombre, id_rol = @id_rol
    WHERE id_usuario = @id_usuario;

    -- Actualizar la fecha de contratación en la tabla empleados
    UPDATE Empleados
    SET fechaContratacion = @nueva_fechaContratacion
    WHERE id_usuario = @id_usuario;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_EditarUsuario]    Script Date: 27/3/2025 18:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_EditarUsuario]
    @id_usuario INT,
    @nuevo_nombre VARCHAR(255) = NULL,
    @nuevo_apellido VARCHAR(255) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE usuarios
    SET 
        nombre = ISNULL(@nuevo_nombre, nombre),
        apellido = ISNULL(@nuevo_apellido, apellido)
    WHERE id_usuario = @id_usuario;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_EliminarUsuario]    Script Date: 27/3/2025 18:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_EliminarUsuario]
    @id_usuario INT
AS
BEGIN
    SET NOCOUNT ON;

    -- Verificar si el usuario existe antes de eliminar
    IF EXISTS (SELECT 1 FROM usuarios WHERE id_usuario = @id_usuario)
    BEGIN
        -- Eliminar usuario (ON DELETE CASCADE eliminará también sus datos en Empleados)
        DELETE FROM usuarios WHERE id_usuario = @id_usuario;

        PRINT 'Usuario eliminado correctamente.';
    END
    ELSE
    BEGIN
        PRINT 'El usuario no existe.';
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerEmpleadosRol6]    Script Date: 27/3/2025 18:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ObtenerEmpleadosRol6]
AS
BEGIN
    SET NOCOUNT ON;
    
    SELECT e.id_empleado, u.nombre, u.apellido, e.fechaContratacion, 
       COALESCE(p.nombre_puesto, 'Puesto no asignado') AS nombre_puesto
	FROM Empleados e
	INNER JOIN usuarios u ON e.id_usuario = u.id_usuario
	LEFT JOIN Puestos p ON e.id_empleado = p.id_empleado
	WHERE u.id_rol = 6;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerIdEmpleado]    Script Date: 27/3/2025 18:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ObtenerIdEmpleado]
    @id_usuario INT,
    @id_empleado INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    -- Obtener el id_empleado según el id_usuario
    SELECT @id_empleado = id_empleado
    FROM Empleados
    WHERE id_usuario = @id_usuario;

    -- Si no se encuentra el empleado, devolver NULL
    IF @id_empleado IS NULL
    BEGIN
        PRINT 'No se encontró un empleado con ese ID de usuario.';
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerTodosLosEmpleados]    Script Date: 27/3/2025 18:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ObtenerTodosLosEmpleados]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        u.id_usuario,
        u.nombre AS nombre_empleado,
        r.nombre_rol AS rol_empleado,
        e.fechaContratacion
    FROM Empleados e
    INNER JOIN usuarios u ON e.id_usuario = u.id_usuario
    INNER JOIN roles r ON u.id_rol = r.id_rol;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerUsuarioInfo]    Script Date: 27/3/2025 18:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ObtenerUsuarioInfo]
    @id_usuario INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        u.usuario,
        r.nombre_rol AS rol,
        u.nombre,
        u.apellido,
        e.fechaContratacion AS fecha_inicio
    FROM usuarios u
    INNER JOIN empleados e ON u.id_usuario = e.id_usuario
    INNER JOIN roles r ON u.id_rol = r.id_rol
    WHERE u.id_usuario = @id_usuario;
END;
GO
/****** Object:  StoredProcedure [dbo].[ValidarUsuario]    Script Date: 27/3/2025 18:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ValidarUsuario]
    @usuario VARCHAR(255),
    @clave VARCHAR(255),
    @mensaje VARCHAR(255) OUTPUT,
    @rol VARCHAR(255) OUTPUT,
    @id_usuario INT OUTPUT
AS
BEGIN
    DECLARE @idRol INT;

    -- Verificar si el usuario y la contraseña son correctos
    SELECT @idRol = u.id_rol, @id_usuario = u.id_usuario
    FROM usuarios u
    WHERE u.usuario = @usuario AND u.clave = @clave;

    -- Si se encontró el usuario y la contraseña son correctos
    IF @idRol IS NOT NULL
    BEGIN
        -- Obtener el nombre del rol
        SELECT @rol = r.nombre_rol
        FROM roles r
        WHERE r.id_rol = @idRol;

        SET @mensaje = 'Validación exitosa';
    END
    ELSE
    BEGIN
        -- Si no se encuentra el usuario o la contraseña es incorrecta
        SET @mensaje = 'Usuario o contraseña incorrectos';
        SET @rol = NULL;
        SET @id_usuario = -1; -- No válido
    END
END
-- Trigger para insertar un empleado al insertar un usuario
CREATE TRIGGER trg_AfterInsertUsuarios
ON usuarios
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    -- Insertar en la tabla Empleados
    INSERT INTO Empleados (id_usuario, fechaContratacion)
    SELECT id_usuario, GETDATE()  -- Usar la fecha actual como fecha de contratación
    FROM inserted;  -- La tabla "inserted" contiene las filas que se acaban de insertar en "usuarios"
END;
GO

-- Trigger para eliminar un empleado al eliminar un usuario
CREATE TRIGGER trg_AfterDeleteUsuarios
ON usuarios
AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON;

    -- Eliminar de la tabla Empleados
    DELETE FROM Empleados
    WHERE id_usuario IN (SELECT id_usuario FROM deleted);  -- La tabla "deleted" contiene las filas que se han eliminado de "usuarios"
END;
GO
GO

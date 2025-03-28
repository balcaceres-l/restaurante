USE [Restaurante_PBD]
GO
/****** Object:  Table [dbo].[Areas]    Script Date: 25/3/2025 11:00:43 ******/
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
/****** Object:  Table [dbo].[Auditorias]    Script Date: 25/3/2025 11:00:43 ******/
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
/****** Object:  Table [dbo].[Categoria_Ingrediente]    Script Date: 25/3/2025 11:00:43 ******/
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
/****** Object:  Table [dbo].[Categoria_Utensilio]    Script Date: 25/3/2025 11:00:43 ******/
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
/****** Object:  Table [dbo].[Empleados]    Script Date: 25/3/2025 11:00:43 ******/
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
/****** Object:  Table [dbo].[Estado_Ingredientes]    Script Date: 25/3/2025 11:00:43 ******/
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
/****** Object:  Table [dbo].[Estado_Utensilios]    Script Date: 25/3/2025 11:00:43 ******/
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
/****** Object:  Table [dbo].[Horarios]    Script Date: 25/3/2025 11:00:43 ******/
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
/****** Object:  Table [dbo].[Ingredientes]    Script Date: 25/3/2025 11:00:43 ******/
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
/****** Object:  Table [dbo].[Inventario_Ingredientes]    Script Date: 25/3/2025 11:00:43 ******/
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
/****** Object:  Table [dbo].[Inventario_Utensilios]    Script Date: 25/3/2025 11:00:43 ******/
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
/****** Object:  Table [dbo].[Pagos]    Script Date: 25/3/2025 11:00:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagos](
	[id_pago] [int] IDENTITY(1,1) NOT NULL,
	[id_empleado] [int] NOT NULL,
	[fecha_inicio] [date] NULL,
	[fecha_corte] [date] NULL,
	[fecha_pago] [date] NULL,
	[horas_extras] [float] NULL,
	[descuentos] [float] NULL,
	[salario_neto] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permisos_area]    Script Date: 25/3/2025 11:00:43 ******/
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
/****** Object:  Table [dbo].[Proveedor]    Script Date: 25/3/2025 11:00:43 ******/
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
/****** Object:  Table [dbo].[Puestos]    Script Date: 25/3/2025 11:00:43 ******/
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
/****** Object:  Table [dbo].[roles]    Script Date: 25/3/2025 11:00:43 ******/
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
/****** Object:  Table [dbo].[Tipo_Ingrediente]    Script Date: 25/3/2025 11:00:43 ******/
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
/****** Object:  Table [dbo].[Tipo_Utensilio]    Script Date: 25/3/2025 11:00:43 ******/
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
/****** Object:  Table [dbo].[usuarios]    Script Date: 25/3/2025 11:00:43 ******/
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
/****** Object:  Table [dbo].[Utensilios]    Script Date: 25/3/2025 11:00:43 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertarUsuario]    Script Date: 25/3/2025 11:00:43 ******/
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
/****** Object:  StoredProcedure [dbo].[ObtenerHorarioPorId]    Script Date: 25/3/2025 11:00:43 ******/
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
/****** Object:  StoredProcedure [dbo].[Obtenertrabajo]    Script Date: 25/3/2025 11:00:43 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EditarUsuario]    Script Date: 25/3/2025 11:00:43 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ObtenerEmpleadosRol6]    Script Date: 25/3/2025 11:00:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ObtenerEmpleadosRol6]
AS
BEGIN
    SET NOCOUNT ON;
    
    SELECT e.id_empleado, u.nombre, u.apellido, e.fechaContratacion
    FROM Empleados e
    INNER JOIN usuarios u ON e.id_usuario = u.id_usuario
    WHERE u.id_rol = 6;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerUsuarioInfo]    Script Date: 25/3/2025 11:00:43 ******/
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
/****** Object:  StoredProcedure [dbo].[ValidarUsuario]    Script Date: 25/3/2025 11:00:43 ******/
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
GO

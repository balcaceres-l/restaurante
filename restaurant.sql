USE [Restaurante_PBD]
GO
/****** Object:  Table [dbo].[Areas]    Script Date: 4/4/2025 11:05:08 ******/
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
/****** Object:  Table [dbo].[Auditorias]    Script Date: 4/4/2025 11:05:08 ******/
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
/****** Object:  Table [dbo].[Categoria_Ingrediente]    Script Date: 4/4/2025 11:05:08 ******/
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
/****** Object:  Table [dbo].[Categoria_Utensilio]    Script Date: 4/4/2025 11:05:08 ******/
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
/****** Object:  Table [dbo].[Empleados]    Script Date: 4/4/2025 11:05:08 ******/
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
/****** Object:  Table [dbo].[Estado_Ingredientes]    Script Date: 4/4/2025 11:05:08 ******/
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
/****** Object:  Table [dbo].[Estado_Utensilios]    Script Date: 4/4/2025 11:05:08 ******/
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
/****** Object:  Table [dbo].[Horarios]    Script Date: 4/4/2025 11:05:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horarios](
	[id_horario] [int] IDENTITY(1,1) NOT NULL,
	[dias_descanso] [date] NULL,
	[dias_laborales] [date] NULL,
	[id_empleado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_horario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingredientes]    Script Date: 4/4/2025 11:05:08 ******/
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
/****** Object:  Table [dbo].[Inventario_Ingredientes]    Script Date: 4/4/2025 11:05:08 ******/
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
/****** Object:  Table [dbo].[Inventario_Utensilios]    Script Date: 4/4/2025 11:05:08 ******/
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
/****** Object:  Table [dbo].[Pagos]    Script Date: 4/4/2025 11:05:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagos](
	[id_pago] [int] IDENTITY(1,1) NOT NULL,
	[horas_extras] [float] NULL,
	[descuentos] [float] NULL,
	[salario_neto] [float] NULL,
	[id_empleado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permisos_area]    Script Date: 4/4/2025 11:05:08 ******/
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
/****** Object:  Table [dbo].[Proveedor]    Script Date: 4/4/2025 11:05:08 ******/
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
/****** Object:  Table [dbo].[Puestos]    Script Date: 4/4/2025 11:05:08 ******/
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
/****** Object:  Table [dbo].[roles]    Script Date: 4/4/2025 11:05:08 ******/
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
/****** Object:  Table [dbo].[Tipo_Ingrediente]    Script Date: 4/4/2025 11:05:08 ******/
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
/****** Object:  Table [dbo].[Tipo_Utensilio]    Script Date: 4/4/2025 11:05:08 ******/
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
/****** Object:  Table [dbo].[usuarios]    Script Date: 4/4/2025 11:05:08 ******/
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
/****** Object:  Table [dbo].[Utensilios]    Script Date: 4/4/2025 11:05:08 ******/
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
/****** Object:  StoredProcedure [dbo].[ActualizarOAsignarPuesto]    Script Date: 4/4/2025 11:05:08 ******/
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
/****** Object:  StoredProcedure [dbo].[ActualizarSaldoBase]    Script Date: 4/4/2025 11:05:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarSaldoBase]
    @id_empleado INT,
    @nuevo_salario_base FLOAT,
    @nuevas_horas_extra FLOAT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @id_area INT;
    DECLARE @salario_base FLOAT;
    DECLARE @horas_extras FLOAT;
    DECLARE @salario_por_hora_extra FLOAT;
    DECLARE @ingreso_horas_extras FLOAT;
    DECLARE @salario_con_extras FLOAT;
    DECLARE @descuento_isss FLOAT;
    DECLARE @descuento_afp FLOAT;
    DECLARE @salario_despues_descuentos FLOAT;
    DECLARE @descuento_renta FLOAT;
    DECLARE @cuota_fija FLOAT;
    DECLARE @total_descuentos FLOAT;
    DECLARE @salario_neto FLOAT;

    -- 🔹 Actualizar salario base del empleado en la tabla Puestos
    UPDATE Puestos
    SET salario_base = @nuevo_salario_base
    WHERE id_empleado = @id_empleado;

    -- 🔹 Actualizar las horas extras en la tabla Pagos
    UPDATE Pagos
    SET horas_extras = @nuevas_horas_extra
    WHERE id_empleado = @id_empleado;

    -- 🔹 Obtener el área y salario base actualizado del empleado
    SELECT @id_area = p.id_area, @salario_base = p.salario_base
    FROM Puestos p
    WHERE p.id_empleado = @id_empleado;

    -- Si no se encontró un salario base, establecerlo en 0
    IF @salario_base IS NULL
        SET @salario_base = 0;

    -- 🔹 Obtener las horas extras actualizadas
    SELECT @horas_extras = COALESCE(SUM(horas_extras), 0)
    FROM Pagos
    WHERE id_empleado = @id_empleado;

    -- 🔹 Calcular el pago por hora extra: (salario base / 23) / 9.2 * 2
    SET @salario_por_hora_extra = ((@salario_base / 23) / 9.2) * 2;

    -- 🔹 Calcular ingresos por horas extras
    SET @ingreso_horas_extras = @horas_extras * @salario_por_hora_extra;

    -- 🔹 Calcular salario sumando horas extra
    SET @salario_con_extras = @salario_base + @ingreso_horas_extras;

    -- 🔹 Calcular descuentos ISSS (3%) con tope de $30.00 y AFP (7.25%)
    SET @descuento_isss = @salario_con_extras * 0.03;
    IF @descuento_isss > 30
        SET @descuento_isss = 30;

    SET @descuento_afp = @salario_con_extras * 0.0725;

    -- 🔹 Calcular salario después de ISSS y AFP
    SET @salario_despues_descuentos = @salario_con_extras - (@descuento_isss + @descuento_afp);

    -- 🔹 Calcular renta según el salario restante después de ISSS y AFP
    IF @salario_despues_descuentos <= 472.00
    BEGIN
        SET @descuento_renta = 0;
        SET @cuota_fija = 0;
    END
    ELSE IF @salario_despues_descuentos BETWEEN 472.01 AND 895.24
    BEGIN
        SET @descuento_renta = @salario_despues_descuentos * 0.10;
        SET @cuota_fija = 17.67;
    END
    ELSE IF @salario_despues_descuentos BETWEEN 895.25 AND 2038.10
    BEGIN
        SET @descuento_renta = @salario_despues_descuentos * 0.20;
        SET @cuota_fija = 60.00;
    END
    ELSE
    BEGIN
        SET @descuento_renta = @salario_despues_descuentos * 0.30;
        SET @cuota_fija = 288.57;
    END

    -- 🔹 Calcular el total de descuentos (ISSS, AFP, Renta y cuota fija)
    SET @total_descuentos = @descuento_isss + @descuento_afp + @descuento_renta + @cuota_fija;

    -- 🔹 Calcular salario neto
    SET @salario_neto = @salario_despues_descuentos - @descuento_renta - @cuota_fija;

    -- 🔹 Actualizar el campo "descuentos" en la tabla Pagos con el total de descuentos calculado
    UPDATE Pagos
    SET descuentos = @total_descuentos
    WHERE id_empleado = @id_empleado;

    -- 🔹 Devolver los resultados
    SELECT 
        @salario_base AS SalarioBase, 
        @salario_por_hora_extra AS PagoPorHoraExtra,
        @horas_extras AS HorasExtras, 
        @ingreso_horas_extras AS IngresoHorasExtras, 
        @total_descuentos AS TotalDescuentos, 
        @salario_neto AS SalarioNeto;
END;
GO
/****** Object:  StoredProcedure [dbo].[AsignarPuesto]    Script Date: 4/4/2025 11:05:08 ******/
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
/****** Object:  StoredProcedure [dbo].[CalcularSalarioNeto]    Script Date: 4/4/2025 11:05:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CalcularSalarioNeto]
    @id_empleado INT,
    @nuevo_salario_base FLOAT,
    @nuevas_horas_extra FLOAT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @id_area INT;
    DECLARE @salario_base FLOAT;
    DECLARE @horas_extras FLOAT;
    DECLARE @salario_por_hora_extra FLOAT;
    DECLARE @ingreso_horas_extras FLOAT;
    DECLARE @salario_con_extras FLOAT;
    DECLARE @descuento_isss FLOAT;
    DECLARE @descuento_afp FLOAT;
    DECLARE @salario_despues_descuentos FLOAT;
    DECLARE @descuento_renta FLOAT;
    DECLARE @cuota_fija FLOAT;
    DECLARE @total_descuentos FLOAT;
    DECLARE @salario_neto FLOAT;

    -- 🔹 Actualizar salario base del empleado en la tabla Puestos
    UPDATE Puestos
    SET salario_base = @nuevo_salario_base
    WHERE id_empleado = @id_empleado;

    -- 🔹 Actualizar las horas extras en la tabla Pagos
    UPDATE Pagos
    SET horas_extras = @nuevas_horas_extra
    WHERE id_empleado = @id_empleado;

    -- 🔹 Obtener el área y salario base actualizado del empleado
    SELECT @id_area = p.id_area, @salario_base = p.salario_base
    FROM Puestos p
    WHERE p.id_empleado = @id_empleado;

    -- Si no se encontró un salario base, establecerlo en 0
    IF @salario_base IS NULL
        SET @salario_base = 0;

    -- 🔹 Obtener las horas extras actualizadas
    SELECT @horas_extras = COALESCE(SUM(horas_extras), 0)
    FROM Pagos
    WHERE id_empleado = @id_empleado;

    -- 🔹 Calcular el pago por hora extra: (salario base / 23) / 9.2 * 2
    SET @salario_por_hora_extra = ((@salario_base / 23) / 9.2) * 2;

    -- 🔹 Calcular ingresos por horas extras
    SET @ingreso_horas_extras = @horas_extras * @salario_por_hora_extra;

    -- 🔹 Calcular salario sumando horas extra
    SET @salario_con_extras = @salario_base + @ingreso_horas_extras;

    -- 🔹 Calcular descuentos ISSS (3%) con tope de $30.00 y AFP (7.25%)
    SET @descuento_isss = @salario_con_extras * 0.03;
    IF @descuento_isss > 30
        SET @descuento_isss = 30;

    SET @descuento_afp = @salario_con_extras * 0.0725;

    -- 🔹 Calcular salario después de ISSS y AFP
    SET @salario_despues_descuentos = @salario_con_extras - (@descuento_isss + @descuento_afp);

    -- 🔹 Calcular renta según el salario restante después de ISSS y AFP
    IF @salario_despues_descuentos <= 472.00
    BEGIN
        SET @descuento_renta = 0;
        SET @cuota_fija = 0;
    END
    ELSE IF @salario_despues_descuentos BETWEEN 472.01 AND 895.24
    BEGIN
        SET @descuento_renta = @salario_despues_descuentos * 0.10;
        SET @cuota_fija = 17.67;
    END
    ELSE IF @salario_despues_descuentos BETWEEN 895.25 AND 2038.10
    BEGIN
        SET @descuento_renta = @salario_despues_descuentos * 0.20;
        SET @cuota_fija = 60.00;
    END
    ELSE
    BEGIN
        SET @descuento_renta = @salario_despues_descuentos * 0.30;
        SET @cuota_fija = 288.57;
    END

    -- 🔹 Calcular el total de descuentos (ISSS, AFP, Renta y cuota fija)
    SET @total_descuentos = @descuento_isss + @descuento_afp + @descuento_renta + @cuota_fija;

    -- 🔹 Calcular salario neto
    SET @salario_neto = @salario_despues_descuentos - @descuento_renta - @cuota_fija;

    -- 🔹 Actualizar el campo "descuentos" en la tabla Pagos con el total de descuentos calculado
    UPDATE Pagos
    SET descuentos = @total_descuentos,
        salario_neto = @salario_neto -- 🟢 También actualiza el salario neto en la tabla Pagos
    WHERE id_empleado = @id_empleado;

    -- 🔹 Devolver los resultados
    SELECT 
        @salario_base AS SalarioBase, 
        @horas_extras AS HorasExtras, 
        @ingreso_horas_extras AS IngresoHorasExtras, 
        @total_descuentos AS TotalDescuentos, 
        @salario_neto AS SalarioNeto;
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertarHorario]    Script Date: 4/4/2025 11:05:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarHorario]
    @id_empleado INT,
    @dias_laborales DATE = NULL,
    @dias_descanso DATE = NULL
AS
BEGIN
    SET NOCOUNT ON;
    
    -- Verificar que al menos una fecha se haya proporcionado
    IF @dias_laborales IS NULL AND @dias_descanso IS NULL
    BEGIN
        RAISERROR('Debe ingresar al menos una fecha laboral o de descanso.', 16, 1);
        RETURN;
    END

    -- Verificar que no se esté asignando el mismo día como laboral y de descanso
    IF @dias_laborales IS NOT NULL AND @dias_descanso IS NOT NULL AND @dias_laborales = @dias_descanso
    BEGIN
        RAISERROR('No se puede asignar el mismo día como laboral y de descanso simultáneamente.', 16, 1);
        RETURN;
    END

    -- Verificar si ya existe un registro con los mismos valores
    IF EXISTS (
        SELECT 1 
        FROM Horarios 
        WHERE id_empleado = @id_empleado 
        AND (
            (@dias_laborales IS NOT NULL AND dias_laborales = @dias_laborales)
            OR 
            (@dias_descanso IS NOT NULL AND dias_descanso = @dias_descanso)
        )
    )
    BEGIN
        RAISERROR('Ya existe un horario con los mismos datos para este empleado.', 16, 1);
        RETURN;
    END

    -- Verificar si el día laboral está asignado como día de descanso en otro registro
    IF @dias_laborales IS NOT NULL AND EXISTS (
        SELECT 1 
        FROM Horarios 
        WHERE id_empleado = @id_empleado 
        AND dias_descanso = @dias_laborales
    )
    BEGIN
        DECLARE @fecha_laboral_str VARCHAR(20) = CONVERT(VARCHAR(10), @dias_laborales, 103);
        RAISERROR('La fecha %s ya está asignada como día de descanso para este empleado.', 16, 1, @fecha_laboral_str);
        RETURN;
    END

    -- Verificar si el día de descanso está asignado como día laboral en otro registro
    IF @dias_descanso IS NOT NULL AND EXISTS (
        SELECT 1 
        FROM Horarios 
        WHERE id_empleado = @id_empleado 
        AND dias_laborales = @dias_descanso
    )
    BEGIN
        DECLARE @fecha_descanso_str VARCHAR(20) = CONVERT(VARCHAR(10), @dias_descanso, 103);
        RAISERROR('La fecha %s ya está asignada como día laboral para este empleado.', 16, 1, @fecha_descanso_str);
        RETURN;
    END
    
    -- Si no existe un registro duplicado y las fechas son válidas, realizar la inserción
    INSERT INTO Horarios (id_empleado, dias_laborales, dias_descanso)
    VALUES (@id_empleado, @dias_laborales, @dias_descanso);

    -- Confirmar inserción exitosa
    PRINT 'Horario insertado correctamente.';
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertarUsuario]    Script Date: 4/4/2025 11:05:08 ******/
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
/****** Object:  StoredProcedure [dbo].[MostrarHorariosEmpleados]    Script Date: 4/4/2025 11:05:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MostrarHorariosEmpleados]
AS
BEGIN
    SELECT DISTINCT
        e.id_empleado,
        CONCAT(u.nombre, ' ', u.apellido) AS nombre_completo,
        ISNULL(p.nombre_puesto, 'Sin puesto asignado') AS puesto
    FROM 
        Empleados e
    INNER JOIN 
        usuarios u ON e.id_usuario = u.id_usuario
    LEFT JOIN 
        Puestos p ON e.id_empleado = p.id_empleado
    ORDER BY 
        e.id_empleado;
END
GO
/****** Object:  StoredProcedure [dbo].[ObtenerDatosEmpleado]    Script Date: 4/4/2025 11:05:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ObtenerDatosEmpleado]
    @id_usuario INT,
    @id_empleado INT
AS
BEGIN
    SELECT 
        u.nombre AS NombreEmpleado,
        p.nombre_puesto AS Puesto,
        pg.salario_neto AS SalarioNeto
    FROM Empleados e
    INNER JOIN usuarios u ON e.id_usuario = u.id_usuario
    INNER JOIN Pagos pg ON e.id_empleado = pg.id_empleado
    INNER JOIN Puestos p ON e.id_empleado = p.id_empleado
    WHERE e.id_usuario = @id_usuario
      AND e.id_empleado = @id_empleado;
END;
GO
/****** Object:  StoredProcedure [dbo].[ObtenerHorarioPorId]    Script Date: 4/4/2025 11:05:08 ******/
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
/****** Object:  StoredProcedure [dbo].[ObtenerIdPuesto]    Script Date: 4/4/2025 11:05:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ObtenerIdPuesto]
    @id_empleado INT
AS
BEGIN
    SET NOCOUNT ON;

    -- Verificamos si el empleado tiene un puesto asignado y, por lo tanto, un área asociada
    IF EXISTS (SELECT 1 FROM Puestos WHERE id_empleado = @id_empleado)
    BEGIN
        SELECT p.id_area 
        FROM Puestos p
        WHERE p.id_empleado = @id_empleado;
    END
    ELSE
    BEGIN
        PRINT 'El empleado no tiene un área asignada.';
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[ObtenerIdUsuarioPorIdEmpleado]    Script Date: 4/4/2025 11:05:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ObtenerIdUsuarioPorIdEmpleado]
    @id_empleado INT
AS
BEGIN
    SET NOCOUNT ON;
    
    SELECT u.id_usuario
    FROM Empleados e
    INNER JOIN usuarios u ON e.id_usuario = u.id_usuario
    WHERE e.id_empleado = @id_empleado;
END
GO
/****** Object:  StoredProcedure [dbo].[Obtenertrabajo]    Script Date: 4/4/2025 11:05:08 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ActualizarEmpleado]    Script Date: 4/4/2025 11:05:08 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EditarUsuario]    Script Date: 4/4/2025 11:05:08 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarUsuario]    Script Date: 4/4/2025 11:05:08 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_MostrarDiasDescansoEmpleado]    Script Date: 4/4/2025 11:05:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_MostrarDiasDescansoEmpleado]
     @id_empleado INT
AS
BEGIN
    -- Crear tabla temporal para almacenar los resultados
    SELECT 
        CONVERT(VARCHAR(20), h.dias_descanso, 103) AS dias_descanso
    FROM 
        Horarios h
    WHERE 
        h.id_empleado = @id_empleado
        AND h.dias_descanso IS NOT NULL;

    -- Si no hay resultados, mostrar mensaje
    IF @@ROWCOUNT = 0
    BEGIN
        SELECT 'No asignado' AS dias_descanso;
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_MostrarDiasLaboralesEmpleado]    Script Date: 4/4/2025 11:05:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_MostrarDiasLaboralesEmpleado]
    @id_empleado INT
AS
BEGIN
    SELECT 
        CONVERT(VARCHAR(20), h.dias_laborales, 103) AS dias_laborales
    FROM 
        Horarios h
    WHERE 
        h.id_empleado = @id_empleado
        AND h.dias_laborales IS NOT NULL;
    
    -- Si no hay resultados, enviar uno por defecto
    IF @@ROWCOUNT = 0
    BEGIN
        SELECT 'No asignado' AS dias_laborales;
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerEmpleadosRol6]    Script Date: 4/4/2025 11:05:08 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ObtenerIdEmpleado]    Script Date: 4/4/2025 11:05:08 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ObtenerReporteEmpleados]    Script Date: 4/4/2025 11:05:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ObtenerReporteEmpleados]
AS
BEGIN
    SELECT 
        e.id_empleado,
        CONCAT(u.nombre, ' ', u.apellido) AS Nombre,
        p.salario_base AS SalarioBase,
        COALESCE(pa.horas_extras, 0) AS HorasExtra,
        COALESCE(pa.descuentos, 0) AS Descuentos,
        COALESCE(pa.salario_neto, 0) AS SalarioNeto
    FROM 
        Empleados e
    INNER JOIN 
        usuarios u ON e.id_usuario = u.id_usuario
    INNER JOIN 
        roles r ON u.id_rol = r.id_rol
    INNER JOIN 
        Puestos p ON e.id_empleado = p.id_empleado
    LEFT JOIN 
        Pagos pa ON e.id_empleado = pa.id_empleado 
      
    WHERE 
        u.id_rol = 6
    ORDER BY 
        e.id_empleado;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerTodosLosEmpleados]    Script Date: 4/4/2025 11:05:08 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ObtenerUsuarioInfo]    Script Date: 4/4/2025 11:05:08 ******/
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
/****** Object:  StoredProcedure [dbo].[ValidarUsuario]    Script Date: 4/4/2025 11:05:08 ******/
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

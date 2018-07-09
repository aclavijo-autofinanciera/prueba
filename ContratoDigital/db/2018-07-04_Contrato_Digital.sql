USE [ContratoDigital]
GO
ALTER TABLE [dbo].[Contratos] DROP CONSTRAINT [FK_Contratos_Prospectos]
GO
/****** Object:  Table [dbo].[Prospectos]    Script Date: 2018-07-04 11:52:53 ******/
DROP TABLE [dbo].[Prospectos]
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 2018-07-04 11:52:53 ******/
DROP TABLE [dbo].[Personas]
GO
/****** Object:  Table [dbo].[Contratos]    Script Date: 2018-07-04 11:52:53 ******/
DROP TABLE [dbo].[Contratos]
GO
USE [master]
GO
/****** Object:  Database [ContratoDigital]    Script Date: 2018-07-04 11:52:53 ******/
DROP DATABASE [ContratoDigital]
GO
/****** Object:  Database [ContratoDigital]    Script Date: 2018-07-04 11:52:53 ******/
CREATE DATABASE [ContratoDigital]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ContratoDigital', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ContratoDigital.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ContratoDigital_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ContratoDigital_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ContratoDigital] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ContratoDigital].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ContratoDigital] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ContratoDigital] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ContratoDigital] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ContratoDigital] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ContratoDigital] SET ARITHABORT OFF 
GO
ALTER DATABASE [ContratoDigital] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ContratoDigital] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ContratoDigital] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ContratoDigital] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ContratoDigital] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ContratoDigital] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ContratoDigital] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ContratoDigital] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ContratoDigital] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ContratoDigital] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ContratoDigital] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ContratoDigital] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ContratoDigital] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ContratoDigital] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ContratoDigital] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ContratoDigital] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ContratoDigital] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ContratoDigital] SET RECOVERY FULL 
GO
ALTER DATABASE [ContratoDigital] SET  MULTI_USER 
GO
ALTER DATABASE [ContratoDigital] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ContratoDigital] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ContratoDigital] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ContratoDigital] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ContratoDigital] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ContratoDigital]
GO
/****** Object:  Table [dbo].[Contratos]    Script Date: 2018-07-04 11:52:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contratos](
	[IdContrato] [int] IDENTITY(1,1) NOT NULL,
	[IdProspecto] [int] NOT NULL,
	[numero_de_contrato] [int] NULL,
	[primer_nombre] [nvarchar](200) NULL,
	[segundo_nombre] [nvarchar](200) NULL,
	[primer_apellido] [nvarchar](200) NULL,
	[segundo_apellido] [nvarchar](200) NULL,
	[tipo_documento_identidad_suscriptor] [nvarchar](50) NULL,
	[documento_identidad_suscriptor] [int] NULL,
	[procedencia_documento_identidad_suscriptor] [nvarchar](50) NULL,
	[nombre_razon_social_representante_legal] [nvarchar](50) NULL,
	[tipo_documento_representante_legal] [nvarchar](50) NULL,
	[procedencia_documento_identidad_representante_legal] [nvarchar](50) NULL,
	[documento_identidad_representante_legal] [int] NULL,
	[fecha_nacimiento_suscriptor] [date] NULL,
	[lugar_nacimiento_suscriptor] [nvarchar](50) NULL,
	[sexo_suscriptor] [nvarchar](50) NULL,
	[estado_civil_suscriptor] [nvarchar](50) NULL,
	[direccion_domicilio_suscriptor] [nvarchar](200) NULL,
	[pais_suscriptor] [nvarchar](50) NULL,
	[departamento_suscriptor] [nvarchar](50) NULL,
	[ciudad_suscriptor] [nvarchar](50) NULL,
	[telefono_suscriptor] [nvarchar](50) NULL,
	[celular_suscriptor] [nvarchar](50) NULL,
	[empresa_empleadora_suscriptor] [nvarchar](50) NULL,
	[cargo_suscriptor] [nvarchar](50) NULL,
	[ingresos_mensuales_suscriptor] [float] NULL,
	[egresos_mensuales_suscriptor] [float] NULL,
	[otros_ingresos_suscriptor] [float] NULL,
	[direccion_empleo_suscriptor] [nvarchar](200) NULL,
	[departamento_empleo_suscriptor] [nvarchar](50) NULL,
	[pais_empleo_suscriptor] [nvarchar](50) NULL,
	[ciudad_empleo_suscriptor] [nvarchar](50) NULL,
	[telefono_empleo_suscriptor] [nvarchar](50) NULL,
	[celular_empleo_suscriptor] [nvarchar](50) NULL,
	[profesion_suscriptor] [nvarchar](50) NULL,
	[envio_correspondencia_suscriptor] [nvarchar](50) NULL,
	[email_suscriptor] [nvarchar](50) NULL,
	[nombre_suscriptor_conjunto] [nvarchar](50) NULL,
	[tipo_identidad_suscriptor_conjunto] [nvarchar](50) NULL,
	[documento_identidad_suscriptor_conjunto] [int] NULL,
	[procedencia_documento_identidad_suscriptor_conjunto] [nvarchar](50) NULL,
	[representante_legal_suscriptor_conjunto] [nvarchar](50) NULL,
	[tipo_identidad_representante_legal_suscriptor_conjunto] [nvarchar](50) NULL,
	[documento_identidad_representante_legal_suscriptor_conjunto] [int] NULL,
	[procedencia_identificacion_representante_legal_suscriptor_conjunto] [nvarchar](50) NULL,
	[fecha_nacimiento_suscriptor_conjunto] [date] NULL,
	[lugar_nacimiento_suscriptor_conjunto] [nvarchar](50) NULL,
	[sexo_suscriptor_conjunto] [nvarchar](50) NULL,
	[estado_civil_suscriptor_conjunto] [nvarchar](50) NULL,
	[direccion_suscriptor_conjunto] [nvarchar](50) NULL,
	[departamento_suscriptor_conjunto] [nvarchar](50) NULL,
	[ciudad_suscriptor_conjunto] [nvarchar](50) NULL,
	[pais_suscriptor_conjunto] [nvarchar](50) NULL,
	[telefono_suscriptor_conjunto] [nvarchar](50) NULL,
	[celular_suscriptor_conjunto] [nvarchar](50) NULL,
	[empresa_empleadora_suscriptor_conjunto] [nvarchar](50) NULL,
	[cargo_suscriptor_conjunto] [nvarchar](50) NULL,
	[ingresos_mensuales_suscriptor_conjunto] [float] NULL,
	[egresos_mensuales_suscriptor_conjunto] [float] NULL,
	[otros_ingresos_suscriptor_conjunto] [float] NULL,
	[direccion_empleo_suscriptor_conjunto] [nvarchar](200) NULL,
	[departamento_empleo_suscriptor_conjunto] [nvarchar](50) NULL,
	[ciudad_empleo_suscriptor_conjunto] [nvarchar](50) NULL,
	[pais_empleo_suscriptor_conjunto] [nvarchar](50) NULL,
	[telefono_empleo_suscriptor_conjunto] [nvarchar](50) NULL,
	[celular_empleo_suscriptor_conjunto] [nvarchar](50) NULL,
	[profesion_suscriptor_conjunto] [nvarchar](50) NULL,
	[correspondencia_suscriptor_conjunto] [nvarchar](50) NULL,
	[email_suscriptor_conjunto] [nvarchar](50) NULL,
	[tipo_de_bien] [nvarchar](50) NULL,
	[marca_exclusiva_bien] [nvarchar](50) NULL,
	[detalles_bien] [nvarchar](50) NULL,
	[valor_bien] [float] NULL,
	[cuota_bien] [nvarchar](50) NULL,
	[codigo_bien] [nvarchar](50) NULL,
	[plazo_bien] [nvarchar](50) NULL,
	[porcentaje_cuota_ingreso] [float] NULL,
	[cuota_ingreso] [float] NULL,
	[porcentaje_iva_cuota_ingreso] [float] NULL,
	[iva_cuota_ingreso] [float] NULL,
	[total_cuota_ingreso] [float] NULL,
	[primera_cuota_neta] [float] NULL,
	[porcentaje_administracion] [float] NULL,
	[administracion] [float] NULL,
	[porcentaje_iva_administracion] [float] NULL,
	[iva_administracion] [float] NULL,
	[total_cuota_bruta] [float] NULL,
	[valor_primer_pago] [float] NULL,
	[agencia] [nvarchar](50) NULL,
	[consecionario] [nvarchar](50) NULL,
	[gerente] [nvarchar](50) NULL,
	[asesor_comercial] [nvarchar](50) NULL,
	[codigo_uso_interno] [nvarchar](50) NULL,
	[fecha_suscripcion_contrato] [date] NULL,
	[distribuido_por_marca] [nvarchar](50) NULL,
 CONSTRAINT [PK_Contratos] PRIMARY KEY CLUSTERED 
(
	[IdContrato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Personas]    Script Date: 2018-07-04 11:52:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personas](
	[idPersona] [int] IDENTITY(1,1) NOT NULL,
	[PrimerNombre] [nvarchar](50) NOT NULL,
	[SegundoNombre] [nvarchar](50) NULL,
	[PrimerApellido] [nvarchar](50) NOT NULL,
	[SegundoApellido] [nvarchar](50) NULL,
	[TipoIdentificacion] [int] NOT NULL,
	[NumeroIdentificacion] [int] NOT NULL,
	[ProcedenciaIdentificacion] [nvarchar](200) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[idPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Prospectos]    Script Date: 2018-07-04 11:52:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prospectos](
	[IdProspecto] [int] IDENTITY(1,1) NOT NULL,
	[PrimerNombre] [nvarchar](50) NOT NULL,
	[SegundoNombre] [nvarchar](50) NULL,
	[PrimerApellido] [nvarchar](50) NOT NULL,
	[SegundoApellido] [nvarchar](50) NULL,
	[TipoDocumentoIdentidad] [int] NOT NULL,
	[NumeroDocumento] [int] NOT NULL,
	[Telefono] [nvarchar](200) NULL,
	[Celular] [nvarchar](200) NULL,
	[Email] [nvarchar](200) NULL,
	[Referencia] [int] NOT NULL,
	[DescripcionDelBien] [nvarchar](50) NULL,
	[ValorDelBien] [float] NOT NULL,
	[CuotaDeIngreso] [float] NOT NULL,
	[IvaCuotaIngreso] [float] NOT NULL,
	[TotalCuotaIngreso] [float] NOT NULL,
	[PrimeraCuotaNeta] [float] NOT NULL,
	[Administracion] [float] NOT NULL,
	[IvaAdministracion] [float] NOT NULL,
	[TotalCuotaBruta] [float] NOT NULL,
	[ValorTotalPrimerPago] [float] NOT NULL,
 CONSTRAINT [PK_Prospecto] PRIMARY KEY CLUSTERED 
(
	[IdProspecto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Contratos] ON 

INSERT [dbo].[Contratos] ([IdContrato], [IdProspecto], [numero_de_contrato], [primer_nombre], [segundo_nombre], [primer_apellido], [segundo_apellido], [tipo_documento_identidad_suscriptor], [documento_identidad_suscriptor], [procedencia_documento_identidad_suscriptor], [nombre_razon_social_representante_legal], [tipo_documento_representante_legal], [procedencia_documento_identidad_representante_legal], [documento_identidad_representante_legal], [fecha_nacimiento_suscriptor], [lugar_nacimiento_suscriptor], [sexo_suscriptor], [estado_civil_suscriptor], [direccion_domicilio_suscriptor], [pais_suscriptor], [departamento_suscriptor], [ciudad_suscriptor], [telefono_suscriptor], [celular_suscriptor], [empresa_empleadora_suscriptor], [cargo_suscriptor], [ingresos_mensuales_suscriptor], [egresos_mensuales_suscriptor], [otros_ingresos_suscriptor], [direccion_empleo_suscriptor], [departamento_empleo_suscriptor], [pais_empleo_suscriptor], [ciudad_empleo_suscriptor], [telefono_empleo_suscriptor], [celular_empleo_suscriptor], [profesion_suscriptor], [envio_correspondencia_suscriptor], [email_suscriptor], [nombre_suscriptor_conjunto], [tipo_identidad_suscriptor_conjunto], [documento_identidad_suscriptor_conjunto], [procedencia_documento_identidad_suscriptor_conjunto], [representante_legal_suscriptor_conjunto], [tipo_identidad_representante_legal_suscriptor_conjunto], [documento_identidad_representante_legal_suscriptor_conjunto], [procedencia_identificacion_representante_legal_suscriptor_conjunto], [fecha_nacimiento_suscriptor_conjunto], [lugar_nacimiento_suscriptor_conjunto], [sexo_suscriptor_conjunto], [estado_civil_suscriptor_conjunto], [direccion_suscriptor_conjunto], [departamento_suscriptor_conjunto], [ciudad_suscriptor_conjunto], [pais_suscriptor_conjunto], [telefono_suscriptor_conjunto], [celular_suscriptor_conjunto], [empresa_empleadora_suscriptor_conjunto], [cargo_suscriptor_conjunto], [ingresos_mensuales_suscriptor_conjunto], [egresos_mensuales_suscriptor_conjunto], [otros_ingresos_suscriptor_conjunto], [direccion_empleo_suscriptor_conjunto], [departamento_empleo_suscriptor_conjunto], [ciudad_empleo_suscriptor_conjunto], [pais_empleo_suscriptor_conjunto], [telefono_empleo_suscriptor_conjunto], [celular_empleo_suscriptor_conjunto], [profesion_suscriptor_conjunto], [correspondencia_suscriptor_conjunto], [email_suscriptor_conjunto], [tipo_de_bien], [marca_exclusiva_bien], [detalles_bien], [valor_bien], [cuota_bien], [codigo_bien], [plazo_bien], [porcentaje_cuota_ingreso], [cuota_ingreso], [porcentaje_iva_cuota_ingreso], [iva_cuota_ingreso], [total_cuota_ingreso], [primera_cuota_neta], [porcentaje_administracion], [administracion], [porcentaje_iva_administracion], [iva_administracion], [total_cuota_bruta], [valor_primer_pago], [agencia], [consecionario], [gerente], [asesor_comercial], [codigo_uso_interno], [fecha_suscripcion_contrato], [distribuido_por_marca]) VALUES (1, 4, 8414439, N'Luis', N'Hernando', N'Robles', N'Bello', N'CE', 1127592294, N'Santiago de león de Caracas', N'', N'CE', N'', 0, CAST(N'1983-10-25' AS Date), N'Caracas', N'masculino', N'soltero', N'Carrera 39B #4-97', N'Colombia', N'cundinamarca', N'Santa Fe  de Bogotá', N'+5712452075', N'+573024071810', N'Autofinanciera', N'DevWeb', 3000000, 1250000, 500, N'Carrera 7, #24-83', N'cundinamarca', NULL, N'Santa Fe de Bogotá', N'+573024071810', N'+573024071810', N'WebDev', N'domicilio', N'test@testies.com', N'', N'CE', 0, N'', N'', N'CE', 0, N'', CAST(N'0001-01-01' AS Date), N'0001-01-01 00:00:00', N'femenino', N'soltero', N'', N'amazonas', N'', NULL, N'', N'', N'', N'', 0, 0, 0, N'', N'amazonas', N'', NULL, N'', N'', N'', N'domicilio', N'', N'motocicleta', N'YAMAHA', N'Algun Detalle', 16700000, N'fija', N'890123', N'40-120', 0, 751500, 0, 142785, 894285, 417500, 0, 83500, 0, 15865, 516865, 1411150, NULL, NULL, NULL, NULL, NULL, CAST(N'0001-01-01' AS Date), NULL)
INSERT [dbo].[Contratos] ([IdContrato], [IdProspecto], [numero_de_contrato], [primer_nombre], [segundo_nombre], [primer_apellido], [segundo_apellido], [tipo_documento_identidad_suscriptor], [documento_identidad_suscriptor], [procedencia_documento_identidad_suscriptor], [nombre_razon_social_representante_legal], [tipo_documento_representante_legal], [procedencia_documento_identidad_representante_legal], [documento_identidad_representante_legal], [fecha_nacimiento_suscriptor], [lugar_nacimiento_suscriptor], [sexo_suscriptor], [estado_civil_suscriptor], [direccion_domicilio_suscriptor], [pais_suscriptor], [departamento_suscriptor], [ciudad_suscriptor], [telefono_suscriptor], [celular_suscriptor], [empresa_empleadora_suscriptor], [cargo_suscriptor], [ingresos_mensuales_suscriptor], [egresos_mensuales_suscriptor], [otros_ingresos_suscriptor], [direccion_empleo_suscriptor], [departamento_empleo_suscriptor], [pais_empleo_suscriptor], [ciudad_empleo_suscriptor], [telefono_empleo_suscriptor], [celular_empleo_suscriptor], [profesion_suscriptor], [envio_correspondencia_suscriptor], [email_suscriptor], [nombre_suscriptor_conjunto], [tipo_identidad_suscriptor_conjunto], [documento_identidad_suscriptor_conjunto], [procedencia_documento_identidad_suscriptor_conjunto], [representante_legal_suscriptor_conjunto], [tipo_identidad_representante_legal_suscriptor_conjunto], [documento_identidad_representante_legal_suscriptor_conjunto], [procedencia_identificacion_representante_legal_suscriptor_conjunto], [fecha_nacimiento_suscriptor_conjunto], [lugar_nacimiento_suscriptor_conjunto], [sexo_suscriptor_conjunto], [estado_civil_suscriptor_conjunto], [direccion_suscriptor_conjunto], [departamento_suscriptor_conjunto], [ciudad_suscriptor_conjunto], [pais_suscriptor_conjunto], [telefono_suscriptor_conjunto], [celular_suscriptor_conjunto], [empresa_empleadora_suscriptor_conjunto], [cargo_suscriptor_conjunto], [ingresos_mensuales_suscriptor_conjunto], [egresos_mensuales_suscriptor_conjunto], [otros_ingresos_suscriptor_conjunto], [direccion_empleo_suscriptor_conjunto], [departamento_empleo_suscriptor_conjunto], [ciudad_empleo_suscriptor_conjunto], [pais_empleo_suscriptor_conjunto], [telefono_empleo_suscriptor_conjunto], [celular_empleo_suscriptor_conjunto], [profesion_suscriptor_conjunto], [correspondencia_suscriptor_conjunto], [email_suscriptor_conjunto], [tipo_de_bien], [marca_exclusiva_bien], [detalles_bien], [valor_bien], [cuota_bien], [codigo_bien], [plazo_bien], [porcentaje_cuota_ingreso], [cuota_ingreso], [porcentaje_iva_cuota_ingreso], [iva_cuota_ingreso], [total_cuota_ingreso], [primera_cuota_neta], [porcentaje_administracion], [administracion], [porcentaje_iva_administracion], [iva_administracion], [total_cuota_bruta], [valor_primer_pago], [agencia], [consecionario], [gerente], [asesor_comercial], [codigo_uso_interno], [fecha_suscripcion_contrato], [distribuido_por_marca]) VALUES (2, 10, 8947247, N'PEPITA', N'', N'MENDIETA', N'', N'CC', 1070957677, N'facatativa', N'', N'CC', N'', 0, CAST(N'1990-05-21' AS Date), N'facatativá', N'femenino', N'soltero', N'Carrera 39B #4-97', N'Colombia', N'cundinamarca', N'FACATATIVÁ', N'570313456789', N'5712345666939', N'Autofinanciera', N'community manager', 2000000, 1250000, 500000, N'Torre Colpatria', N'cundinamarca', NULL, N'Santa Fe de Bogotá', N'5703118423301', N'573124567345', N'publicista', N'oficina', N'test@testies.com', N'', N'CC', 0, N'', N'', N'CC', 0, N'', CAST(N'0001-01-01' AS Date), N'', N'femenino', N'soltero', N'', N'amazonas', N'', NULL, N'', N'', N'', N'', 0, 0, 0, N'', N'amazonas', N'', NULL, N'', N'', N'', N'domicilio', N'', N'motocicleta', N'YAMAHA', N'R5', 7650000, N'fija', N'1234', N'40-120', 0, 344250, 0, 65407.5, 409657.5, 191250, 0, 38250, 0, 7267.5, 236767.5, 646425, NULL, NULL, NULL, NULL, NULL, CAST(N'0001-01-01' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[Contratos] OFF
SET IDENTITY_INSERT [dbo].[Prospectos] ON 

INSERT [dbo].[Prospectos] ([IdProspecto], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDocumentoIdentidad], [NumeroDocumento], [Telefono], [Celular], [Email], [Referencia], [DescripcionDelBien], [ValorDelBien], [CuotaDeIngreso], [IvaCuotaIngreso], [TotalCuotaIngreso], [PrimeraCuotaNeta], [Administracion], [IvaAdministracion], [TotalCuotaBruta], [ValorTotalPrimerPago]) VALUES (1, N'Luis', N'Hernando', N'Robles', N'Bello', 1, 1127592293, N'2452075', N'3024071810', N'dracvs@gmail.com', 1, N'Yamaha MR1', 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000)
INSERT [dbo].[Prospectos] ([IdProspecto], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDocumentoIdentidad], [NumeroDocumento], [Telefono], [Celular], [Email], [Referencia], [DescripcionDelBien], [ValorDelBien], [CuotaDeIngreso], [IvaCuotaIngreso], [TotalCuotaIngreso], [PrimeraCuotaNeta], [Administracion], [IvaAdministracion], [TotalCuotaBruta], [ValorTotalPrimerPago]) VALUES (4, N'Luis', N'Hernando', N'Robles', N'Bello', 1, 1127592294, N'+5712452075', N'+573024071810', N'dracvs@gmail.com', 1030, N'R1M', 85990000, 3869550, 735214.5, 4604764.5, 2149750, 429950, 81690.5, 0, 7266155)
INSERT [dbo].[Prospectos] ([IdProspecto], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDocumentoIdentidad], [NumeroDocumento], [Telefono], [Celular], [Email], [Referencia], [DescripcionDelBien], [ValorDelBien], [CuotaDeIngreso], [IvaCuotaIngreso], [TotalCuotaIngreso], [PrimeraCuotaNeta], [Administracion], [IvaAdministracion], [TotalCuotaBruta], [ValorTotalPrimerPago]) VALUES (5, N'Luis', N'Hernando', N'Robles', N'Bello', 1, 1127592294, N'+5712452075', N'+573024071810', N'dracvs@gmail.com', 1030, N'Yamaha MR1', 16700000, 751500, 142785, 894285, 417500, 83500, 15865, 516865, 1411150)
INSERT [dbo].[Prospectos] ([IdProspecto], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDocumentoIdentidad], [NumeroDocumento], [Telefono], [Celular], [Email], [Referencia], [DescripcionDelBien], [ValorDelBien], [CuotaDeIngreso], [IvaCuotaIngreso], [TotalCuotaIngreso], [PrimeraCuotaNeta], [Administracion], [IvaAdministracion], [TotalCuotaBruta], [ValorTotalPrimerPago]) VALUES (6, N'juan', N'pablo', N'alviar', N'malabet 1111', 1, 1020832606, N'3112368422', N'4441700', N'juanpabloalviar@gmail.com', 1030, N'Yamaha MR1', 7650000, 344250, 65407.5, 409657.5, 191250, 38250, 7267.5, 236767.5, 646425)
INSERT [dbo].[Prospectos] ([IdProspecto], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDocumentoIdentidad], [NumeroDocumento], [Telefono], [Celular], [Email], [Referencia], [DescripcionDelBien], [ValorDelBien], [CuotaDeIngreso], [IvaCuotaIngreso], [TotalCuotaIngreso], [PrimeraCuotaNeta], [Administracion], [IvaAdministracion], [TotalCuotaBruta], [ValorTotalPrimerPago]) VALUES (8, N'PEPITA', N'', N'MENDIETA', N'', 1, 0, N'570318423301', N'573156789087', N'', 1030, N'Yamaha MR1', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Prospectos] ([IdProspecto], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDocumentoIdentidad], [NumeroDocumento], [Telefono], [Celular], [Email], [Referencia], [DescripcionDelBien], [ValorDelBien], [CuotaDeIngreso], [IvaCuotaIngreso], [TotalCuotaIngreso], [PrimeraCuotaNeta], [Administracion], [IvaAdministracion], [TotalCuotaBruta], [ValorTotalPrimerPago]) VALUES (9, N'PEPITA', N'', N'MENDIETA', N'', 1, 0, N'570313456789', N'5712345666939', N'pepitamendieta@gmail.com', 1030, N'Yamaha MR1', 7650000, 344250, 65407.5, 409657.5, 191250, 38250, 7267.5, 236767.5, 646425)
INSERT [dbo].[Prospectos] ([IdProspecto], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDocumentoIdentidad], [NumeroDocumento], [Telefono], [Celular], [Email], [Referencia], [DescripcionDelBien], [ValorDelBien], [CuotaDeIngreso], [IvaCuotaIngreso], [TotalCuotaIngreso], [PrimeraCuotaNeta], [Administracion], [IvaAdministracion], [TotalCuotaBruta], [ValorTotalPrimerPago]) VALUES (10, N'PEPITA', N'', N'MENDIETA', N'', 1, 1070957677, N'570313456789', N'5712345666939', N'pepitamendieta@gmail.com', 1030, N'Yamaha MR1', 7650000, 344250, 65407.5, 409657.5, 191250, 38250, 7267.5, 236767.5, 646425)
INSERT [dbo].[Prospectos] ([IdProspecto], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [TipoDocumentoIdentidad], [NumeroDocumento], [Telefono], [Celular], [Email], [Referencia], [DescripcionDelBien], [ValorDelBien], [CuotaDeIngreso], [IvaCuotaIngreso], [TotalCuotaIngreso], [PrimeraCuotaNeta], [Administracion], [IvaAdministracion], [TotalCuotaBruta], [ValorTotalPrimerPago]) VALUES (11, N'JUAN', N'1pablo', N'alVIar', N'MALABET', 3, 11738978, N'3112368422', N'4441700', N'JUANPABLOALVIAR@BERGACION.CPM,', 1030, N'Yamaha MR1', 7090000, 319050, 60619.5, 379669.5, 177250, 35450, 6735.5, 219435.5, 599105)
SET IDENTITY_INSERT [dbo].[Prospectos] OFF
ALTER TABLE [dbo].[Contratos]  WITH CHECK ADD  CONSTRAINT [FK_Contratos_Prospectos] FOREIGN KEY([IdProspecto])
REFERENCES [dbo].[Prospectos] ([IdProspecto])
GO
ALTER TABLE [dbo].[Contratos] CHECK CONSTRAINT [FK_Contratos_Prospectos]
GO
USE [master]
GO
ALTER DATABASE [ContratoDigital] SET  READ_WRITE 
GO

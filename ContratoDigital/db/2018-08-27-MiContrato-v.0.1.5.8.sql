USE [ContratoDigital]
GO
ALTER TABLE [dbo].[DocumentoIdentidad] DROP CONSTRAINT [FK_DocumentoIdentidad_Contratos]
GO
ALTER TABLE [dbo].[Contratos] DROP CONSTRAINT [FK_Contratos_Prospectos]
GO
ALTER TABLE [dbo].[ConfirmacionProspectos] DROP CONSTRAINT [FK_ConfirmacionProspectos_Prospectos]
GO
ALTER TABLE [dbo].[ConfirmacionContratos] DROP CONSTRAINT [FK_ConfirmacionContratos_Contratos]
GO
ALTER TABLE [dbo].[DocumentoIdentidad] DROP CONSTRAINT [DF_DocumentoIdentidad_IsRemoteUploadEnabled]
GO
ALTER TABLE [dbo].[ConfirmacionContratos] DROP CONSTRAINT [DF_ConfirmacionContratos_isPaid]
GO
ALTER TABLE [dbo].[ConfirmacionContratos] DROP CONSTRAINT [DF_ConfirmacionContratos_IsAccepted]
GO
ALTER TABLE [dbo].[ConfirmacionContratos] DROP CONSTRAINT [DF_ConfirmacionContratos_IsConfirmed]
GO
/****** Object:  Table [dbo].[Prospectos]    Script Date: 2018-08-27 17:11:25 ******/
DROP TABLE [dbo].[Prospectos]
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 2018-08-27 17:11:25 ******/
DROP TABLE [dbo].[Personas]
GO
/****** Object:  Table [dbo].[DocumentoIdentidad]    Script Date: 2018-08-27 17:11:25 ******/
DROP TABLE [dbo].[DocumentoIdentidad]
GO
/****** Object:  Table [dbo].[Contratos]    Script Date: 2018-08-27 17:11:25 ******/
DROP TABLE [dbo].[Contratos]
GO
/****** Object:  Table [dbo].[ConfirmacionProspectos]    Script Date: 2018-08-27 17:11:25 ******/
DROP TABLE [dbo].[ConfirmacionProspectos]
GO
/****** Object:  Table [dbo].[ConfirmacionContratos]    Script Date: 2018-08-27 17:11:25 ******/
DROP TABLE [dbo].[ConfirmacionContratos]
GO
/****** Object:  FullTextCatalog [ProspectotextIndex]    Script Date: 2018-08-27 17:11:25 ******/
GO
DROP FULLTEXT CATALOG [ProspectotextIndex]
GO
/****** Object:  FullTextCatalog [NombreSuscriptor]    Script Date: 2018-08-27 17:11:25 ******/
GO
DROP FULLTEXT CATALOG [NombreSuscriptor]
GO
USE [master]
GO
/****** Object:  Database [ContratoDigital]    Script Date: 2018-08-27 17:11:25 ******/
DROP DATABASE [ContratoDigital]
GO
/****** Object:  Database [ContratoDigital]    Script Date: 2018-08-27 17:11:25 ******/
CREATE DATABASE [ContratoDigital]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ContratoDigital', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ContratoDigital.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ContratoDigital_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ContratoDigital_log.ldf' , SIZE = 1600KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ContratoDigital] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ContratoDigital].[dbo].[sp_fulltext_database] @action = 'disable'
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
/****** Object:  FullTextCatalog [NombreSuscriptor]    Script Date: 2018-08-27 17:11:26 ******/
CREATE FULLTEXT CATALOG [NombreSuscriptor] WITH ACCENT_SENSITIVITY = OFF
GO
/****** Object:  FullTextCatalog [ProspectotextIndex]    Script Date: 2018-08-27 17:11:26 ******/
CREATE FULLTEXT CATALOG [ProspectotextIndex] WITH ACCENT_SENSITIVITY = OFF
GO
/****** Object:  Table [dbo].[ConfirmacionContratos]    Script Date: 2018-08-27 17:11:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfirmacionContratos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdContrato] [int] NOT NULL,
	[Guuid] [nvarchar](max) NULL,
	[ReferenciaPago] [nvarchar](50) NULL,
	[IsIdUploaded] [bit] NULL,
	[IsAccepted] [bit] NULL,
	[IsPaid] [bit] NULL,
	[IsVerified] [bit] NULL,
	[FechaAceptacion] [date] NULL,
	[FechaPago] [date] NULL,
	[FechaVerificacion] [date] NULL,
	[FechaReferenciaPago] [date] NULL,
	[TipoMedio] [int] NULL,
	[DescripcionTipoMedio] [nvarchar](50) NULL,
	[Medio] [int] NULL,
	[DescripcionMedio] [nvarchar](50) NULL,
	[TipoCliente] [int] NULL,
	[DescripcionTipoCliente] [nvarchar](50) NULL,
	[Agencia] [int] NULL,
	[DescripcionAgencia] [nvarchar](50) NULL,
	[Asesor] [int] NULL,
	[UserId] [varchar](max) NULL,
 CONSTRAINT [PK_ConfirmacionContratos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConfirmacionProspectos]    Script Date: 2018-08-27 17:11:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfirmacionProspectos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdProspecto] [int] NOT NULL,
	[Guuid] [nvarchar](max) NULL,
	[IsConfirmed] [bit] NULL,
	[FechaConfirmacion] [date] NULL,
	[TipoMedio] [int] NULL,
	[DescripcionTipoMedio] [nvarchar](50) NULL,
	[Medio] [int] NULL,
	[DescripcionMedio] [nvarchar](50) NULL,
	[TipoCliente] [int] NULL,
	[DescripcionTipoCliente] [nvarchar](50) NULL,
	[Agencia] [int] NULL,
	[DescripcionAgencia] [nvarchar](50) NULL,
	[Asesor] [int] NULL,
	[UserId] [varchar](max) NULL,
 CONSTRAINT [PK_ConfirmacionProspectos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contratos]    Script Date: 2018-08-27 17:11:26 ******/
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
	[anverso_documento] [varchar](max) NULL,
	[reverso_documento] [varchar](max) NULL,
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
	[id_compania] [nvarchar](50) NULL,
	[compania] [nvarchar](50) NULL,
	[id_tipo_de_bien] [int] NULL,
	[tipo_de_bien] [nvarchar](50) NULL,
	[id_marca] [int] NULL,
	[marca_exclusiva_bien] [nvarchar](50) NULL,
	[detalles_bien] [nvarchar](50) NULL,
	[descripcion_bien] [nvarchar](50) NULL,
	[valor_bien] [float] NULL,
	[cuota_bien] [nvarchar](50) NULL,
	[codigo_bien] [nvarchar](50) NULL,
	[plazo_bien] [nvarchar](50) NULL,
	[porcentaje_iva] [float] NULL,
	[porcentaje_cuota_ingreso] [float] NULL,
	[porcentaje_administracion] [float] NULL,
	[cuota_ingreso] [float] NULL,
	[iva_cuota_ingreso] [float] NULL,
	[total_cuota_ingreso] [float] NULL,
	[primera_cuota_neta] [float] NULL,
	[administracion] [float] NULL,
	[iva_administracion] [float] NULL,
	[total_cuota_bruta] [float] NULL,
	[valor_primer_pago] [float] NULL,
	[agencia] [nvarchar](50) NULL,
	[consecionario] [nvarchar](50) NULL,
	[gerente] [nvarchar](50) NULL,
	[asesor_comercial] [nvarchar](450) NULL,
	[codigo_uso_interno] [nvarchar](50) NULL,
	[fecha_suscripcion_contrato] [date] NULL,
	[distribuido_por_marca] [nvarchar](50) NULL,
 CONSTRAINT [PK_Contratos] PRIMARY KEY CLUSTERED 
(
	[IdContrato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentoIdentidad]    Script Date: 2018-08-27 17:11:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentoIdentidad](
	[IdDocumentoIdentidad] [int] IDENTITY(1,1) NOT NULL,
	[IdContrato] [int] NOT NULL,
	[Guuid] [nvarchar](max) NULL,
	[Anverso] [varchar](max) NULL,
	[Reverso] [varchar](max) NULL,
	[IsRemoteUploadEnabled] [bit] NULL,
	[FechaAdjunto] [datetime2](7) NULL,
 CONSTRAINT [PK_DocumentoIdentidad] PRIMARY KEY CLUSTERED 
(
	[IdDocumentoIdentidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 2018-08-27 17:11:26 ******/
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
/****** Object:  Table [dbo].[Prospectos]    Script Date: 2018-08-27 17:11:26 ******/
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
	[IdCompania] [nvarchar](max) NULL,
	[Compania] [nvarchar](max) NULL,
	[Tipo_de_Bien] [nvarchar](50) NULL,
	[Id_Tipo_Bien] [int] NULL,
	[Marca_exclusiva_bien] [nvarchar](50) NULL,
	[Id_marca] [int] NULL,
	[Referencia] [int] NOT NULL,
	[Detalles_bien] [nvarchar](max) NULL,
	[DescripcionDelBien] [nvarchar](max) NULL,
	[PorcentajeAdministracion] [float] NULL,
	[PorcentajeInscripcion] [float] NULL,
	[PorcentajeIva] [float] NULL,
	[Plazo] [nvarchar](50) NULL,
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
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ConfirmacionContratos] ADD  CONSTRAINT [DF_ConfirmacionContratos_IsConfirmed]  DEFAULT ((0)) FOR [IsIdUploaded]
GO
ALTER TABLE [dbo].[ConfirmacionContratos] ADD  CONSTRAINT [DF_ConfirmacionContratos_IsAccepted]  DEFAULT ((0)) FOR [IsAccepted]
GO
ALTER TABLE [dbo].[ConfirmacionContratos] ADD  CONSTRAINT [DF_ConfirmacionContratos_isPaid]  DEFAULT ((0)) FOR [IsPaid]
GO
ALTER TABLE [dbo].[DocumentoIdentidad] ADD  CONSTRAINT [DF_DocumentoIdentidad_IsRemoteUploadEnabled]  DEFAULT ((0)) FOR [IsRemoteUploadEnabled]
GO
ALTER TABLE [dbo].[ConfirmacionContratos]  WITH CHECK ADD  CONSTRAINT [FK_ConfirmacionContratos_Contratos] FOREIGN KEY([IdContrato])
REFERENCES [dbo].[Contratos] ([IdContrato])
GO
ALTER TABLE [dbo].[ConfirmacionContratos] CHECK CONSTRAINT [FK_ConfirmacionContratos_Contratos]
GO
ALTER TABLE [dbo].[ConfirmacionProspectos]  WITH CHECK ADD  CONSTRAINT [FK_ConfirmacionProspectos_Prospectos] FOREIGN KEY([IdProspecto])
REFERENCES [dbo].[Prospectos] ([IdProspecto])
GO
ALTER TABLE [dbo].[ConfirmacionProspectos] CHECK CONSTRAINT [FK_ConfirmacionProspectos_Prospectos]
GO
ALTER TABLE [dbo].[Contratos]  WITH CHECK ADD  CONSTRAINT [FK_Contratos_Prospectos] FOREIGN KEY([IdProspecto])
REFERENCES [dbo].[Prospectos] ([IdProspecto])
GO
ALTER TABLE [dbo].[Contratos] CHECK CONSTRAINT [FK_Contratos_Prospectos]
GO
ALTER TABLE [dbo].[DocumentoIdentidad]  WITH CHECK ADD  CONSTRAINT [FK_DocumentoIdentidad_Contratos] FOREIGN KEY([IdContrato])
REFERENCES [dbo].[Contratos] ([IdContrato])
GO
ALTER TABLE [dbo].[DocumentoIdentidad] CHECK CONSTRAINT [FK_DocumentoIdentidad_Contratos]
GO
USE [master]
GO
ALTER DATABASE [ContratoDigital] SET  READ_WRITE 
GO

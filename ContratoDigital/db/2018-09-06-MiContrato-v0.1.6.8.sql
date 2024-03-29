USE [ContratoDigital]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Estados]') AND type in (N'U'))
ALTER TABLE [dbo].[Estados] DROP CONSTRAINT IF EXISTS [FK_Estado_TipoEstado]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentoIdentidad]') AND type in (N'U'))
ALTER TABLE [dbo].[DocumentoIdentidad] DROP CONSTRAINT IF EXISTS [FK_DocumentoIdentidad_Contratos]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Contratos]') AND type in (N'U'))
ALTER TABLE [dbo].[Contratos] DROP CONSTRAINT IF EXISTS [FK_Contratos_Prospectos]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ConfirmacionProspectos]') AND type in (N'U'))
ALTER TABLE [dbo].[ConfirmacionProspectos] DROP CONSTRAINT IF EXISTS [FK_ConfirmacionProspectos_Prospectos]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ConfirmacionContratos]') AND type in (N'U'))
ALTER TABLE [dbo].[ConfirmacionContratos] DROP CONSTRAINT IF EXISTS [FK_ConfirmacionContratos_Contratos]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ciudades]') AND type in (N'U'))
ALTER TABLE [dbo].[Ciudades] DROP CONSTRAINT IF EXISTS [FK_Ciudades_TipoEstado]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentoIdentidad]') AND type in (N'U'))
ALTER TABLE [dbo].[DocumentoIdentidad] DROP CONSTRAINT IF EXISTS [DF_DocumentoIdentidad_IsRemoteUploadEnabled]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ConfirmacionContratos]') AND type in (N'U'))
ALTER TABLE [dbo].[ConfirmacionContratos] DROP CONSTRAINT IF EXISTS [DF_ConfirmacionContratos_IdContratoSiicon]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ConfirmacionContratos]') AND type in (N'U'))
ALTER TABLE [dbo].[ConfirmacionContratos] DROP CONSTRAINT IF EXISTS [DF_ConfirmacionContratos_isPaid]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ConfirmacionContratos]') AND type in (N'U'))
ALTER TABLE [dbo].[ConfirmacionContratos] DROP CONSTRAINT IF EXISTS [DF_ConfirmacionContratos_IsAccepted]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ConfirmacionContratos]') AND type in (N'U'))
ALTER TABLE [dbo].[ConfirmacionContratos] DROP CONSTRAINT IF EXISTS [DF_ConfirmacionContratos_IsConfirmed]
GO
/****** Object:  Table [dbo].[TipoEstados]    Script Date: 2018-09-06 09:35:51 ******/
DROP TABLE IF EXISTS [dbo].[TipoEstados]
GO
/****** Object:  Table [dbo].[Prospectos]    Script Date: 2018-09-06 09:35:51 ******/
DROP TABLE IF EXISTS [dbo].[Prospectos]
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 2018-09-06 09:35:51 ******/
DROP TABLE IF EXISTS [dbo].[Estados]
GO
/****** Object:  Table [dbo].[DocumentoIdentidad]    Script Date: 2018-09-06 09:35:51 ******/
DROP TABLE IF EXISTS [dbo].[DocumentoIdentidad]
GO
/****** Object:  Table [dbo].[Contratos]    Script Date: 2018-09-06 09:35:51 ******/
DROP TABLE IF EXISTS [dbo].[Contratos]
GO
/****** Object:  Table [dbo].[ConfirmacionProspectos]    Script Date: 2018-09-06 09:35:51 ******/
DROP TABLE IF EXISTS [dbo].[ConfirmacionProspectos]
GO
/****** Object:  Table [dbo].[ConfirmacionContratos]    Script Date: 2018-09-06 09:35:51 ******/
DROP TABLE IF EXISTS [dbo].[ConfirmacionContratos]
GO
/****** Object:  Table [dbo].[Ciudades]    Script Date: 2018-09-06 09:35:51 ******/
DROP TABLE IF EXISTS [dbo].[Ciudades]
GO
/****** Object:  FullTextCatalog [ProspectotextIndex]    Script Date: 2018-09-06 09:35:51 ******/
GO
IF  EXISTS (SELECT * FROM sysfulltextcatalogs ftc WHERE ftc.name = N'ProspectotextIndex')
DROP FULLTEXT CATALOG [ProspectotextIndex]
GO
/****** Object:  FullTextCatalog [NombreSuscriptor]    Script Date: 2018-09-06 09:35:51 ******/
GO
IF  EXISTS (SELECT * FROM sysfulltextcatalogs ftc WHERE ftc.name = N'NombreSuscriptor')
DROP FULLTEXT CATALOG [NombreSuscriptor]
GO
USE [master]
GO
/****** Object:  Database [ContratoDigital]    Script Date: 2018-09-06 09:35:51 ******/
DROP DATABASE IF EXISTS [ContratoDigital]
GO
/****** Object:  Database [ContratoDigital]    Script Date: 2018-09-06 09:35:51 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'ContratoDigital')
BEGIN
CREATE DATABASE [ContratoDigital]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ContratoDigital', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ContratoDigital.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ContratoDigital_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ContratoDigital_log.ldf' , SIZE = 1856KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 COLLATE Modern_Spanish_CI_AS
END
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
/****** Object:  FullTextCatalog [NombreSuscriptor]    Script Date: 2018-09-06 09:35:52 ******/
IF NOT EXISTS (SELECT * FROM sysfulltextcatalogs ftc WHERE ftc.name = N'NombreSuscriptor')
CREATE FULLTEXT CATALOG [NombreSuscriptor] WITH ACCENT_SENSITIVITY = OFF
GO
/****** Object:  FullTextCatalog [ProspectotextIndex]    Script Date: 2018-09-06 09:35:52 ******/
IF NOT EXISTS (SELECT * FROM sysfulltextcatalogs ftc WHERE ftc.name = N'ProspectotextIndex')
CREATE FULLTEXT CATALOG [ProspectotextIndex] WITH ACCENT_SENSITIVITY = OFF
GO
/****** Object:  Table [dbo].[Ciudades]    Script Date: 2018-09-06 09:35:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ciudades]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Ciudades](
	[IdCiudad] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoEstado] [int] NULL,
	[IdSiicon] [int] NULL,
	[IdDepartamentoSiicon] [int] NULL,
	[Descripcion] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_Ciudades] PRIMARY KEY CLUSTERED 
(
	[IdCiudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ConfirmacionContratos]    Script Date: 2018-09-06 09:35:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ConfirmacionContratos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ConfirmacionContratos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdContrato] [int] NOT NULL,
	[Guuid] [nvarchar](max) COLLATE Modern_Spanish_CI_AS NULL,
	[ReferenciaPago] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[IsIdUploaded] [bit] NULL,
	[IsAccepted] [bit] NULL,
	[IsPaid] [bit] NULL,
	[IsVerified] [bit] NULL,
	[FechaAceptacion] [date] NULL,
	[FechaPago] [date] NULL,
	[FechaVerificacion] [date] NULL,
	[FechaReferenciaPago] [date] NULL,
	[TipoMedio] [int] NULL,
	[DescripcionTipoMedio] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Medio] [int] NULL,
	[DescripcionMedio] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[TipoCliente] [int] NULL,
	[DescripcionTipoCliente] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Agencia] [int] NULL,
	[DescripcionAgencia] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Asesor] [int] NULL,
	[UserId] [varchar](max) COLLATE Modern_Spanish_CI_AS NULL,
	[IdContratoSiicon] [int] NOT NULL,
 CONSTRAINT [PK_ConfirmacionContratos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ConfirmacionProspectos]    Script Date: 2018-09-06 09:35:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ConfirmacionProspectos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ConfirmacionProspectos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdProspecto] [int] NOT NULL,
	[Guuid] [nvarchar](max) COLLATE Modern_Spanish_CI_AS NULL,
	[IsConfirmed] [bit] NULL,
	[FechaConfirmacion] [date] NULL,
	[TipoMedio] [int] NULL,
	[DescripcionTipoMedio] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Medio] [int] NULL,
	[DescripcionMedio] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[TipoCliente] [int] NULL,
	[DescripcionTipoCliente] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Agencia] [int] NULL,
	[DescripcionAgencia] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Asesor] [int] NULL,
	[UserId] [varchar](max) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_ConfirmacionProspectos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Contratos]    Script Date: 2018-09-06 09:35:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Contratos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Contratos](
	[IdContrato] [int] IDENTITY(1,1) NOT NULL,
	[IdProspecto] [int] NOT NULL,
	[numero_de_contrato] [int] NULL,
	[primer_nombre] [nvarchar](200) COLLATE Modern_Spanish_CI_AS NULL,
	[segundo_nombre] [nvarchar](200) COLLATE Modern_Spanish_CI_AS NULL,
	[primer_apellido] [nvarchar](200) COLLATE Modern_Spanish_CI_AS NULL,
	[segundo_apellido] [nvarchar](200) COLLATE Modern_Spanish_CI_AS NULL,
	[tipo_documento_identidad_suscriptor] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[documento_identidad_suscriptor] [int] NULL,
	[anverso_documento] [varchar](max) COLLATE Modern_Spanish_CI_AS NULL,
	[reverso_documento] [varchar](max) COLLATE Modern_Spanish_CI_AS NULL,
	[procedencia_documento_identidad_suscriptor] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[nombre_razon_social_representante_legal] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[tipo_documento_representante_legal] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[procedencia_documento_identidad_representante_legal] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[documento_identidad_representante_legal] [int] NULL,
	[fecha_nacimiento_suscriptor] [date] NULL,
	[lugar_nacimiento_suscriptor] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[sexo_suscriptor] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[estado_civil_suscriptor] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[direccion_domicilio_suscriptor] [nvarchar](200) COLLATE Modern_Spanish_CI_AS NULL,
	[pais_suscriptor] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[departamento_suscriptor] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[ciudad_suscriptor] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[telefono_suscriptor] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[celular_suscriptor] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[empresa_empleadora_suscriptor] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[cargo_suscriptor] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[ingresos_mensuales_suscriptor] [float] NULL,
	[egresos_mensuales_suscriptor] [float] NULL,
	[otros_ingresos_suscriptor] [float] NULL,
	[direccion_empleo_suscriptor] [nvarchar](200) COLLATE Modern_Spanish_CI_AS NULL,
	[departamento_empleo_suscriptor] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[pais_empleo_suscriptor] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[ciudad_empleo_suscriptor] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[telefono_empleo_suscriptor] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[celular_empleo_suscriptor] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[profesion_suscriptor] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[envio_correspondencia_suscriptor] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[email_suscriptor] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[nombre_suscriptor_conjunto] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[tipo_identidad_suscriptor_conjunto] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[documento_identidad_suscriptor_conjunto] [int] NULL,
	[procedencia_documento_identidad_suscriptor_conjunto] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[representante_legal_suscriptor_conjunto] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[tipo_identidad_representante_legal_suscriptor_conjunto] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[documento_identidad_representante_legal_suscriptor_conjunto] [int] NULL,
	[procedencia_identificacion_representante_legal_suscriptor_conjunto] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[fecha_nacimiento_suscriptor_conjunto] [date] NULL,
	[lugar_nacimiento_suscriptor_conjunto] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[sexo_suscriptor_conjunto] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[estado_civil_suscriptor_conjunto] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[direccion_suscriptor_conjunto] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[departamento_suscriptor_conjunto] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[ciudad_suscriptor_conjunto] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[pais_suscriptor_conjunto] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[telefono_suscriptor_conjunto] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[celular_suscriptor_conjunto] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[empresa_empleadora_suscriptor_conjunto] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[cargo_suscriptor_conjunto] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[ingresos_mensuales_suscriptor_conjunto] [float] NULL,
	[egresos_mensuales_suscriptor_conjunto] [float] NULL,
	[otros_ingresos_suscriptor_conjunto] [float] NULL,
	[direccion_empleo_suscriptor_conjunto] [nvarchar](200) COLLATE Modern_Spanish_CI_AS NULL,
	[departamento_empleo_suscriptor_conjunto] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[ciudad_empleo_suscriptor_conjunto] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[pais_empleo_suscriptor_conjunto] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[telefono_empleo_suscriptor_conjunto] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[celular_empleo_suscriptor_conjunto] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[profesion_suscriptor_conjunto] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[correspondencia_suscriptor_conjunto] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[email_suscriptor_conjunto] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[id_compania] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[compania] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[id_tipo_de_bien] [int] NULL,
	[tipo_de_bien] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[id_marca] [int] NULL,
	[marca_exclusiva_bien] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[detalles_bien] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[descripcion_bien] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[valor_bien] [float] NULL,
	[cuota_bien] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[codigo_bien] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[plazo_bien] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
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
	[agencia] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[consecionario] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[gerente] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[asesor_comercial] [nvarchar](450) COLLATE Modern_Spanish_CI_AS NULL,
	[codigo_uso_interno] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[fecha_suscripcion_contrato] [date] NULL,
	[distribuido_por_marca] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_Contratos] PRIMARY KEY CLUSTERED 
(
	[IdContrato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DocumentoIdentidad]    Script Date: 2018-09-06 09:35:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentoIdentidad]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DocumentoIdentidad](
	[IdDocumentoIdentidad] [int] IDENTITY(1,1) NOT NULL,
	[IdContrato] [int] NOT NULL,
	[Guuid] [nvarchar](max) COLLATE Modern_Spanish_CI_AS NULL,
	[Anverso] [varchar](max) COLLATE Modern_Spanish_CI_AS NULL,
	[Reverso] [varchar](max) COLLATE Modern_Spanish_CI_AS NULL,
	[IsRemoteUploadEnabled] [bit] NULL,
	[FechaAdjunto] [datetime2](7) NULL,
 CONSTRAINT [PK_DocumentoIdentidad] PRIMARY KEY CLUSTERED 
(
	[IdDocumentoIdentidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 2018-09-06 09:35:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Estados]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Estados](
	[IdEstado] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoEstado] [int] NULL,
	[IdSiicon] [int] NULL,
	[Descripcion] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NOT NULL,
 CONSTRAINT [PK_Estado] PRIMARY KEY CLUSTERED 
(
	[IdEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Prospectos]    Script Date: 2018-09-06 09:35:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Prospectos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Prospectos](
	[IdProspecto] [int] IDENTITY(1,1) NOT NULL,
	[PrimerNombre] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[SegundoNombre] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[PrimerApellido] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[SegundoApellido] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[TipoDocumentoIdentidad] [int] NOT NULL,
	[NumeroDocumento] [int] NOT NULL,
	[Telefono] [nvarchar](200) COLLATE Modern_Spanish_CI_AS NULL,
	[Celular] [nvarchar](200) COLLATE Modern_Spanish_CI_AS NULL,
	[Email] [nvarchar](200) COLLATE Modern_Spanish_CI_AS NULL,
	[IdCompania] [nvarchar](max) COLLATE Modern_Spanish_CI_AS NULL,
	[Compania] [nvarchar](max) COLLATE Modern_Spanish_CI_AS NULL,
	[Tipo_de_Bien] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Id_Tipo_Bien] [int] NULL,
	[Marca_exclusiva_bien] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Id_marca] [int] NULL,
	[Referencia] [int] NOT NULL,
	[Detalles_bien] [nvarchar](max) COLLATE Modern_Spanish_CI_AS NULL,
	[DescripcionDelBien] [nvarchar](max) COLLATE Modern_Spanish_CI_AS NULL,
	[PorcentajeAdministracion] [float] NULL,
	[PorcentajeInscripcion] [float] NULL,
	[PorcentajeIva] [float] NULL,
	[Plazo] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
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
END
GO
/****** Object:  Table [dbo].[TipoEstados]    Script Date: 2018-09-06 09:35:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoEstados]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TipoEstados](
	[IdTipoEstado] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_TipoEstado] PRIMARY KEY CLUSTERED 
(
	[IdTipoEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ConfirmacionContratos_IsConfirmed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ConfirmacionContratos] ADD  CONSTRAINT [DF_ConfirmacionContratos_IsConfirmed]  DEFAULT ((0)) FOR [IsIdUploaded]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ConfirmacionContratos_IsAccepted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ConfirmacionContratos] ADD  CONSTRAINT [DF_ConfirmacionContratos_IsAccepted]  DEFAULT ((0)) FOR [IsAccepted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ConfirmacionContratos_isPaid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ConfirmacionContratos] ADD  CONSTRAINT [DF_ConfirmacionContratos_isPaid]  DEFAULT ((0)) FOR [IsPaid]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ConfirmacionContratos_IdContratoSiicon]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ConfirmacionContratos] ADD  CONSTRAINT [DF_ConfirmacionContratos_IdContratoSiicon]  DEFAULT ((0)) FOR [IdContratoSiicon]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_DocumentoIdentidad_IsRemoteUploadEnabled]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DocumentoIdentidad] ADD  CONSTRAINT [DF_DocumentoIdentidad_IsRemoteUploadEnabled]  DEFAULT ((0)) FOR [IsRemoteUploadEnabled]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ciudades_TipoEstado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ciudades]'))
ALTER TABLE [dbo].[Ciudades]  WITH CHECK ADD  CONSTRAINT [FK_Ciudades_TipoEstado] FOREIGN KEY([IdTipoEstado])
REFERENCES [dbo].[TipoEstados] ([IdTipoEstado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ciudades_TipoEstado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ciudades]'))
ALTER TABLE [dbo].[Ciudades] CHECK CONSTRAINT [FK_Ciudades_TipoEstado]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConfirmacionContratos_Contratos]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConfirmacionContratos]'))
ALTER TABLE [dbo].[ConfirmacionContratos]  WITH CHECK ADD  CONSTRAINT [FK_ConfirmacionContratos_Contratos] FOREIGN KEY([IdContrato])
REFERENCES [dbo].[Contratos] ([IdContrato])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConfirmacionContratos_Contratos]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConfirmacionContratos]'))
ALTER TABLE [dbo].[ConfirmacionContratos] CHECK CONSTRAINT [FK_ConfirmacionContratos_Contratos]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConfirmacionProspectos_Prospectos]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConfirmacionProspectos]'))
ALTER TABLE [dbo].[ConfirmacionProspectos]  WITH CHECK ADD  CONSTRAINT [FK_ConfirmacionProspectos_Prospectos] FOREIGN KEY([IdProspecto])
REFERENCES [dbo].[Prospectos] ([IdProspecto])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConfirmacionProspectos_Prospectos]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConfirmacionProspectos]'))
ALTER TABLE [dbo].[ConfirmacionProspectos] CHECK CONSTRAINT [FK_ConfirmacionProspectos_Prospectos]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Contratos_Prospectos]') AND parent_object_id = OBJECT_ID(N'[dbo].[Contratos]'))
ALTER TABLE [dbo].[Contratos]  WITH CHECK ADD  CONSTRAINT [FK_Contratos_Prospectos] FOREIGN KEY([IdProspecto])
REFERENCES [dbo].[Prospectos] ([IdProspecto])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Contratos_Prospectos]') AND parent_object_id = OBJECT_ID(N'[dbo].[Contratos]'))
ALTER TABLE [dbo].[Contratos] CHECK CONSTRAINT [FK_Contratos_Prospectos]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentoIdentidad_Contratos]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentoIdentidad]'))
ALTER TABLE [dbo].[DocumentoIdentidad]  WITH CHECK ADD  CONSTRAINT [FK_DocumentoIdentidad_Contratos] FOREIGN KEY([IdContrato])
REFERENCES [dbo].[Contratos] ([IdContrato])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentoIdentidad_Contratos]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentoIdentidad]'))
ALTER TABLE [dbo].[DocumentoIdentidad] CHECK CONSTRAINT [FK_DocumentoIdentidad_Contratos]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Estado_TipoEstado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Estados]'))
ALTER TABLE [dbo].[Estados]  WITH CHECK ADD  CONSTRAINT [FK_Estado_TipoEstado] FOREIGN KEY([IdTipoEstado])
REFERENCES [dbo].[TipoEstados] ([IdTipoEstado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Estado_TipoEstado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Estados]'))
ALTER TABLE [dbo].[Estados] CHECK CONSTRAINT [FK_Estado_TipoEstado]
GO
USE [master]
GO
ALTER DATABASE [ContratoDigital] SET  READ_WRITE 
GO

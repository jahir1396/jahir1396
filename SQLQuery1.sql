USE [DB_SISTEMA_PROYECTO]
GO
ALTER TABLE [dbo].[OpeVentaTracking] DROP CONSTRAINT [FK_OpeVentaTracking_CatUsuario_IdUsuarioRegistro]
GO
ALTER TABLE [dbo].[OpeVenta] DROP CONSTRAINT [FK_OpeVenta_CatUsuario_IdUsuario]
GO
ALTER TABLE [dbo].[OpeVenta] DROP CONSTRAINT [FK_OpeVenta_CatPersona_IdPersona]
GO
ALTER TABLE [dbo].[OpeVenta] DROP CONSTRAINT [FK_OpeVenta_CatEstatusVentaIngreso_IdEstatusVentaIngreso]
GO
ALTER TABLE [dbo].[OpeNotificacion] DROP CONSTRAINT [FK_OpeNotificacion_CatUsuario_IdUsuarioRegistro]
GO
ALTER TABLE [dbo].[OpeNotificacion] DROP CONSTRAINT [FK_OpeNotificacion_CatPlantillaCorreo_IdPlantillaCorreo]
GO
ALTER TABLE [dbo].[OpeIngreso] DROP CONSTRAINT [FK_OpeIngreso_CatUsuario_IdUsuario]
GO
ALTER TABLE [dbo].[OpeIngreso] DROP CONSTRAINT [FK_OpeIngreso_CatPersona_IdPersona]
GO
ALTER TABLE [dbo].[OpeIngreso] DROP CONSTRAINT [FK_OpeIngreso_CatEstatusVentaIngreso_IdEstatusVentaIngreso]
GO
ALTER TABLE [dbo].[OpeDetalleVenta] DROP CONSTRAINT [FK_OpeDetalleVenta_OpeVenta_IdVenta]
GO
ALTER TABLE [dbo].[OpeDetalleVenta] DROP CONSTRAINT [FK_OpeDetalleVenta_CatArticulo_IdArticulo]
GO
ALTER TABLE [dbo].[OpeDetalleIngreso] DROP CONSTRAINT [FK_OpeDetalleIngreso_OpeIngreso_IdIngreso]
GO
ALTER TABLE [dbo].[OpeDetalleIngreso] DROP CONSTRAINT [FK_OpeDetalleIngreso_CatArticulo_IdArticulo]
GO
ALTER TABLE [dbo].[CatUsuario] DROP CONSTRAINT [FK_CatUsuario_CatRol_IdRol]
GO
ALTER TABLE [dbo].[CatPersona] DROP CONSTRAINT [FK_CatPersona_CatTipoPersona_IdTipoPersona]
GO
ALTER TABLE [dbo].[CatArticulo] DROP CONSTRAINT [FK_CatArticulo_CatCategoria_IdCategoria]
GO
/****** Object:  Table [dbo].[OpeVentaTracking]    Script Date: 12/11/2022 04:07:16 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OpeVentaTracking]') AND type in (N'U'))
DROP TABLE [dbo].[OpeVentaTracking]
GO
/****** Object:  Table [dbo].[OpeVenta]    Script Date: 12/11/2022 04:07:16 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OpeVenta]') AND type in (N'U'))
DROP TABLE [dbo].[OpeVenta]
GO
/****** Object:  Table [dbo].[OpeNotificacion]    Script Date: 12/11/2022 04:07:16 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OpeNotificacion]') AND type in (N'U'))
DROP TABLE [dbo].[OpeNotificacion]
GO
/****** Object:  Table [dbo].[OpeIngreso]    Script Date: 12/11/2022 04:07:16 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OpeIngreso]') AND type in (N'U'))
DROP TABLE [dbo].[OpeIngreso]
GO
/****** Object:  Table [dbo].[OpeDetalleVenta]    Script Date: 12/11/2022 04:07:16 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OpeDetalleVenta]') AND type in (N'U'))
DROP TABLE [dbo].[OpeDetalleVenta]
GO
/****** Object:  Table [dbo].[OpeDetalleIngreso]    Script Date: 12/11/2022 04:07:16 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OpeDetalleIngreso]') AND type in (N'U'))
DROP TABLE [dbo].[OpeDetalleIngreso]
GO
/****** Object:  Table [dbo].[CatUsuario]    Script Date: 12/11/2022 04:07:16 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CatUsuario]') AND type in (N'U'))
DROP TABLE [dbo].[CatUsuario]
GO
/****** Object:  Table [dbo].[CatTipoPersona]    Script Date: 12/11/2022 04:07:16 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CatTipoPersona]') AND type in (N'U'))
DROP TABLE [dbo].[CatTipoPersona]
GO
/****** Object:  Table [dbo].[CatRol]    Script Date: 12/11/2022 04:07:16 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CatRol]') AND type in (N'U'))
DROP TABLE [dbo].[CatRol]
GO
/****** Object:  Table [dbo].[CatPlantillaCorreo]    Script Date: 12/11/2022 04:07:16 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CatPlantillaCorreo]') AND type in (N'U'))
DROP TABLE [dbo].[CatPlantillaCorreo]
GO
/****** Object:  Table [dbo].[CatPersona]    Script Date: 12/11/2022 04:07:16 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CatPersona]') AND type in (N'U'))
DROP TABLE [dbo].[CatPersona]
GO
/****** Object:  Table [dbo].[CatEstatusVentaIngreso]    Script Date: 12/11/2022 04:07:16 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CatEstatusVentaIngreso]') AND type in (N'U'))
DROP TABLE [dbo].[CatEstatusVentaIngreso]
GO
/****** Object:  Table [dbo].[CatCategoria]    Script Date: 12/11/2022 04:07:16 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CatCategoria]') AND type in (N'U'))
DROP TABLE [dbo].[CatCategoria]
GO
/****** Object:  Table [dbo].[CatArticulo]    Script Date: 12/11/2022 04:07:16 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CatArticulo]') AND type in (N'U'))
DROP TABLE [dbo].[CatArticulo]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/11/2022 04:07:16 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__EFMigrationsHistory]') AND type in (N'U'))
DROP TABLE [dbo].[__EFMigrationsHistory]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/11/2022 04:07:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatArticulo]    Script Date: 12/11/2022 04:07:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatArticulo](
	[IdArticulo] [int] IDENTITY(1,1) NOT NULL,
	[IdCategoria] [int] NOT NULL,
	[Codigo] [varchar](50) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[PrecioVenta] [decimal](18, 2) NOT NULL,
	[Stock] [int] NOT NULL,
	[Descripcion] [varchar](256) NOT NULL,
	[EstaActivo] [bit] NOT NULL,
 CONSTRAINT [PK_CatArticulo] PRIMARY KEY CLUSTERED 
(
	[IdArticulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatCategoria]    Script Date: 12/11/2022 04:07:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatCategoria](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Descripcion] [varchar](256) NOT NULL,
	[EstaActivo] [bit] NOT NULL,
 CONSTRAINT [PK_CatCategoria] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatEstatusVentaIngreso]    Script Date: 12/11/2022 04:07:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatEstatusVentaIngreso](
	[IdEstatusVentaIngreso] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
 CONSTRAINT [PK_CatEstatusVentaIngreso] PRIMARY KEY CLUSTERED 
(
	[IdEstatusVentaIngreso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatPersona]    Script Date: 12/11/2022 04:07:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatPersona](
	[IdPersona] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoPersona] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[TipoDocumento] [varchar](20) NOT NULL,
	[NumDocumento] [varchar](20) NOT NULL,
	[Direccion] [varchar](70) NOT NULL,
	[Telefono] [varchar](20) NOT NULL,
	[Email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CatPersona] PRIMARY KEY CLUSTERED 
(
	[IdPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatPlantillaCorreo]    Script Date: 12/11/2022 04:07:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatPlantillaCorreo](
	[IdPlantillaCorreo] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Asunto] [varchar](50) NOT NULL,
	[Plantilla] [varchar](max) NOT NULL,
	[DestinatarioCC] [varchar](3000) NOT NULL,
	[DestinatarioCCO] [varchar](3000) NOT NULL,
 CONSTRAINT [PK_CatPlantillaCorreo] PRIMARY KEY CLUSTERED 
(
	[IdPlantillaCorreo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatRol]    Script Date: 12/11/2022 04:07:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatRol](
	[IdRol] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[EstaActivo] [bit] NOT NULL,
 CONSTRAINT [PK_CatRol] PRIMARY KEY CLUSTERED 
(
	[IdRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatTipoPersona]    Script Date: 12/11/2022 04:07:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatTipoPersona](
	[IdTipoPersona] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
 CONSTRAINT [PK_CatTipoPersona] PRIMARY KEY CLUSTERED 
(
	[IdTipoPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatUsuario]    Script Date: 12/11/2022 04:07:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatUsuario](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[IdRol] [int] NOT NULL,
	[FolioUsuario] [varchar](20) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[TipoDocumento] [varchar](20) NOT NULL,
	[NumDocumento] [varchar](20) NOT NULL,
	[Direccion] [varchar](70) NOT NULL,
	[Telefono] [varchar](20) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[PasswordHash] [varbinary](max) NOT NULL,
	[PasswordSalt] [varbinary](max) NOT NULL,
	[EstaActivo] [bit] NOT NULL,
 CONSTRAINT [PK_CatUsuario] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpeDetalleIngreso]    Script Date: 12/11/2022 04:07:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpeDetalleIngreso](
	[IdDetalleIngreso] [int] IDENTITY(1,1) NOT NULL,
	[IdIngreso] [int] NOT NULL,
	[IdArticulo] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Precio] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_OpeDetalleIngreso] PRIMARY KEY CLUSTERED 
(
	[IdDetalleIngreso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpeDetalleVenta]    Script Date: 12/11/2022 04:07:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpeDetalleVenta](
	[IdDetalleVenta] [int] IDENTITY(1,1) NOT NULL,
	[IdVenta] [int] NOT NULL,
	[IdArticulo] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Precio] [decimal](18, 2) NOT NULL,
	[Descuento] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_OpeDetalleVenta] PRIMARY KEY CLUSTERED 
(
	[IdDetalleVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpeIngreso]    Script Date: 12/11/2022 04:07:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpeIngreso](
	[IdIngreso] [int] IDENTITY(1,1) NOT NULL,
	[IdPersona] [int] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[IdEstatusVentaIngreso] [int] NOT NULL,
	[TipoComprobante] [varchar](20) NOT NULL,
	[SerieComprobante] [varchar](7) NOT NULL,
	[NumComprobante] [nvarchar](10) NOT NULL,
	[FechaRegistro] [datetime2](7) NOT NULL,
	[Impuesto] [decimal](18, 2) NOT NULL,
	[Total] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_OpeIngreso] PRIMARY KEY CLUSTERED 
(
	[IdIngreso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpeNotificacion]    Script Date: 12/11/2022 04:07:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpeNotificacion](
	[IdNotificacion] [int] IDENTITY(1,1) NOT NULL,
	[IdPlantillaCorreo] [int] NOT NULL,
	[IdUsuarioRegistro] [int] NOT NULL,
	[FechaRegistro] [datetime2](7) NOT NULL,
	[EstaEnviada] [bit] NOT NULL,
 CONSTRAINT [PK_OpeNotificacion] PRIMARY KEY CLUSTERED 
(
	[IdNotificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpeVenta]    Script Date: 12/11/2022 04:07:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpeVenta](
	[IdVenta] [int] IDENTITY(1,1) NOT NULL,
	[IdPersona] [int] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[IdEstatusVentaIngreso] [int] NOT NULL,
	[TipoComprobante] [varchar](20) NOT NULL,
	[SerieComprobante] [varchar](7) NOT NULL,
	[NumComprobante] [varchar](10) NOT NULL,
	[FechaRegistro] [datetime2](7) NOT NULL,
	[Impuesto] [decimal](18, 2) NOT NULL,
	[Total] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_OpeVenta] PRIMARY KEY CLUSTERED 
(
	[IdVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpeVentaTracking]    Script Date: 12/11/2022 04:07:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpeVentaTracking](
	[IdVentaTracking] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuarioRegistro] [int] NOT NULL,
	[FechaRegistro] [datetime2](7) NOT NULL,
	[Movimiento] [varchar](200) NOT NULL,
 CONSTRAINT [PK_OpeVentaTracking] PRIMARY KEY CLUSTERED 
(
	[IdVentaTracking] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220827223025_INITDB', N'6.0.8')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220828225002_DBUpdate', N'6.0.8')
GO
SET IDENTITY_INSERT [dbo].[CatArticulo] ON 
GO
INSERT [dbo].[CatArticulo] ([IdArticulo], [IdCategoria], [Codigo], [Nombre], [PrecioVenta], [Stock], [Descripcion], [EstaActivo]) VALUES (1, 1, N'131296', N'IPhone 11', CAST(20000.00 AS Decimal(18, 2)), 13, N'Celular gama alta', 1)
GO
INSERT [dbo].[CatArticulo] ([IdArticulo], [IdCategoria], [Codigo], [Nombre], [PrecioVenta], [Stock], [Descripcion], [EstaActivo]) VALUES (2, 2, N'121234', N'Dell', CAST(21000.00 AS Decimal(18, 2)), 11, N'Laptop Dell', 1)
GO
INSERT [dbo].[CatArticulo] ([IdArticulo], [IdCategoria], [Codigo], [Nombre], [PrecioVenta], [Stock], [Descripcion], [EstaActivo]) VALUES (3, 3, N'234567', N'articulo de prueba', CAST(356.00 AS Decimal(18, 2)), 5, N'Este articulo es para realizar pruebas', 1)
GO
SET IDENTITY_INSERT [dbo].[CatArticulo] OFF
GO
SET IDENTITY_INSERT [dbo].[CatCategoria] ON 
GO
INSERT [dbo].[CatCategoria] ([IdCategoria], [Nombre], [Descripcion], [EstaActivo]) VALUES (1, N'Celulares', N'Todos los celulares', 1)
GO
INSERT [dbo].[CatCategoria] ([IdCategoria], [Nombre], [Descripcion], [EstaActivo]) VALUES (2, N'Computadoras', N'Todas las computadoras', 1)
GO
INSERT [dbo].[CatCategoria] ([IdCategoria], [Nombre], [Descripcion], [EstaActivo]) VALUES (3, N'Categoria de prueba', N'Esta categoria es para realizar pruebas', 1)
GO
SET IDENTITY_INSERT [dbo].[CatCategoria] OFF
GO
SET IDENTITY_INSERT [dbo].[CatEstatusVentaIngreso] ON 
GO
INSERT [dbo].[CatEstatusVentaIngreso] ([IdEstatusVentaIngreso], [Nombre]) VALUES (1, N'Aprobado')
GO
INSERT [dbo].[CatEstatusVentaIngreso] ([IdEstatusVentaIngreso], [Nombre]) VALUES (2, N'Rechazado')
GO
SET IDENTITY_INSERT [dbo].[CatEstatusVentaIngreso] OFF
GO
INSERT [dbo].[CatPlantillaCorreo] ([IdPlantillaCorreo], [Nombre], [Asunto], [Plantilla], [DestinatarioCC], [DestinatarioCCO]) VALUES (1, N'PlantillaEjemplo', N'PlantillaEjemplo', N'PlantillaEjemplo', N'PlantillaEjemplo', N'PlantillaEjemplo')
GO
SET IDENTITY_INSERT [dbo].[CatRol] ON 
GO
INSERT [dbo].[CatRol] ([IdRol], [Nombre], [Descripcion], [EstaActivo]) VALUES (1, N'Administrador', N'Administrador del sistema', 1)
GO
INSERT [dbo].[CatRol] ([IdRol], [Nombre], [Descripcion], [EstaActivo]) VALUES (2, N'Vendedor', N'Vendedor del sistema', 1)
GO
INSERT [dbo].[CatRol] ([IdRol], [Nombre], [Descripcion], [EstaActivo]) VALUES (3, N'Almacenero', N'Almacenero del sistema', 1)
GO
SET IDENTITY_INSERT [dbo].[CatRol] OFF
GO
SET IDENTITY_INSERT [dbo].[CatTipoPersona] ON 
GO
INSERT [dbo].[CatTipoPersona] ([IdTipoPersona], [Nombre]) VALUES (1, N'Cliente')
GO
INSERT [dbo].[CatTipoPersona] ([IdTipoPersona], [Nombre]) VALUES (2, N'Proveedor')
GO
SET IDENTITY_INSERT [dbo].[CatTipoPersona] OFF
GO
SET IDENTITY_INSERT [dbo].[CatUsuario] ON 
GO
INSERT [dbo].[CatUsuario] ([IdUsuario], [IdRol], [FolioUsuario], [Nombre], [TipoDocumento], [NumDocumento], [Direccion], [Telefono], [Email], [PasswordHash], [PasswordSalt], [EstaActivo]) VALUES (1, 1, N'JAHIR-292-2022', N'Jahir Lopez', N'pdf', N'abc-123', N'CDMx, Mexico', N'55 55 55 55 55', N'jahir.ilv13@gmail.com', 0xF26B2595333B88FDE9DDA269038B70567070E5963567604A14EB7EEEC78F90BAF963CBBCA958C4577E8CCDC778E87EA749B6807B20A44A10AFE4100FCEA0C54D, 0x431FBE58495FACD9FE0AA02E749D57C94A2A925417637AF48AB76D8B6B3184431449C2D35AB18919DF196CCCB49BCC687E25F1B570D1FF60D3DCF8239873871177279E4A85594C5EA6B071539F07517B181920347314CB9F322C360558334785EAC09E01BF15D1999D4FC8653BC18B0E012B31AFDA85D5F6012723B3B3733D62, 1)
GO
INSERT [dbo].[CatUsuario] ([IdUsuario], [IdRol], [FolioUsuario], [Nombre], [TipoDocumento], [NumDocumento], [Direccion], [Telefono], [Email], [PasswordHash], [PasswordSalt], [EstaActivo]) VALUES (2, 2, N'MANUE-605-2022', N'Manuel Lopez', N'pdf', N'abc-123', N'CDMx, Mexico', N'55 55 55 55 55', N'juan.lopez@gmail.com', 0x0B3C0A01B1EDD427736CABAD7354F5A17FB2A679841679ABB54D86DF75AC5662D650C9069E2BF082732B333A64577F4754376CEF8DE68457FCE0AAFE69CDAF2D, 0xB099C9B106ECFF293C13308B59AF0931BCA0502F67798961AD1027B94F169E688D2F4E3CF004FAEF5FBB32DE7A8210CB76C52B16EAF01401E4E486539660F3D3B82A81F30C34076CEBCE6EAFBBFA335CDB2686B8C92DFEAE9C0A3100653DBD76C054F3B1A386ED5C6B48B9F5F2507884D776B76C3764D783B9941815164B530B, 1)
GO
SET IDENTITY_INSERT [dbo].[CatUsuario] OFF
GO
SET IDENTITY_INSERT [dbo].[OpeNotificacion] ON 
GO
INSERT [dbo].[OpeNotificacion] ([IdNotificacion], [IdPlantillaCorreo], [IdUsuarioRegistro], [FechaRegistro], [EstaEnviada]) VALUES (1, 1, 1, CAST(N'2022-08-28T18:06:38.5633333' AS DateTime2), 0)
GO
INSERT [dbo].[OpeNotificacion] ([IdNotificacion], [IdPlantillaCorreo], [IdUsuarioRegistro], [FechaRegistro], [EstaEnviada]) VALUES (2, 1, 1, CAST(N'2022-08-28T18:37:36.5966667' AS DateTime2), 0)
GO
SET IDENTITY_INSERT [dbo].[OpeNotificacion] OFF
GO
ALTER TABLE [dbo].[CatArticulo]  WITH CHECK ADD  CONSTRAINT [FK_CatArticulo_CatCategoria_IdCategoria] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[CatCategoria] ([IdCategoria])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CatArticulo] CHECK CONSTRAINT [FK_CatArticulo_CatCategoria_IdCategoria]
GO
ALTER TABLE [dbo].[CatPersona]  WITH CHECK ADD  CONSTRAINT [FK_CatPersona_CatTipoPersona_IdTipoPersona] FOREIGN KEY([IdTipoPersona])
REFERENCES [dbo].[CatTipoPersona] ([IdTipoPersona])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CatPersona] CHECK CONSTRAINT [FK_CatPersona_CatTipoPersona_IdTipoPersona]
GO
ALTER TABLE [dbo].[CatUsuario]  WITH CHECK ADD  CONSTRAINT [FK_CatUsuario_CatRol_IdRol] FOREIGN KEY([IdRol])
REFERENCES [dbo].[CatRol] ([IdRol])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CatUsuario] CHECK CONSTRAINT [FK_CatUsuario_CatRol_IdRol]
GO
ALTER TABLE [dbo].[OpeDetalleIngreso]  WITH CHECK ADD  CONSTRAINT [FK_OpeDetalleIngreso_CatArticulo_IdArticulo] FOREIGN KEY([IdArticulo])
REFERENCES [dbo].[CatArticulo] ([IdArticulo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OpeDetalleIngreso] CHECK CONSTRAINT [FK_OpeDetalleIngreso_CatArticulo_IdArticulo]
GO
ALTER TABLE [dbo].[OpeDetalleIngreso]  WITH CHECK ADD  CONSTRAINT [FK_OpeDetalleIngreso_OpeIngreso_IdIngreso] FOREIGN KEY([IdIngreso])
REFERENCES [dbo].[OpeIngreso] ([IdIngreso])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OpeDetalleIngreso] CHECK CONSTRAINT [FK_OpeDetalleIngreso_OpeIngreso_IdIngreso]
GO
ALTER TABLE [dbo].[OpeDetalleVenta]  WITH CHECK ADD  CONSTRAINT [FK_OpeDetalleVenta_CatArticulo_IdArticulo] FOREIGN KEY([IdArticulo])
REFERENCES [dbo].[CatArticulo] ([IdArticulo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OpeDetalleVenta] CHECK CONSTRAINT [FK_OpeDetalleVenta_CatArticulo_IdArticulo]
GO
ALTER TABLE [dbo].[OpeDetalleVenta]  WITH CHECK ADD  CONSTRAINT [FK_OpeDetalleVenta_OpeVenta_IdVenta] FOREIGN KEY([IdVenta])
REFERENCES [dbo].[OpeVenta] ([IdVenta])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OpeDetalleVenta] CHECK CONSTRAINT [FK_OpeDetalleVenta_OpeVenta_IdVenta]
GO
ALTER TABLE [dbo].[OpeIngreso]  WITH CHECK ADD  CONSTRAINT [FK_OpeIngreso_CatEstatusVentaIngreso_IdEstatusVentaIngreso] FOREIGN KEY([IdEstatusVentaIngreso])
REFERENCES [dbo].[CatEstatusVentaIngreso] ([IdEstatusVentaIngreso])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OpeIngreso] CHECK CONSTRAINT [FK_OpeIngreso_CatEstatusVentaIngreso_IdEstatusVentaIngreso]
GO
ALTER TABLE [dbo].[OpeIngreso]  WITH CHECK ADD  CONSTRAINT [FK_OpeIngreso_CatPersona_IdPersona] FOREIGN KEY([IdPersona])
REFERENCES [dbo].[CatPersona] ([IdPersona])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OpeIngreso] CHECK CONSTRAINT [FK_OpeIngreso_CatPersona_IdPersona]
GO
ALTER TABLE [dbo].[OpeIngreso]  WITH CHECK ADD  CONSTRAINT [FK_OpeIngreso_CatUsuario_IdUsuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[CatUsuario] ([IdUsuario])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OpeIngreso] CHECK CONSTRAINT [FK_OpeIngreso_CatUsuario_IdUsuario]
GO
ALTER TABLE [dbo].[OpeNotificacion]  WITH CHECK ADD  CONSTRAINT [FK_OpeNotificacion_CatPlantillaCorreo_IdPlantillaCorreo] FOREIGN KEY([IdPlantillaCorreo])
REFERENCES [dbo].[CatPlantillaCorreo] ([IdPlantillaCorreo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OpeNotificacion] CHECK CONSTRAINT [FK_OpeNotificacion_CatPlantillaCorreo_IdPlantillaCorreo]
GO
ALTER TABLE [dbo].[OpeNotificacion]  WITH CHECK ADD  CONSTRAINT [FK_OpeNotificacion_CatUsuario_IdUsuarioRegistro] FOREIGN KEY([IdUsuarioRegistro])
REFERENCES [dbo].[CatUsuario] ([IdUsuario])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OpeNotificacion] CHECK CONSTRAINT [FK_OpeNotificacion_CatUsuario_IdUsuarioRegistro]
GO
ALTER TABLE [dbo].[OpeVenta]  WITH CHECK ADD  CONSTRAINT [FK_OpeVenta_CatEstatusVentaIngreso_IdEstatusVentaIngreso] FOREIGN KEY([IdEstatusVentaIngreso])
REFERENCES [dbo].[CatEstatusVentaIngreso] ([IdEstatusVentaIngreso])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OpeVenta] CHECK CONSTRAINT [FK_OpeVenta_CatEstatusVentaIngreso_IdEstatusVentaIngreso]
GO
ALTER TABLE [dbo].[OpeVenta]  WITH CHECK ADD  CONSTRAINT [FK_OpeVenta_CatPersona_IdPersona] FOREIGN KEY([IdPersona])
REFERENCES [dbo].[CatPersona] ([IdPersona])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OpeVenta] CHECK CONSTRAINT [FK_OpeVenta_CatPersona_IdPersona]
GO
ALTER TABLE [dbo].[OpeVenta]  WITH CHECK ADD  CONSTRAINT [FK_OpeVenta_CatUsuario_IdUsuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[CatUsuario] ([IdUsuario])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OpeVenta] CHECK CONSTRAINT [FK_OpeVenta_CatUsuario_IdUsuario]
GO
ALTER TABLE [dbo].[OpeVentaTracking]  WITH CHECK ADD  CONSTRAINT [FK_OpeVentaTracking_CatUsuario_IdUsuarioRegistro] FOREIGN KEY([IdUsuarioRegistro])
REFERENCES [dbo].[CatUsuario] ([IdUsuario])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OpeVentaTracking] CHECK CONSTRAINT [FK_OpeVentaTracking_CatUsuario_IdUsuarioRegistro]
GO

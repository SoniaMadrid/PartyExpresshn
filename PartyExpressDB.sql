USE [master]
GO
/****** Object:  Database [PartyExpress]    Script Date: 23/9/2021 23:42:37 ******/
CREATE DATABASE [PartyExpress]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PartyExpress', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PartyExpress.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PartyExpress_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PartyExpress_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PartyExpress] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PartyExpress].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PartyExpress] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PartyExpress] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PartyExpress] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PartyExpress] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PartyExpress] SET ARITHABORT OFF 
GO
ALTER DATABASE [PartyExpress] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PartyExpress] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PartyExpress] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PartyExpress] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PartyExpress] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PartyExpress] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PartyExpress] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PartyExpress] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PartyExpress] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PartyExpress] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PartyExpress] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PartyExpress] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PartyExpress] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PartyExpress] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PartyExpress] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PartyExpress] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PartyExpress] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PartyExpress] SET RECOVERY FULL 
GO
ALTER DATABASE [PartyExpress] SET  MULTI_USER 
GO
ALTER DATABASE [PartyExpress] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PartyExpress] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PartyExpress] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PartyExpress] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PartyExpress] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PartyExpress] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PartyExpress', N'ON'
GO
ALTER DATABASE [PartyExpress] SET QUERY_STORE = OFF
GO
USE [PartyExpress]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 23/9/2021 23:42:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[correo] [varchar](25) NOT NULL,
	[numeroCel] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacto]    Script Date: 23/9/2021 23:42:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacto](
	[id_contacto] [int] NOT NULL,
	[id_cliente] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[correo] [varchar](25) NOT NULL,
	[numeroCel] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_contacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evento]    Script Date: 23/9/2021 23:42:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evento](
	[id_evento] [int] NOT NULL,
	[id_cliente] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[correo] [varchar](25) NOT NULL,
	[numeroCel] [varchar](20) NOT NULL,
	[tipoEvento] [varchar](50) NOT NULL,
	[cantidad] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_evento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingresar]    Script Date: 23/9/2021 23:42:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingresar](
	[id_ingresar] [int] NOT NULL,
	[id_cliente] [int] NOT NULL,
	[correo] [varchar](25) NOT NULL,
	[contrasenia] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_ingresar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([id_cliente], [nombre], [correo], [numeroCel]) VALUES (1, N'Maria Castro', N'maria_ca@gmail.com', N'95561332')
INSERT [dbo].[Clientes] ([id_cliente], [nombre], [correo], [numeroCel]) VALUES (2, N'Marcela Mejia', N'mar_mejia@gmail.com', N'98156332')
INSERT [dbo].[Clientes] ([id_cliente], [nombre], [correo], [numeroCel]) VALUES (3, N'Juan Medina', N'juan_m@gmail.com', N'98568332')
INSERT [dbo].[Clientes] ([id_cliente], [nombre], [correo], [numeroCel]) VALUES (4, N'Tania Mendoza', N'tania_m@gmail.com', N'33556332')
INSERT [dbo].[Clientes] ([id_cliente], [nombre], [correo], [numeroCel]) VALUES (5, N'Raul Pineda', N'raul_pi@gmail.com', N'9856332')
INSERT [dbo].[Clientes] ([id_cliente], [nombre], [correo], [numeroCel]) VALUES (6, N'Ernesto Alvarez', N'ernes_alva@gmail.com', N'9856332')
INSERT [dbo].[Clientes] ([id_cliente], [nombre], [correo], [numeroCel]) VALUES (7, N'Fabian Cruz', N'fabi_c@gmail.com', N'98561332')
INSERT [dbo].[Clientes] ([id_cliente], [nombre], [correo], [numeroCel]) VALUES (8, N'José Canales', N'jose_ca@gmail.com', N'98851332')
INSERT [dbo].[Clientes] ([id_cliente], [nombre], [correo], [numeroCel]) VALUES (9, N'Allan Villatoro', N'allan_v@gmail.com', N'9856332')
INSERT [dbo].[Clientes] ([id_cliente], [nombre], [correo], [numeroCel]) VALUES (10, N'Carola Domingo', N'carola98@gmail.com', N'33655632')
INSERT [dbo].[Clientes] ([id_cliente], [nombre], [correo], [numeroCel]) VALUES (11, N'Josué Mejía', N'josue_mejia4@gmail.com', N'97156332')
INSERT [dbo].[Clientes] ([id_cliente], [nombre], [correo], [numeroCel]) VALUES (12, N'Rolando Alveraz', N'rolan_78@gmail.com', N'95156332')
INSERT [dbo].[Clientes] ([id_cliente], [nombre], [correo], [numeroCel]) VALUES (13, N'Sara Peña', N'sara_p98@gmail.com', N'97656332')
INSERT [dbo].[Clientes] ([id_cliente], [nombre], [correo], [numeroCel]) VALUES (14, N'Celia Corado', N'celia982@gmail.com', N'97665632')
INSERT [dbo].[Clientes] ([id_cliente], [nombre], [correo], [numeroCel]) VALUES (15, N'Isabela Sagastume', N'isabela123@gmail.com', N'98563312')
INSERT [dbo].[Clientes] ([id_cliente], [nombre], [correo], [numeroCel]) VALUES (16, N'Nia Medina', N'nia_med@gmail.com', N'98563872')
INSERT [dbo].[Clientes] ([id_cliente], [nombre], [correo], [numeroCel]) VALUES (17, N'Isabel Cruz', N'isabelcruz@gmail.com', N'98596132')
INSERT [dbo].[Clientes] ([id_cliente], [nombre], [correo], [numeroCel]) VALUES (18, N'Victoria Medina', N'victoriamedina@gmail.com', N'97956332')
INSERT [dbo].[Clientes] ([id_cliente], [nombre], [correo], [numeroCel]) VALUES (19, N'Mario Castro', N'mario_castro@gmail.com', N'98981332')
INSERT [dbo].[Clientes] ([id_cliente], [nombre], [correo], [numeroCel]) VALUES (20, N'Jesús Pineda', N'jesu_1989@gmail.com', N'98981332')
INSERT [dbo].[Clientes] ([id_cliente], [nombre], [correo], [numeroCel]) VALUES (21, N'Ramon Valdez', N'ramonvaldez@yahoo.com', N'95123650')
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
INSERT [dbo].[Contacto] ([id_contacto], [id_cliente], [nombre], [correo], [numeroCel]) VALUES (70, 20, N'Jesús Pineda', N'jesu_1989@gmail.com', N'98981332')
INSERT [dbo].[Contacto] ([id_contacto], [id_cliente], [nombre], [correo], [numeroCel]) VALUES (80, 18, N'Victoria Medina', N'victoriamedina@gmail.com', N'97956332')
INSERT [dbo].[Contacto] ([id_contacto], [id_cliente], [nombre], [correo], [numeroCel]) VALUES (82, 17, N'Isabel Cruz', N'isabelcruz@gmail.com', N'98596132')
INSERT [dbo].[Contacto] ([id_contacto], [id_cliente], [nombre], [correo], [numeroCel]) VALUES (83, 16, N'Nia Medina', N'nia_med@gmail.com', N'98563872')
INSERT [dbo].[Contacto] ([id_contacto], [id_cliente], [nombre], [correo], [numeroCel]) VALUES (84, 11, N'Josué Mejía', N'josue_mejia4@gmail.com', N'97156332')
INSERT [dbo].[Contacto] ([id_contacto], [id_cliente], [nombre], [correo], [numeroCel]) VALUES (85, 10, N'Carola Domingo', N'carola98@gmail.com', N'33655632')
INSERT [dbo].[Contacto] ([id_contacto], [id_cliente], [nombre], [correo], [numeroCel]) VALUES (86, 12, N'Rolando Alveraz', N'rolan_78@gmail.com', N'95156332')
INSERT [dbo].[Contacto] ([id_contacto], [id_cliente], [nombre], [correo], [numeroCel]) VALUES (87, 13, N'Sara Peña', N'sara_p98@gmail.com', N'97656332')
INSERT [dbo].[Contacto] ([id_contacto], [id_cliente], [nombre], [correo], [numeroCel]) VALUES (88, 14, N'Celia Corado', N'celia982@gmail.com', N'97665632')
INSERT [dbo].[Contacto] ([id_contacto], [id_cliente], [nombre], [correo], [numeroCel]) VALUES (89, 15, N'Isabela Sagastume', N'isabela123@gmail.com', N'98563312')
INSERT [dbo].[Contacto] ([id_contacto], [id_cliente], [nombre], [correo], [numeroCel]) VALUES (90, 19, N'Mario Castro', N'mario_castro@gmail.com', N'98981332')
INSERT [dbo].[Contacto] ([id_contacto], [id_cliente], [nombre], [correo], [numeroCel]) VALUES (91, 1, N'Maria Castro', N'maria_ca@gmail.com', N'95561332')
INSERT [dbo].[Contacto] ([id_contacto], [id_cliente], [nombre], [correo], [numeroCel]) VALUES (92, 2, N'Marcela Mejia', N'mar_mejia@gmail.com', N'98156332')
INSERT [dbo].[Contacto] ([id_contacto], [id_cliente], [nombre], [correo], [numeroCel]) VALUES (93, 3, N'Juan Medina', N'juan_m@gmail.com', N'98568332')
INSERT [dbo].[Contacto] ([id_contacto], [id_cliente], [nombre], [correo], [numeroCel]) VALUES (94, 4, N'Tania Mendoza', N'tania_m@gmail.com', N'33556332')
INSERT [dbo].[Contacto] ([id_contacto], [id_cliente], [nombre], [correo], [numeroCel]) VALUES (95, 5, N'Raul Pineda', N'raul_pi@gmail.com', N'9856332')
INSERT [dbo].[Contacto] ([id_contacto], [id_cliente], [nombre], [correo], [numeroCel]) VALUES (96, 6, N'Ernesto Alvarez', N'ernes_alva@gmail.com', N'9856332')
INSERT [dbo].[Contacto] ([id_contacto], [id_cliente], [nombre], [correo], [numeroCel]) VALUES (97, 7, N'Fabian Cruz', N'fabi_c@gmail.com', N'98561332')
INSERT [dbo].[Contacto] ([id_contacto], [id_cliente], [nombre], [correo], [numeroCel]) VALUES (98, 8, N'José Canales', N'jose_ca@gmail.com', N'98851332')
INSERT [dbo].[Contacto] ([id_contacto], [id_cliente], [nombre], [correo], [numeroCel]) VALUES (99, 9, N'Allan Villatoro', N'allan_v@gmail.com', N'9856332')
GO
INSERT [dbo].[Evento] ([id_evento], [id_cliente], [nombre], [correo], [numeroCel], [tipoEvento], [cantidad]) VALUES (301, 1, N'Michelle Liro', N'mi_liro99@gmail.com', N'97861332', N'Cumpleaños', N'25')
INSERT [dbo].[Evento] ([id_evento], [id_cliente], [nombre], [correo], [numeroCel], [tipoEvento], [cantidad]) VALUES (302, 2, N'María Pilar', N'mari_pila45@gmail.com', N'95461532', N'Graduación', N'20')
INSERT [dbo].[Evento] ([id_evento], [id_cliente], [nombre], [correo], [numeroCel], [tipoEvento], [cantidad]) VALUES (303, 3, N'Jaime González', N'jaime_gonza88@gmail.com', N'97661332', N'Boda', N'35')
INSERT [dbo].[Evento] ([id_evento], [id_cliente], [nombre], [correo], [numeroCel], [tipoEvento], [cantidad]) VALUES (304, 4, N'Andrea Heredia', N'andrea56@gmail.com', N'98462332', N'Bautizo', N'12')
INSERT [dbo].[Evento] ([id_evento], [id_cliente], [nombre], [correo], [numeroCel], [tipoEvento], [cantidad]) VALUES (305, 5, N'Valeria Cisneros', N'valeri65@gmail.com', N'95863332', N'Cumpleaños', N'20')
INSERT [dbo].[Evento] ([id_evento], [id_cliente], [nombre], [correo], [numeroCel], [tipoEvento], [cantidad]) VALUES (306, 6, N'Esperanza Milagros', N'hope1999@gmail.com', N'95764335', N'Boda', N'30')
INSERT [dbo].[Evento] ([id_evento], [id_cliente], [nombre], [correo], [numeroCel], [tipoEvento], [cantidad]) VALUES (307, 7, N'Marianela Alcerro', N'marianela_a@gmail.com', N'31544334', N'Bautizo', N'15')
INSERT [dbo].[Evento] ([id_evento], [id_cliente], [nombre], [correo], [numeroCel], [tipoEvento], [cantidad]) VALUES (308, 8, N'José Zelaya', N'jos_e56@gmail.com', N'33567335', N'Cumpleaños', N'20')
INSERT [dbo].[Evento] ([id_evento], [id_cliente], [nombre], [correo], [numeroCel], [tipoEvento], [cantidad]) VALUES (309, 9, N'Manuel de Jesús', N'man_el45@gmail.com', N'95564331', N'Boda', N'13')
INSERT [dbo].[Evento] ([id_evento], [id_cliente], [nombre], [correo], [numeroCel], [tipoEvento], [cantidad]) VALUES (341, 19, N'Miriam Madrid', N'mariam89@gmail.com', N'97661339', N'Bautizo', N'15')
INSERT [dbo].[Evento] ([id_evento], [id_cliente], [nombre], [correo], [numeroCel], [tipoEvento], [cantidad]) VALUES (342, 20, N'Carlos Nuñez', N'carlos15@gmail.com', N'97861332', N'Boda', N'10')
INSERT [dbo].[Evento] ([id_evento], [id_cliente], [nombre], [correo], [numeroCel], [tipoEvento], [cantidad]) VALUES (401, 10, N'Mario Rodriguez', N'mario89@gmail.com', N'95451337', N'Graduación', N'25')
INSERT [dbo].[Evento] ([id_evento], [id_cliente], [nombre], [correo], [numeroCel], [tipoEvento], [cantidad]) VALUES (402, 11, N'Lourdes Girón', N'lourdes_hfj@gmail.com', N'98861339', N'Graduación', N'25')
INSERT [dbo].[Evento] ([id_evento], [id_cliente], [nombre], [correo], [numeroCel], [tipoEvento], [cantidad]) VALUES (403, 12, N'Sofia Medina', N'sofia_smk@gmail.com', N'94461333', N'15 años', N'50')
INSERT [dbo].[Evento] ([id_evento], [id_cliente], [nombre], [correo], [numeroCel], [tipoEvento], [cantidad]) VALUES (404, 13, N'Merlin Lagunes', N'merll_e5@gmail.com', N'97541331', N'Graduación', N'30')
INSERT [dbo].[Evento] ([id_evento], [id_cliente], [nombre], [correo], [numeroCel], [tipoEvento], [cantidad]) VALUES (405, 14, N'Porfirio Mendez', N'por_89@gmail.com', N'95761336', N'Cumpleaños', N'20')
INSERT [dbo].[Evento] ([id_evento], [id_cliente], [nombre], [correo], [numeroCel], [tipoEvento], [cantidad]) VALUES (406, 15, N'Ruth Mejía ', N'ruth_mej56@gmail.com', N'95461336', N'Bautizo', N'15')
INSERT [dbo].[Evento] ([id_evento], [id_cliente], [nombre], [correo], [numeroCel], [tipoEvento], [cantidad]) VALUES (407, 16, N'Silvana Castro', N'sc_7845@gmail.com', N'95961338', N'Baby Shower', N'20')
INSERT [dbo].[Evento] ([id_evento], [id_cliente], [nombre], [correo], [numeroCel], [tipoEvento], [cantidad]) VALUES (408, 17, N'Juan Cortés', N'juan_c56@gmail.com', N'33561334', N'Cumpleaños', N'25')
INSERT [dbo].[Evento] ([id_evento], [id_cliente], [nombre], [correo], [numeroCel], [tipoEvento], [cantidad]) VALUES (409, 18, N'Francisco González', N'francis_go25@gmail.com', N'97861333', N'Cooperativo', N'20')
GO
INSERT [dbo].[Ingresar] ([id_ingresar], [id_cliente], [correo], [contrasenia]) VALUES (1001, 1, N'mi_liro99@gmail.com', N'Liro99')
INSERT [dbo].[Ingresar] ([id_ingresar], [id_cliente], [correo], [contrasenia]) VALUES (1002, 2, N'mari_pila45@gmail.com', N'Pilar18')
INSERT [dbo].[Ingresar] ([id_ingresar], [id_cliente], [correo], [contrasenia]) VALUES (1003, 3, N'jaime_gonza88@gmail.com', N'Gonza99')
INSERT [dbo].[Ingresar] ([id_ingresar], [id_cliente], [correo], [contrasenia]) VALUES (1004, 4, N'andrea56@gmail.com', N'Puerta89')
INSERT [dbo].[Ingresar] ([id_ingresar], [id_cliente], [correo], [contrasenia]) VALUES (1005, 5, N'valeri65@gmail.com', N'Ventana45')
INSERT [dbo].[Ingresar] ([id_ingresar], [id_cliente], [correo], [contrasenia]) VALUES (1006, 6, N'hope1999@gmail.com', N'Perro78')
INSERT [dbo].[Ingresar] ([id_ingresar], [id_cliente], [correo], [contrasenia]) VALUES (1007, 7, N'marianela_a@gmail.com', N'Fecha45')
INSERT [dbo].[Ingresar] ([id_ingresar], [id_cliente], [correo], [contrasenia]) VALUES (1008, 8, N'jos_e56@gmail.com', N'Evento7')
INSERT [dbo].[Ingresar] ([id_ingresar], [id_cliente], [correo], [contrasenia]) VALUES (1009, 9, N'man_el45@gmail.com', N'manuEl8')
INSERT [dbo].[Ingresar] ([id_ingresar], [id_cliente], [correo], [contrasenia]) VALUES (1010, 10, N'mario89@gmail.com', N'Dados2')
INSERT [dbo].[Ingresar] ([id_ingresar], [id_cliente], [correo], [contrasenia]) VALUES (1011, 11, N'lourdes_hfj@gmail.com', N'loud91')
INSERT [dbo].[Ingresar] ([id_ingresar], [id_cliente], [correo], [contrasenia]) VALUES (1012, 12, N'sofia_smk@gmail.com', N'sofix8')
INSERT [dbo].[Ingresar] ([id_ingresar], [id_cliente], [correo], [contrasenia]) VALUES (1013, 13, N'merll_e5@gmail.com', N'mEAl45')
INSERT [dbo].[Ingresar] ([id_ingresar], [id_cliente], [correo], [contrasenia]) VALUES (1014, 14, N'por_89@gmail.com', N'porEve54')
INSERT [dbo].[Ingresar] ([id_ingresar], [id_cliente], [correo], [contrasenia]) VALUES (1015, 15, N'ruth_mej56@gmail.com', N'ruTa42')
INSERT [dbo].[Ingresar] ([id_ingresar], [id_cliente], [correo], [contrasenia]) VALUES (1016, 16, N'sc_7845@gmail.com', N'bote9a')
INSERT [dbo].[Ingresar] ([id_ingresar], [id_cliente], [correo], [contrasenia]) VALUES (1017, 17, N'juan_c56@gmail.com', N'juancas7')
INSERT [dbo].[Ingresar] ([id_ingresar], [id_cliente], [correo], [contrasenia]) VALUES (1018, 18, N'francis_go25@gmail.com', N'Kap52d')
INSERT [dbo].[Ingresar] ([id_ingresar], [id_cliente], [correo], [contrasenia]) VALUES (1019, 19, N'mariam89@gmail.com', N'opEn78')
INSERT [dbo].[Ingresar] ([id_ingresar], [id_cliente], [correo], [contrasenia]) VALUES (1020, 20, N'carlos15@gmail.com', N'Carlos76')
GO
ALTER TABLE [dbo].[Contacto]  WITH CHECK ADD FOREIGN KEY([id_cliente])
REFERENCES [dbo].[Clientes] ([id_cliente])
GO
ALTER TABLE [dbo].[Evento]  WITH CHECK ADD FOREIGN KEY([id_cliente])
REFERENCES [dbo].[Clientes] ([id_cliente])
GO
ALTER TABLE [dbo].[Ingresar]  WITH CHECK ADD FOREIGN KEY([id_cliente])
REFERENCES [dbo].[Clientes] ([id_cliente])
GO
USE [master]
GO
ALTER DATABASE [PartyExpress] SET  READ_WRITE 
GO

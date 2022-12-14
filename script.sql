/*nombre: victoria morrillo matricula: 21-MIIT-1-019 seccion: 0541*/


USE [master]
GO
/****** Object:  Database [cosmetic data]    Script Date: 11/12/2022 10:05:21 p. m. ******/
CREATE DATABASE [cosmetic data]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'cosmetic data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\cosmetic data.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'cosmetic data_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\cosmetic data_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [cosmetic data] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [cosmetic data].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [cosmetic data] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [cosmetic data] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [cosmetic data] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [cosmetic data] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [cosmetic data] SET ARITHABORT OFF 
GO
ALTER DATABASE [cosmetic data] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [cosmetic data] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [cosmetic data] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [cosmetic data] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [cosmetic data] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [cosmetic data] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [cosmetic data] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [cosmetic data] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [cosmetic data] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [cosmetic data] SET  DISABLE_BROKER 
GO
ALTER DATABASE [cosmetic data] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [cosmetic data] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [cosmetic data] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [cosmetic data] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [cosmetic data] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [cosmetic data] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [cosmetic data] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [cosmetic data] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [cosmetic data] SET  MULTI_USER 
GO
ALTER DATABASE [cosmetic data] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [cosmetic data] SET DB_CHAINING OFF 
GO
ALTER DATABASE [cosmetic data] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [cosmetic data] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [cosmetic data] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [cosmetic data] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [cosmetic data] SET QUERY_STORE = OFF
GO
USE [cosmetic data]
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 11/12/2022 10:05:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clientes](
	[clientesid] [int] NOT NULL,
	[empresascosmetcos] [varchar](50) NULL,
	[L'Oréal] [varchar](50) NULL,
	[Shiseido] [varchar](50) NULL,
	[software] [int] NULL,
 CONSTRAINT [PK_clientes] PRIMARY KEY CLUSTERED 
(
	[clientesid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[software]    Script Date: 11/12/2022 10:05:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[software](
	[softwareid] [int] NOT NULL,
	[Jefe de proyecto] [varchar](50) NULL,
	[Analista de software] [varchar](50) NULL,
	[Arquitecto de software] [varchar](50) NULL,
	[Desarrollador de software] [varchar](50) NULL,
	[Programador] [varchar](50) NULL,
	[analista del mercado] [nchar](10) NULL,
	[tester] [nchar](10) NULL,
 CONSTRAINT [PK_software] PRIMARY KEY CLUSTERED 
(
	[softwareid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[software en venta]    Script Date: 11/12/2022 10:05:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[software en venta](
	[software en venta id] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[utilidad] [varchar](50) NULL,
	[precio] [varchar](50) NULL,
	[software] [int] NULL,
 CONSTRAINT [PK_software en venta] PRIMARY KEY CLUSTERED 
(
	[software en venta id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[clientes] ([clientesid], [empresascosmetcos], [L'Oréal], [Shiseido], [software]) VALUES (1, N'3', N'ofece una gran alta gama de productor de cosmetio', N'ofrecen los mejores cuidados para la piel', 1)
GO
INSERT [dbo].[software] ([softwareid], [Jefe de proyecto], [Analista de software], [Arquitecto de software], [Desarrollador de software], [Programador], [analista del mercado], [tester]) VALUES (1, N'victoria morillo', N'victor ', N'leo', N'vianca', N'aranza ', N'raichel   ', N'nati      ')
INSERT [dbo].[software] ([softwareid], [Jefe de proyecto], [Analista de software], [Arquitecto de software], [Desarrollador de software], [Programador], [analista del mercado], [tester]) VALUES (2, NULL, N'antonio', N'elian', N'marcos', N'manuel', N'nancis    ', NULL)
INSERT [dbo].[software] ([softwareid], [Jefe de proyecto], [Analista de software], [Arquitecto de software], [Desarrollador de software], [Programador], [analista del mercado], [tester]) VALUES (3, NULL, N'robet ', N'enma ', N'roddy', N'raimel', N'lucas     ', NULL)
INSERT [dbo].[software] ([softwareid], [Jefe de proyecto], [Analista de software], [Arquitecto de software], [Desarrollador de software], [Programador], [analista del mercado], [tester]) VALUES (4, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[software en venta] ([software en venta id], [nombre], [utilidad], [precio], [software]) VALUES (1, N'cosmetic data ', N'muchas sobre el mercado cosmetio', N'mil quinienos dolares ', NULL)
GO
ALTER TABLE [dbo].[software en venta]  WITH CHECK ADD  CONSTRAINT [FK_software en venta_clientes] FOREIGN KEY([software])
REFERENCES [dbo].[clientes] ([clientesid])
GO
ALTER TABLE [dbo].[software en venta] CHECK CONSTRAINT [FK_software en venta_clientes]
GO
ALTER TABLE [dbo].[software en venta]  WITH CHECK ADD  CONSTRAINT [FK_software en venta_software] FOREIGN KEY([software])
REFERENCES [dbo].[software] ([softwareid])
GO
ALTER TABLE [dbo].[software en venta] CHECK CONSTRAINT [FK_software en venta_software]
GO
USE [master]
GO
ALTER DATABASE [cosmetic data] SET  READ_WRITE 
GO

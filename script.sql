USE [master]
GO
/****** Object:  Database [Quick_Movility]    Script Date: 07/06/2018 14:20:21 ******/
CREATE DATABASE [Quick_Movility]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Quick_Movility', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Quick_Movility.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Quick_Movility_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Quick_Movility_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Quick_Movility] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Quick_Movility].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Quick_Movility] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Quick_Movility] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Quick_Movility] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Quick_Movility] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Quick_Movility] SET ARITHABORT OFF 
GO
ALTER DATABASE [Quick_Movility] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Quick_Movility] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Quick_Movility] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Quick_Movility] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Quick_Movility] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Quick_Movility] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Quick_Movility] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Quick_Movility] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Quick_Movility] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Quick_Movility] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Quick_Movility] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Quick_Movility] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Quick_Movility] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Quick_Movility] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Quick_Movility] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Quick_Movility] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Quick_Movility] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Quick_Movility] SET RECOVERY FULL 
GO
ALTER DATABASE [Quick_Movility] SET  MULTI_USER 
GO
ALTER DATABASE [Quick_Movility] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Quick_Movility] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Quick_Movility] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Quick_Movility] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Quick_Movility] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Quick_Movility', N'ON'
GO
ALTER DATABASE [Quick_Movility] SET QUERY_STORE = OFF
GO
USE [Quick_Movility]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Quick_Movility]
GO
/****** Object:  Table [dbo].[Tbl_Acc]    Script Date: 07/06/2018 14:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Acc](
	[Cod_Acc] [int] IDENTITY(1,1) NOT NULL,
	[Cod_Usu] [int] NOT NULL,
	[Id_Acc] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_Acc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Not]    Script Date: 07/06/2018 14:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Not](
	[Cod_Not] [int] IDENTITY(1,1) NOT NULL,
	[Cod_Usu] [int] NOT NULL,
	[Nom_Not] [varchar](50) NOT NULL,
	[Des_Not] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_Not] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Per]    Script Date: 07/06/2018 14:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Per](
	[Cod_Per] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Per] [varchar](50) NOT NULL,
	[Est_Per] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_Per] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Per_Rol]    Script Date: 07/06/2018 14:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Per_Rol](
	[Cod_Rol] [int] NOT NULL,
	[Cod_Per] [int] NOT NULL,
	[Per_Rol_Est] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_Rol] ASC,
	[Cod_Per] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Rol]    Script Date: 07/06/2018 14:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Rol](
	[Cod_Rol] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Rol] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_Rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Usu]    Script Date: 07/06/2018 14:20:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Usu](
	[Cod_Usu] [int] IDENTITY(1,1) NOT NULL,
	[Cod_Rol] [int] NOT NULL,
	[Nom_Usu] [varchar](50) NOT NULL,
	[Ape_Usu] [varchar](50) NOT NULL,
	[Doc_Usu] [int] NOT NULL,
	[Mail_Usu] [varchar](50) NOT NULL,
	[Tel_Usu] [varchar](20) NOT NULL,
	[Dir_Usu] [varchar](50) NOT NULL,
	[Est_Rol] [varchar](20) NOT NULL,
 CONSTRAINT [PK__Tbl_Usu__0260D4F330941904] PRIMARY KEY CLUSTERED 
(
	[Cod_Usu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Veh]    Script Date: 07/06/2018 14:20:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Veh](
	[Cod_Veh] [int] IDENTITY(1,1) NOT NULL,
	[Tip_Veh] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_Veh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tbl_Per_Rol]  WITH CHECK ADD FOREIGN KEY([Cod_Per])
REFERENCES [dbo].[Tbl_Per] ([Cod_Per])
GO
ALTER TABLE [dbo].[Tbl_Per_Rol]  WITH CHECK ADD FOREIGN KEY([Cod_Rol])
REFERENCES [dbo].[Tbl_Rol] ([Cod_Rol])
GO
USE [master]
GO
ALTER DATABASE [Quick_Movility] SET  READ_WRITE 
GO

USE [master]
GO
/****** Object:  Database [DBTest]    Script Date: 17.09.2022 16:03:25 ******/
CREATE DATABASE [DBTest]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBTest', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DBTest.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBTest_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DBTest_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DBTest] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBTest].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBTest] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBTest] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBTest] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBTest] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBTest] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBTest] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBTest] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBTest] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBTest] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBTest] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBTest] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBTest] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBTest] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBTest] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBTest] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBTest] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBTest] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBTest] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBTest] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBTest] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBTest] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBTest] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBTest] SET RECOVERY FULL 
GO
ALTER DATABASE [DBTest] SET  MULTI_USER 
GO
ALTER DATABASE [DBTest] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBTest] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBTest] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBTest] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBTest] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DBTest', N'ON'
GO
ALTER DATABASE [DBTest] SET QUERY_STORE = OFF
GO
USE [DBTest]
GO
/****** Object:  Table [dbo].[view_modelcalc]    Script Date: 17.09.2022 16:03:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[view_modelcalc](
	[Idmodelcalc] [int] NOT NULL,
	[Idorderitem] [int] NOT NULL,
	[Good_marking] [nvarchar](50) NOT NULL,
	[qustore] [float] NOT NULL,
 CONSTRAINT [PK_view_modelcalc] PRIMARY KEY CLUSTERED 
(
	[Idmodelcalc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[view_orderitem]    Script Date: 17.09.2022 16:03:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[view_orderitem](
	[Idorderitem] [int] NOT NULL,
	[Idorder] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[qu] [int] NOT NULL,
 CONSTRAINT [PK_view_orderitem] PRIMARY KEY CLUSTERED 
(
	[Idorderitem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[view_orders]    Script Date: 17.09.2022 16:03:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[view_orders](
	[Idorder] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[Seller_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_view_orders] PRIMARY KEY CLUSTERED 
(
	[Idorder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[view_modelcalc] ([Idmodelcalc], [Idorderitem], [Good_marking], [qustore]) VALUES (1, 1, N'A1', 3)
INSERT [dbo].[view_modelcalc] ([Idmodelcalc], [Idorderitem], [Good_marking], [qustore]) VALUES (2, 2, N'B2', 1)
INSERT [dbo].[view_modelcalc] ([Idmodelcalc], [Idorderitem], [Good_marking], [qustore]) VALUES (3, 1, N'A1', 4)
INSERT [dbo].[view_modelcalc] ([Idmodelcalc], [Idorderitem], [Good_marking], [qustore]) VALUES (4, 2, N'C10', 5)
INSERT [dbo].[view_modelcalc] ([Idmodelcalc], [Idorderitem], [Good_marking], [qustore]) VALUES (5, 2, N'A1', 1)
INSERT [dbo].[view_modelcalc] ([Idmodelcalc], [Idorderitem], [Good_marking], [qustore]) VALUES (6, 3, N'B2', 2)
INSERT [dbo].[view_modelcalc] ([Idmodelcalc], [Idorderitem], [Good_marking], [qustore]) VALUES (7, 3, N'C10', 4)
INSERT [dbo].[view_modelcalc] ([Idmodelcalc], [Idorderitem], [Good_marking], [qustore]) VALUES (8, 4, N'A1', 1)
INSERT [dbo].[view_modelcalc] ([Idmodelcalc], [Idorderitem], [Good_marking], [qustore]) VALUES (9, 3, N'A1', 3)
INSERT [dbo].[view_modelcalc] ([Idmodelcalc], [Idorderitem], [Good_marking], [qustore]) VALUES (10, 3, N'D1', 2)
INSERT [dbo].[view_modelcalc] ([Idmodelcalc], [Idorderitem], [Good_marking], [qustore]) VALUES (11, 4, N'A1', 1)
INSERT [dbo].[view_modelcalc] ([Idmodelcalc], [Idorderitem], [Good_marking], [qustore]) VALUES (12, 5, N'B2', 1.5)
INSERT [dbo].[view_modelcalc] ([Idmodelcalc], [Idorderitem], [Good_marking], [qustore]) VALUES (13, 5, N'D1', 1)
INSERT [dbo].[view_modelcalc] ([Idmodelcalc], [Idorderitem], [Good_marking], [qustore]) VALUES (14, 6, N'A1', 1.3)
INSERT [dbo].[view_modelcalc] ([Idmodelcalc], [Idorderitem], [Good_marking], [qustore]) VALUES (15, 7, N'A1', 5.1)
INSERT [dbo].[view_modelcalc] ([Idmodelcalc], [Idorderitem], [Good_marking], [qustore]) VALUES (16, 6, N'D1', 2.2)
INSERT [dbo].[view_modelcalc] ([Idmodelcalc], [Idorderitem], [Good_marking], [qustore]) VALUES (17, 10, N'A1', 1.7)
INSERT [dbo].[view_modelcalc] ([Idmodelcalc], [Idorderitem], [Good_marking], [qustore]) VALUES (18, 9, N'B2', 2.3)
INSERT [dbo].[view_modelcalc] ([Idmodelcalc], [Idorderitem], [Good_marking], [qustore]) VALUES (19, 6, N'A1', 1)
INSERT [dbo].[view_modelcalc] ([Idmodelcalc], [Idorderitem], [Good_marking], [qustore]) VALUES (20, 7, N'A1', 3)
INSERT [dbo].[view_modelcalc] ([Idmodelcalc], [Idorderitem], [Good_marking], [qustore]) VALUES (21, 10, N'D1', 4)
INSERT [dbo].[view_modelcalc] ([Idmodelcalc], [Idorderitem], [Good_marking], [qustore]) VALUES (22, 8, N'A1', 2)
INSERT [dbo].[view_modelcalc] ([Idmodelcalc], [Idorderitem], [Good_marking], [qustore]) VALUES (23, 8, N'D1', 1)
INSERT [dbo].[view_modelcalc] ([Idmodelcalc], [Idorderitem], [Good_marking], [qustore]) VALUES (24, 9, N'A1', 5)
INSERT [dbo].[view_modelcalc] ([Idmodelcalc], [Idorderitem], [Good_marking], [qustore]) VALUES (25, 7, N'B2', 1.5)
INSERT [dbo].[view_modelcalc] ([Idmodelcalc], [Idorderitem], [Good_marking], [qustore]) VALUES (26, 10, N'B2', 1.8)
INSERT [dbo].[view_modelcalc] ([Idmodelcalc], [Idorderitem], [Good_marking], [qustore]) VALUES (27, 10, N'A1', 2.1)
INSERT [dbo].[view_modelcalc] ([Idmodelcalc], [Idorderitem], [Good_marking], [qustore]) VALUES (28, 1, N'C10', 1.4)
INSERT [dbo].[view_modelcalc] ([Idmodelcalc], [Idorderitem], [Good_marking], [qustore]) VALUES (29, 1, N'B2', 2)
GO
INSERT [dbo].[view_orderitem] ([Idorderitem], [Idorder], [Name], [qu]) VALUES (1, 100, N'Окно', 2)
INSERT [dbo].[view_orderitem] ([Idorderitem], [Idorder], [Name], [qu]) VALUES (2, 100, N'Дверь', 1)
INSERT [dbo].[view_orderitem] ([Idorderitem], [Idorder], [Name], [qu]) VALUES (3, 101, N'Окно', 1)
INSERT [dbo].[view_orderitem] ([Idorderitem], [Idorder], [Name], [qu]) VALUES (4, 100, N'Окно', 3)
INSERT [dbo].[view_orderitem] ([Idorderitem], [Idorder], [Name], [qu]) VALUES (5, 101, N'Дверь', 1)
INSERT [dbo].[view_orderitem] ([Idorderitem], [Idorder], [Name], [qu]) VALUES (6, 102, N'Окно', 1)
INSERT [dbo].[view_orderitem] ([Idorderitem], [Idorder], [Name], [qu]) VALUES (7, 101, N'Окно', 1)
INSERT [dbo].[view_orderitem] ([Idorderitem], [Idorder], [Name], [qu]) VALUES (8, 101, N'Дверь', 2)
INSERT [dbo].[view_orderitem] ([Idorderitem], [Idorder], [Name], [qu]) VALUES (9, 102, N'Дверь', 1)
INSERT [dbo].[view_orderitem] ([Idorderitem], [Idorder], [Name], [qu]) VALUES (10, 103, N'Дверь', 1)
GO
INSERT [dbo].[view_orders] ([Idorder], [name], [Seller_name]) VALUES (100, N'Ф-100\0922', N'Иванов')
INSERT [dbo].[view_orders] ([Idorder], [name], [Seller_name]) VALUES (101, N'А-101\0922', N'Петров')
INSERT [dbo].[view_orders] ([Idorder], [name], [Seller_name]) VALUES (102, N'А-102\0922', N'Иванов')
INSERT [dbo].[view_orders] ([Idorder], [name], [Seller_name]) VALUES (103, N'Ф-103\0922', N'Сидоров')
GO
USE [master]
GO
ALTER DATABASE [DBTest] SET  READ_WRITE 
GO

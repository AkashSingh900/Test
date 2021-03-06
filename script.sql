USE [master]
GO
/****** Object:  Database [shop_Product]    Script Date: 08-02-2021 23:17:19 ******/
CREATE DATABASE [shop_Product]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'shop_Product', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\shop_Product.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'shop_Product_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\shop_Product_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [shop_Product] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [shop_Product].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [shop_Product] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [shop_Product] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [shop_Product] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [shop_Product] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [shop_Product] SET ARITHABORT OFF 
GO
ALTER DATABASE [shop_Product] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [shop_Product] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [shop_Product] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [shop_Product] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [shop_Product] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [shop_Product] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [shop_Product] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [shop_Product] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [shop_Product] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [shop_Product] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [shop_Product] SET  ENABLE_BROKER 
GO
ALTER DATABASE [shop_Product] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [shop_Product] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [shop_Product] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [shop_Product] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [shop_Product] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [shop_Product] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [shop_Product] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [shop_Product] SET RECOVERY FULL 
GO
ALTER DATABASE [shop_Product] SET  MULTI_USER 
GO
ALTER DATABASE [shop_Product] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [shop_Product] SET DB_CHAINING OFF 
GO
ALTER DATABASE [shop_Product] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [shop_Product] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'shop_Product', N'ON'
GO
USE [shop_Product]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 08-02-2021 23:17:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[Cid] [int] IDENTITY(1,1) NOT NULL,
	[Cname] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 08-02-2021 23:17:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[Pid] [int] IDENTITY(1,1) NOT NULL,
	[Pname] [varchar](200) NULL,
	[Cid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Cid], [Cname]) VALUES (1, N'Mobile ')
INSERT [dbo].[Category] ([Cid], [Cname]) VALUES (2, N'laptop')
INSERT [dbo].[Category] ([Cid], [Cname]) VALUES (3, N'tab')
INSERT [dbo].[Category] ([Cid], [Cname]) VALUES (4, N'watch')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Pid], [Pname], [Cid]) VALUES (1, N'Apple ', 3)
INSERT [dbo].[Product] ([Pid], [Pname], [Cid]) VALUES (2, N'Samsung', 1)
INSERT [dbo].[Product] ([Pid], [Pname], [Cid]) VALUES (3, N'Mi', 3)
INSERT [dbo].[Product] ([Pid], [Pname], [Cid]) VALUES (4, N'Dell', 2)
INSERT [dbo].[Product] ([Pid], [Pname], [Cid]) VALUES (5, N'Acer', 2)
INSERT [dbo].[Product] ([Pid], [Pname], [Cid]) VALUES (6, N'Casio', 4)
INSERT [dbo].[Product] ([Pid], [Pname], [Cid]) VALUES (7, N'TIMEX', 4)
INSERT [dbo].[Product] ([Pid], [Pname], [Cid]) VALUES (8, N'One plus', 1)
INSERT [dbo].[Product] ([Pid], [Pname], [Cid]) VALUES (9, N'Hp', 2)
INSERT [dbo].[Product] ([Pid], [Pname], [Cid]) VALUES (10, N'Samsung', 3)
SET IDENTITY_INSERT [dbo].[Product] OFF
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([Cid])
REFERENCES [dbo].[Category] ([Cid])
GO
USE [master]
GO
ALTER DATABASE [shop_Product] SET  READ_WRITE 
GO

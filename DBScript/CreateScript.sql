USE [master]
GO
/****** Object:  Database [Addidas]    Script Date: 07/12/2015 18:02:00 ******/
CREATE DATABASE [Addidas] ON  PRIMARY 
( NAME = N'Addidas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\Addidas.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Addidas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\Addidas_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Addidas] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Addidas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Addidas] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Addidas] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Addidas] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Addidas] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Addidas] SET ARITHABORT OFF
GO
ALTER DATABASE [Addidas] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Addidas] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Addidas] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Addidas] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Addidas] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Addidas] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Addidas] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Addidas] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Addidas] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Addidas] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Addidas] SET  DISABLE_BROKER
GO
ALTER DATABASE [Addidas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Addidas] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Addidas] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Addidas] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Addidas] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Addidas] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Addidas] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Addidas] SET  READ_WRITE
GO
ALTER DATABASE [Addidas] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Addidas] SET  MULTI_USER
GO
ALTER DATABASE [Addidas] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Addidas] SET DB_CHAINING OFF
GO
USE [Addidas]
GO
/****** Object:  Table [dbo].[tbl_ColorMaster]    Script Date: 07/12/2015 18:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ColorMaster](
	[ColorMasterID] [int] IDENTITY(1,1) NOT NULL,
	[ColorName] [varchar](20) NOT NULL,
 CONSTRAINT [PK_tbl_ColorMaster] PRIMARY KEY CLUSTERED 
(
	[ColorMasterID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_CategoryMaster]    Script Date: 07/12/2015 18:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_CategoryMaster](
	[CategoryMasterID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](20) NOT NULL,
 CONSTRAINT [PK_tbl_CategoryMaster] PRIMARY KEY CLUSTERED 
(
	[CategoryMasterID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_UserRegisteration]    Script Date: 07/12/2015 18:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_UserRegisteration](
	[UserRegisterationID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](15) NOT NULL,
	[Address] [varchar](250) NOT NULL,
	[Country] [varchar](10) NOT NULL,
	[ContactNo] [int] NOT NULL,
	[IsActive] [bit] NULL,
	[IsDelete] [bit] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_tblUserRegisteration] PRIMARY KEY CLUSTERED 
(
	[UserRegisterationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_ProductMaster]    Script Date: 07/12/2015 18:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ProductMaster](
	[ProductMasterID] [int] NOT NULL,
	[ProductName] [varchar](20) NOT NULL,
	[ProductDescription] [varchar](250) NULL,
	[Price] [int] NULL,
	[Size] [int] NULL,
	[Rating] [int] NULL,
	[ColorMasterID] [int] NULL,
	[NoOfCounts] [int] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_tbl_ProductMaster] PRIMARY KEY CLUSTERED 
(
	[ProductMasterID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetColorList]    Script Date: 07/12/2015 18:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Akshay>
-- Create date: <Create Date,,12/7/2015>
-- Description:	<Description,,Get Color list>
-- =============================================
CREATE PROCEDURE [dbo].[Usp_GetColorList]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT ColorMasterID, ColorName FROM tbl_ColorMaster;
	
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetCategoryList]    Script Date: 07/12/2015 18:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Akshay>
-- Create date: <Create Date,,12/7/2015>
-- Description:	<Description,,Get Category list>
-- =============================================
CREATE PROCEDURE [dbo].[Usp_GetCategoryList]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT CategoryMasterID, CategoryName FROM tbl_CategoryMaster;
	
END
GO

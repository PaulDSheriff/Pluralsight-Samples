USE [master]
GO
/****** Object:  Database [ADONETSamples]    Script Date: 4/21/2020 2:55:41 PM ******/
CREATE DATABASE [ADONETSamples]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SandboxADONETSamples', FILENAME = N'D:\SQLServerData\SandboxADONETSamples.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SandboxADONETSamples_log', FILENAME = N'D:\SQLServerData\SandboxADONETSamples_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ADONETSamples] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ADONETSamples].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ADONETSamples] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ADONETSamples] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ADONETSamples] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ADONETSamples] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ADONETSamples] SET ARITHABORT OFF 
GO
ALTER DATABASE [ADONETSamples] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ADONETSamples] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ADONETSamples] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ADONETSamples] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ADONETSamples] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ADONETSamples] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ADONETSamples] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ADONETSamples] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ADONETSamples] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ADONETSamples] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ADONETSamples] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ADONETSamples] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ADONETSamples] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ADONETSamples] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ADONETSamples] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ADONETSamples] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ADONETSamples] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ADONETSamples] SET RECOVERY FULL 
GO
ALTER DATABASE [ADONETSamples] SET  MULTI_USER 
GO
ALTER DATABASE [ADONETSamples] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ADONETSamples] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ADONETSamples] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ADONETSamples] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ADONETSamples] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ADONETSamples', N'ON'
GO
ALTER DATABASE [ADONETSamples] SET QUERY_STORE = OFF
GO
USE [ADONETSamples]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [ADONETSamples]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 4/21/2020 2:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](150) NOT NULL,
	[IntroductionDate] [datetime] NOT NULL,
	[Url] [varchar](255) NOT NULL,
	[Price] [money] NOT NULL,
	[RetireDate] [datetime] NULL,
	[ProductCategoryId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 4/21/2020 2:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ProductCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ProductCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Url], [Price], [RetireDate], [ProductCategoryId]) VALUES (1, N'Extending Bootstrap with CSS, JavaScript and jQuery', CAST(N'2015-06-11T00:00:00.000' AS DateTime), N'http://bit.ly/1SNzc0i', 23.0000, NULL, 1)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Url], [Price], [RetireDate], [ProductCategoryId]) VALUES (2, N'Build your own Bootstrap Business Application Template in MVC', CAST(N'2015-01-29T00:00:00.000' AS DateTime), N'http://bit.ly/1I8ZqZg', 21.0000, NULL, 1)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Url], [Price], [RetireDate], [ProductCategoryId]) VALUES (3, N'Building Mobile Web Sites Using Web Forms, Bootstrap, and HTML5', CAST(N'2014-08-28T00:00:00.000' AS DateTime), N'http://bit.ly/1J2dcrj', 19.0000, NULL, 1)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Url], [Price], [RetireDate], [ProductCategoryId]) VALUES (4, N'How to Start and Run A Consulting Business', CAST(N'2013-09-12T00:00:00.000' AS DateTime), N'http://bit.ly/1L8kOwd', 9.9900, NULL, NULL)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Url], [Price], [RetireDate], [ProductCategoryId]) VALUES (5, N'The Many Approaches to XML Processing in .NET Applications', CAST(N'2013-07-22T00:00:00.000' AS DateTime), N'http://bit.ly/1DBfUqd', 9.0000, CAST(N'2019-03-20T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Url], [Price], [RetireDate], [ProductCategoryId]) VALUES (6, N'WPF for the Business Programmer', CAST(N'2009-06-12T00:00:00.000' AS DateTime), N'http://bit.ly/1UF858z', 29.0000, NULL, 1)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Url], [Price], [RetireDate], [ProductCategoryId]) VALUES (7, N'WPF for the Visual Basic Programmer - Part 1', CAST(N'2013-12-16T00:00:00.000' AS DateTime), N'http://bit.ly/1uFxS7C', 29.0000, NULL, 1)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Url], [Price], [RetireDate], [ProductCategoryId]) VALUES (8, N'WPF for the Visual Basic Programmer - Part 2', CAST(N'2014-02-18T00:00:00.000' AS DateTime), N'http://bit.ly/1MjQ9NG', 29.0000, NULL, 1)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Url], [Price], [RetireDate], [ProductCategoryId]) VALUES (10, N'Practical Team Management for Software Engineers', CAST(N'2017-05-19T00:00:00.000' AS DateTime), N'http://bit.ly/2qcWO5m', 15.0000, NULL, 2)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Url], [Price], [RetireDate], [ProductCategoryId]) VALUES (11, N'Leadership and Communication Skills for Software Engineers', CAST(N'2016-05-13T00:00:00.000' AS DateTime), N'http://bit.ly/2aq2i4F', 15.0000, NULL, 2)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Url], [Price], [RetireDate], [ProductCategoryId]) VALUES (12, N'Best Practices for Project Estimation', CAST(N'2014-12-08T00:00:00.000' AS DateTime), N'http://bit.ly/1ulLVJK', 15.0000, NULL, 2)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Url], [Price], [RetireDate], [ProductCategoryId]) VALUES (23, N'Using PowerShell', CAST(N'2019-05-28T12:40:03.200' AS DateTime), N'www.fairwaytech.com', 100.0000, CAST(N'2019-08-28T12:40:03.670' AS DateTime), 4)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Url], [Price], [RetireDate], [ProductCategoryId]) VALUES (24, N'VB.NET Fundamentals', CAST(N'2019-05-21T00:00:00.000' AS DateTime), N'https://bit.ly/30KKHjs', 19.9900, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 
GO
INSERT [dbo].[ProductCategory] ([ProductCategoryId], [CategoryName]) VALUES (1, N'Development')
GO
INSERT [dbo].[ProductCategory] ([ProductCategoryId], [CategoryName]) VALUES (2, N'Soft Skills')
GO
INSERT [dbo].[ProductCategory] ([ProductCategoryId], [CategoryName]) VALUES (4, N'DevOps')
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
GO
/****** Object:  Index [PK__Product]    Script Date: 4/21/2020 2:55:41 PM ******/
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [PK__Product] PRIMARY KEY NONCLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Product_Insert]    Script Date: 4/21/2020 2:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Product_Insert]
	@ProductName nvarchar(150),
	@IntroductionDate datetime,
	@Url nvarchar(255),
	@Price money,
	@ProductId int OUTPUT
AS
INSERT INTO Product(ProductName, IntroductionDate, Url, Price)
VALUES(@ProductName, @IntroductionDate, @Url, @Price);

SELECT @ProductId = SCOPE_IDENTITY();
GO
USE [master]
GO
ALTER DATABASE [ADONETSamples] SET  READ_WRITE 
GO

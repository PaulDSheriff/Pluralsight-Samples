USE [PTC]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 11/25/2017 10:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[AddressId] [uniqueidentifier] NOT NULL,
	[Street1] [varchar](255) NOT NULL,
	[Street2] [varchar](255) NULL,
	[Street3] [varchar](255) NULL,
	[City] [varchar](100) NOT NULL,
	[Village] [varchar](100) NULL,
	[StateCode] [char](2) NULL,
	[ProvinceCode] [char](2) NULL,
	[PostalCode] [varchar](18) NULL,
	[PostalCodeExt] [varchar](10) NULL,
	[CountryCode] [char](3) NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CanadianProvince]    Script Date: 11/25/2017 10:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO 
CREATE TABLE [dbo].[CanadianProvince](
	[ProvinceCode] [char](2) NOT NULL,
	[ProvinceName] [varchar](25) NOT NULL,
 CONSTRAINT [PK_CanadianProvinces] PRIMARY KEY CLUSTERED 
(
	[ProvinceCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/25/2017 10:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 11/25/2017 10:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryCode] [char](3) NOT NULL,
	[CountryName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CreditCard]    Script Date: 11/25/2017 10:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CreditCard](
	[CreditCardId] [uniqueidentifier] NOT NULL,
	[CardType] [varchar](20) NOT NULL,
	[NameOnCard] [varchar](100) NOT NULL,
	[CardNumber] [varchar](25) NOT NULL,
	[SecurityCode] [varchar](4) NOT NULL,
	[ExpMonth] [smallint] NOT NULL,
	[ExpYear] [smallint] NOT NULL,
	[BillingPostalCode] [varchar](10) NOT NULL,
 CONSTRAINT [PK_CreditCard] PRIMARY KEY CLUSTERED 
(
	[CreditCardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CreditCardType]    Script Date: 11/25/2017 10:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CreditCardType](
	[CardTypeId] [int] IDENTITY(1,1) NOT NULL,
	[CardType] [varchar](20) NOT NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/25/2017 10:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](80) NULL,
	[IntroductionDate] [datetime] NULL,
	[Price] [money] NULL,
	[Url] [nvarchar](255) NULL,
	[CategoryId] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USStateCode]    Script Date: 11/25/2017 10:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USStateCode](
	[StateCode] [char](2) NOT NULL,
	[StateName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_USStateCode] PRIMARY KEY CLUSTERED 
(
	[StateCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Address] ([AddressId], [Street1], [Street2], [Street3], [City], [Village], [StateCode], [ProvinceCode], [PostalCode], [PostalCodeExt], [CountryCode]) VALUES (N'583c1259-7b54-4b02-acd3-18dead85ce51', N'Australia 1', N'Australia 2', N'Australia 3', N'Australia City', NULL, NULL, NULL, N'123 BED', NULL, N'AUS')
GO
INSERT [dbo].[Address] ([AddressId], [Street1], [Street2], [Street3], [City], [Village], [StateCode], [ProvinceCode], [PostalCode], [PostalCodeExt], [CountryCode]) VALUES (N'1295ba57-a710-4e04-90de-4dfa32e0eed1', N'153 Buckingham Blvd.', N'', NULL, N'Gallatin', NULL, N'TN', NULL, N'37066', N'8644', N'USA')
GO
INSERT [dbo].[Address] ([AddressId], [Street1], [Street2], [Street3], [City], [Village], [StateCode], [ProvinceCode], [PostalCode], [PostalCodeExt], [CountryCode]) VALUES (N'57ed4965-b8f4-4672-979e-5671be99c721', N'UK Street 1', N'UK Street 2', NULL, N'UK City', N'Villages', NULL, NULL, N'44444', NULL, N'GBR')
GO
INSERT [dbo].[Address] ([AddressId], [Street1], [Street2], [Street3], [City], [Village], [StateCode], [ProvinceCode], [PostalCode], [PostalCodeExt], [CountryCode]) VALUES (N'f2ba23f2-449a-4d79-b48d-5cfdb85538a6', N'123 Any Street', NULL, NULL, N'City', NULL, NULL, N'AB', NULL, NULL, N'CAN')
GO
INSERT [dbo].[Address] ([AddressId], [Street1], [Street2], [Street3], [City], [Village], [StateCode], [ProvinceCode], [PostalCode], [PostalCodeExt], [CountryCode]) VALUES (N'99da7b5c-8a19-488c-9bf5-8809462c1f0a', N'123 Any Street', NULL, NULL, N'City', NULL, NULL, N'NS', N'BED123', NULL, N'CAN')
GO
INSERT [dbo].[CanadianProvince] ([ProvinceCode], [ProvinceName]) VALUES (N'AB', N'Alberta')
GO
INSERT [dbo].[CanadianProvince] ([ProvinceCode], [ProvinceName]) VALUES (N'BC', N'British Columbia')
GO
INSERT [dbo].[CanadianProvince] ([ProvinceCode], [ProvinceName]) VALUES (N'MB', N'Manitoba')
GO
INSERT [dbo].[CanadianProvince] ([ProvinceCode], [ProvinceName]) VALUES (N'NB', N'Brunswick')
GO
INSERT [dbo].[CanadianProvince] ([ProvinceCode], [ProvinceName]) VALUES (N'NF', N'Newfoundland')
GO
INSERT [dbo].[CanadianProvince] ([ProvinceCode], [ProvinceName]) VALUES (N'NS', N'Nova Scotia')
GO
INSERT [dbo].[CanadianProvince] ([ProvinceCode], [ProvinceName]) VALUES (N'NT', N'Northwest Territories')
GO
INSERT [dbo].[CanadianProvince] ([ProvinceCode], [ProvinceName]) VALUES (N'ON', N'Ontario')
GO
INSERT [dbo].[CanadianProvince] ([ProvinceCode], [ProvinceName]) VALUES (N'PE', N'Prince Edward Island')
GO
INSERT [dbo].[CanadianProvince] ([ProvinceCode], [ProvinceName]) VALUES (N'QC', N'Quebec')
GO
INSERT [dbo].[CanadianProvince] ([ProvinceCode], [ProvinceName]) VALUES (N'SK', N'Saskatchewan')
GO
INSERT [dbo].[CanadianProvince] ([ProvinceCode], [ProvinceName]) VALUES (N'YT', N'Yukon Territory')
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (1, N'Services')
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (2, N'Training')
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (3, N'Information')
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'ARG', N'Argentina')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'AUS', N'Australia')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'AUT', N'Austria')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'BEL', N'Belgium')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'BGD', N'Bangladesh')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'BLR', N'Belarus')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'BRA', N'Brazil')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'CAN', N'Canada')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'CHE', N'Switzerland')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'CHL', N'Chile')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'CHN', N'China')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'CZE', N'Czech Republic')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'DEU', N'Germany')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'DNK', N'Denmark')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'ESP', N'Spain')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'EST', N'Estonia')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'FIN', N'Finland')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'FRA', N'France')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'GBR', N'United Kingdom')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'GRC', N'Greece')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'HKG', N'Hong Kong')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'HRV', N'Croatia')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'HUN', N'Hungary')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'IDN', N'Indonesia')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'IND', N'India')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'IRL', N'Ireland')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'IRN', N'Iran')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'IRQ', N'Iraq')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'ISL', N'Iceland')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'ISR', N'Israel')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'ITA', N'Italy')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'JPN', N'Japan')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'LKA', N'Sri Lanka')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'LVA', N'Latvia')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'MAC', N'Macau')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'MEX', N'Mexico')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'MYS', N'Malaysia')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'NIC', N'Nicaragua')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'NLD', N'Netherlands')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'NOR', N'Norway')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'NZL', N'New Zealand')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'OMN', N'Oman')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'PAK', N'Pakistan')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'PER', N'Peru')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'PHL', N'Philippines')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'POL', N'Poland')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'PRT', N'Portugal')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'QAT', N'Qatar')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'ROU', N'Romania')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'RUS', N'Russia')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'SAU', N'Saudi Arabia')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'SGP', N'Singapore')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'SVK', N'Slovakia')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'SVN', N'Slovenia')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'SWE', N'Sweden')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'THA', N'Thailand')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'TUR', N'Turkey')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'TWN', N'Taiwan')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'UKR', N'Ukraine')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'USA', N'United States')
GO
INSERT [dbo].[Country] ([CountryCode], [CountryName]) VALUES (N'VNM', N'Vietnam')
GO
INSERT [dbo].[CreditCard] ([CreditCardId], [CardType], [NameOnCard], [CardNumber], [SecurityCode], [ExpMonth], [ExpYear], [BillingPostalCode]) VALUES (N'ec1871a4-6cca-4e3c-922d-a1aa6aa2fefe', N'American Express', N'Paul Sheriff', N'1233123312331233', N'999', 6, 2018, N'99999')
GO
SET IDENTITY_INSERT [dbo].[CreditCardType] ON 
GO
INSERT [dbo].[CreditCardType] ([CardTypeId], [CardType], [IsActive]) VALUES (1, N'Visa', 1)
GO
INSERT [dbo].[CreditCardType] ([CardTypeId], [CardType], [IsActive]) VALUES (2, N'Master Card', 1)
GO
INSERT [dbo].[CreditCardType] ([CardTypeId], [CardType], [IsActive]) VALUES (3, N'American Express', 1)
GO
INSERT [dbo].[CreditCardType] ([CardTypeId], [CardType], [IsActive]) VALUES (4, N'Discover', 1)
GO
INSERT [dbo].[CreditCardType] ([CardTypeId], [CardType], [IsActive]) VALUES (5, N'Diners Club', 1)
GO
SET IDENTITY_INSERT [dbo].[CreditCardType] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Price], [Url], [CategoryId]) VALUES (1, N'SQL Server Naming Standards', CAST(N'2015-02-01T00:00:00.000' AS DateTime), 1.0000, N'http://www.pdsa.com/downloads', 3)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Price], [Url], [CategoryId]) VALUES (3, N'VB.NET Development Standards', CAST(N'2015-04-01T00:00:00.000' AS DateTime), 22.0000, N'http://www.pdsa.com/downloads', 3)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Price], [Url], [CategoryId]) VALUES (5, N'VS.NET Standards', CAST(N'2015-06-01T00:00:00.000' AS DateTime), 12.0000, N'http://www.pdsa.com/downloads', 3)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Price], [Url], [CategoryId]) VALUES (6, N'PDSA Application Security Audit', CAST(N'2015-07-01T00:00:00.000' AS DateTime), 2000.0000, N'http://www.pdsa.com/audits', 1)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Price], [Url], [CategoryId]) VALUES (7, N'PDSA SQL Server and Database Design Audit', CAST(N'2015-08-01T00:00:00.000' AS DateTime), 2000.0000, N'http://www.pdsa.com/audits', 1)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Price], [Url], [CategoryId]) VALUES (8, N'PDSA Mentoring', CAST(N'2015-09-01T00:00:00.000' AS DateTime), 200.0000, N'http://www.pdsa.com/mentoring', 1)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Price], [Url], [CategoryId]) VALUES (9, N'PDSA Training', CAST(N'2015-10-01T00:00:00.000' AS DateTime), 2000.0000, N'http://www.pdsa.com/training', 1)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Price], [Url], [CategoryId]) VALUES (10, N'Build HTML Helper Library for ASP.NET MVC 5', CAST(N'2016-11-05T00:00:00.000' AS DateTime), 49.0000, N'http://bit.ly/1myXBwj', 2)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Price], [Url], [CategoryId]) VALUES (11, N'Consolidating MVC Views using Single Page Techniques', CAST(N'2015-10-09T00:00:00.000' AS DateTime), 499.0000, N'http://bit.ly/1G8TeQO', 2)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Price], [Url], [CategoryId]) VALUES (12, N'Extending Bootstrap with CSS, JavaScript and jQuery', CAST(N'2015-06-11T00:00:00.000' AS DateTime), 499.0000, N'http://bit.ly/1SNzc0i', 2)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Price], [Url], [CategoryId]) VALUES (13, N'Build your own Bootstrap Business Application Template in MVC', CAST(N'2015-01-29T00:00:00.000' AS DateTime), 499.0000, N'http://bit.ly/1I8ZqZg', 2)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Price], [Url], [CategoryId]) VALUES (14, N'Building Mobile Web Sites Using Web Forms, Bootstrap, and HTML5', CAST(N'2014-08-28T00:00:00.000' AS DateTime), 499.0000, N'http://bit.ly/1J2dcrj', 2)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Price], [Url], [CategoryId]) VALUES (15, N'How to Start and Run A Consulting Business', CAST(N'2013-09-12T00:00:00.000' AS DateTime), 499.0000, N'http://bit.ly/1L8kOwd', 2)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Price], [Url], [CategoryId]) VALUES (16, N'The Many Approaches to XML Processing in .NET Applications', CAST(N'2013-07-22T00:00:00.000' AS DateTime), 499.0000, N'http://bit.ly/1DBfUqd', 2)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Price], [Url], [CategoryId]) VALUES (17, N'WPF for the Business Programmer', CAST(N'2009-06-12T00:00:00.000' AS DateTime), 499.0000, N'http://bit.ly/1UF858z', 2)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Price], [Url], [CategoryId]) VALUES (18, N'WPF for the Visual Basic Programmer - Part 1', CAST(N'2013-12-16T00:00:00.000' AS DateTime), 499.0000, N'http://bit.ly/1uFxS7C', 2)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Price], [Url], [CategoryId]) VALUES (19, N'WPF for the Visual Basic Programmer - Part 2', CAST(N'2014-02-18T00:00:00.000' AS DateTime), 499.0000, N'http://bit.ly/1MjQ9NG', 2)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Price], [Url], [CategoryId]) VALUES (20, N'PDSA Application Performance Audit', CAST(N'2016-01-01T00:00:00.000' AS DateTime), 2000.0000, N'http://www.pdsa.com/audits', 1)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Price], [Url], [CategoryId]) VALUES (39, N'The Journey from MVC to Angular', CAST(N'2016-07-22T00:00:00.000' AS DateTime), 10.0000, N'http://bit.ly/2a3wVNU', 1)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'AK', N'Alaska')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'AL', N'Alabama')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'AR', N'Arkansas')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'AZ', N'Arizona')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'CA', N'California')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'CO', N'Colorado')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'CT', N'Connecticut')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'DC', N'District of Columbia')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'DE', N'Delaware')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'FL', N'Florida')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'GA', N'Georgia')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'GU', N'Guam')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'HI', N'Hawaii')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'IA', N'Iowa')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'ID', N'Idaho')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'IL', N'Illinois')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'IN', N'Indiana')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'KS', N'Kansas')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'KY', N'Kentucky')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'LA', N'Louisiana')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'MA', N'Massachusetts')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'MD', N'Maryland')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'ME', N'Maine')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'MI', N'Michigan')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'MN', N'Minnesota')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'MO', N'Missouri')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'MS', N'Mississippi')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'MT', N'Montana')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'NC', N'North Carolina')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'ND', N'North Dakota')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'NE', N'Nebraska')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'NH', N'New Hampshire')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'NJ', N'New Jersey')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'NM', N'New Mexico')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'NV', N'Nevada')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'NY', N'New York')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'OH', N'Ohio')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'OK', N'Oklahoma')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'OR', N'Oregon')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'PA', N'Pennsylvania')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'PR', N'Puerto Rico')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'RI', N'Rhode Island')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'SC', N'South Carolina')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'SD', N'South Dakota')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'TN', N'Tennessee')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'TX', N'Texas')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'UT', N'Utah')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'VA', N'Virginia')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'VT', N'Vermont')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'WA', N'Washington')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'WI', N'Wisconsin')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'WV', N'West Virginia')
GO
INSERT [dbo].[USStateCode] ([StateCode], [StateName]) VALUES (N'WY', N'Wyoming')
GO
/****** Object:  Index [PK__CreditCa__AB0A3D10B02826C4]    Script Date: 11/25/2017 10:36:40 AM ******/
ALTER TABLE [dbo].[CreditCardType] ADD PRIMARY KEY NONCLUSTERED 
(
	[CardTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Address] ADD  CONSTRAINT [DF_AddressId]  DEFAULT (newid()) FOR [AddressId]
GO
ALTER TABLE [dbo].[CreditCardType] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Country] FOREIGN KEY([CountryCode])
REFERENCES [dbo].[Country] ([CountryCode])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Country]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Province] FOREIGN KEY([ProvinceCode])
REFERENCES [dbo].[CanadianProvince] ([ProvinceCode])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Province]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_State] FOREIGN KEY([StateCode])
REFERENCES [dbo].[USStateCode] ([StateCode])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_State]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
USE [master]
GO
ALTER DATABASE [PTC] SET  READ_WRITE 
GO

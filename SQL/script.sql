USE [GorZdrav]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 07.11.2022 2:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[IdСategory] [int] IDENTITY(1,1) NOT NULL,
	[NameСategory] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[IdСategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 07.11.2022 2:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[IdCity] [int] IDENTITY(1,1) NOT NULL,
	[NameCity] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[IdCity] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 07.11.2022 2:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[IdCountry] [int] IDENTITY(1,1) NOT NULL,
	[NameCountry] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[IdCountry] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LegalAddressMAQC]    Script Date: 07.11.2022 2:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LegalAddressMAQC](
	[IdLegalAddressMAQC] [int] IDENTITY(1,1) NOT NULL,
	[IdCity] [int] NOT NULL,
	[IdStreet] [int] NOT NULL,
	[HouseNumber] [nvarchar](5) NOT NULL,
	[Building] [nvarchar](5) NOT NULL,
 CONSTRAINT [PK_LegalAddressMAQC] PRIMARY KEY CLUSTERED 
(
	[IdLegalAddressMAQC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LegalAddressOAC]    Script Date: 07.11.2022 2:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LegalAddressOAC](
	[IdLegalAddressOAC] [int] IDENTITY(1,1) NOT NULL,
	[IdCity] [int] NOT NULL,
	[IdStreet] [int] NOT NULL,
	[HouseNumber] [nvarchar](5) NOT NULL,
	[Building] [nvarchar](5) NOT NULL,
 CONSTRAINT [PK_LegalAddressOAC] PRIMARY KEY CLUSTERED 
(
	[IdLegalAddressOAC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LegalAddressPacker]    Script Date: 07.11.2022 2:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LegalAddressPacker](
	[IdLegalAddressPacker] [int] IDENTITY(1,1) NOT NULL,
	[IdCity] [int] NOT NULL,
	[IdStreet] [int] NOT NULL,
	[HouseNumber] [nvarchar](5) NOT NULL,
	[Building] [nvarchar](5) NOT NULL,
 CONSTRAINT [PK_LegalAddressPacker] PRIMARY KEY CLUSTERED 
(
	[IdLegalAddressPacker] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 07.11.2022 2:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[IdManufacturer] [int] IDENTITY(1,1) NOT NULL,
	[IdManufacturerAndQualityControl] [int] NOT NULL,
	[IdPacker] [int] NOT NULL,
	[IdOrganizationAcceptingClaims] [int] NOT NULL,
 CONSTRAINT [PK_Manufacturer] PRIMARY KEY CLUSTERED 
(
	[IdManufacturer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ManufacturerAndQualityControl]    Script Date: 07.11.2022 2:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManufacturerAndQualityControl](
	[IdManufacturerAndQualityControl] [int] IDENTITY(1,1) NOT NULL,
	[NameMAQC] [nvarchar](100) NOT NULL,
	[IdCountry] [int] NOT NULL,
	[IdLegalAddressMAQC] [int] NOT NULL,
 CONSTRAINT [PK_ManufacturerAndQualityControl] PRIMARY KEY CLUSTERED 
(
	[IdManufacturerAndQualityControl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 07.11.2022 2:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[IdOrder] [int] IDENTITY(1,1) NOT NULL,
	[IdProduct] [int] NOT NULL,
	[DateOrder] [date] NOT NULL,
	[QuantityOrder] [int] NOT NULL,
	[IdSuppliers] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[IdOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrganizationAcceptingClaims]    Script Date: 07.11.2022 2:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrganizationAcceptingClaims](
	[IdOrganizationAcceptingClaims] [int] IDENTITY(1,1) NOT NULL,
	[NameOAC] [nvarchar](100) NOT NULL,
	[IdCountry] [int] NOT NULL,
	[IdLegalAddressOAC] [int] NOT NULL,
 CONSTRAINT [PK_OrganizationAcceptingClaims] PRIMARY KEY CLUSTERED 
(
	[IdOrganizationAcceptingClaims] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Packer]    Script Date: 07.11.2022 2:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Packer](
	[IdPacker] [int] IDENTITY(1,1) NOT NULL,
	[NamePacker] [nvarchar](100) NOT NULL,
	[IdCountry] [int] NOT NULL,
	[IdLegalAddressPacker] [int] NOT NULL,
 CONSTRAINT [PK_Packer] PRIMARY KEY CLUSTERED 
(
	[IdPacker] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 07.11.2022 2:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[IdProduct] [int] IDENTITY(1,1) NOT NULL,
	[NameProduct] [nvarchar](40) NOT NULL,
	[Composition] [nvarchar](1000) NOT NULL,
	[IdСategory] [int] NOT NULL,
	[ReleaseForm] [nvarchar](1000) NOT NULL,
	[IdManufacturer] [int] NOT NULL,
	[IdSuppliers] [int] NOT NULL,
	[DosageForm] [nvarchar](1000) NOT NULL,
	[Indications] [nvarchar](1000) NOT NULL,
	[Contraindications] [nvarchar](1000) NOT NULL,
	[MethodOfAdministrationAndDosage] [nvarchar](1000) NOT NULL,
	[SideEffects] [nvarchar](1000) NOT NULL,
	[Overdose] [nvarchar](1000) NOT NULL,
	[DrugInteraction] [nvarchar](1000) NOT NULL,
	[SpecialInstructions] [nvarchar](1000) NOT NULL,
	[StorageConditions] [nvarchar](1000) NOT NULL,
	[ReleaseDate] [date] NOT NULL,
	[ExpirationDate] [date] NOT NULL,
	[IdRecipe] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](7, 2) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[IdProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recipe]    Script Date: 07.11.2022 2:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recipe](
	[IdRecipe] [int] IDENTITY(1,1) NOT NULL,
	[NeedRecipe] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Recipe] PRIMARY KEY CLUSTERED 
(
	[IdRecipe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 07.11.2022 2:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[IdRole] [int] IDENTITY(1,1) NOT NULL,
	[NameRole] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[IdRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sell]    Script Date: 07.11.2022 2:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sell](
	[IdSell] [int] IDENTITY(1,1) NOT NULL,
	[IdProductSell] [int] NOT NULL,
	[IdTypesell] [int] NOT NULL,
	[QuantitySell] [int] NOT NULL,
 CONSTRAINT [PK_Sell] PRIMARY KEY CLUSTERED 
(
	[IdSell] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 07.11.2022 2:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[IdStreet] [int] IDENTITY(1,1) NOT NULL,
	[NameStreet] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[IdStreet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 07.11.2022 2:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[IdSuppliers] [int] IDENTITY(1,1) NOT NULL,
	[NameSuppliers] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[IdSuppliers] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeSell]    Script Date: 07.11.2022 2:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeSell](
	[IdType] [int] IDENTITY(1,1) NOT NULL,
	[NameType] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_TypeSell] PRIMARY KEY CLUSTERED 
(
	[IdType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 07.11.2022 2:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[IdUser] [int] IDENTITY(1,1) NOT NULL,
	[LoginUser] [nvarchar](30) NOT NULL,
	[IdRole] [int] NOT NULL,
	[PasswordUser] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([IdСategory], [NameСategory]) VALUES (1, N'Антидепрессанты')
INSERT [dbo].[Category] ([IdСategory], [NameСategory]) VALUES (2, N'Психостимуляторы')
INSERT [dbo].[Category] ([IdСategory], [NameСategory]) VALUES (5, N'Слабительные')
INSERT [dbo].[Category] ([IdСategory], [NameСategory]) VALUES (6, N'Обезболивающие')
INSERT [dbo].[Category] ([IdСategory], [NameСategory]) VALUES (7, N'Инсулин')
INSERT [dbo].[Category] ([IdСategory], [NameСategory]) VALUES (10, N'противовирусное ')
INSERT [dbo].[Category] ([IdСategory], [NameСategory]) VALUES (11, N'цитокин')
INSERT [dbo].[Category] ([IdСategory], [NameСategory]) VALUES (12, N'антисептическое ')
INSERT [dbo].[Category] ([IdСategory], [NameСategory]) VALUES (13, N'иммуностимулирующее ')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([IdCity], [NameCity]) VALUES (1, N'Москва')
INSERT [dbo].[City] ([IdCity], [NameCity]) VALUES (2, N'Домодедово')
INSERT [dbo].[City] ([IdCity], [NameCity]) VALUES (3, N'Гонконг')
INSERT [dbo].[City] ([IdCity], [NameCity]) VALUES (4, N'Видное')
INSERT [dbo].[City] ([IdCity], [NameCity]) VALUES (8, N'Анапа')
INSERT [dbo].[City] ([IdCity], [NameCity]) VALUES (9, N'Братск')
INSERT [dbo].[City] ([IdCity], [NameCity]) VALUES (10, N'Бобров')
INSERT [dbo].[City] ([IdCity], [NameCity]) VALUES (11, N'Гай')
INSERT [dbo].[City] ([IdCity], [NameCity]) VALUES (12, N'Гусев')
INSERT [dbo].[City] ([IdCity], [NameCity]) VALUES (13, N'Горняк')
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([IdCountry], [NameCountry]) VALUES (1, N'Россия')
INSERT [dbo].[Country] ([IdCountry], [NameCountry]) VALUES (2, N'Германия')
INSERT [dbo].[Country] ([IdCountry], [NameCountry]) VALUES (3, N'Япония')
INSERT [dbo].[Country] ([IdCountry], [NameCountry]) VALUES (4, N'Китай')
INSERT [dbo].[Country] ([IdCountry], [NameCountry]) VALUES (8, N'Австралия')
INSERT [dbo].[Country] ([IdCountry], [NameCountry]) VALUES (9, N'Гонконг')
INSERT [dbo].[Country] ([IdCountry], [NameCountry]) VALUES (10, N'Дания')
INSERT [dbo].[Country] ([IdCountry], [NameCountry]) VALUES (11, N'Иран')
INSERT [dbo].[Country] ([IdCountry], [NameCountry]) VALUES (12, N'Кипр')
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
SET IDENTITY_INSERT [dbo].[LegalAddressMAQC] ON 

INSERT [dbo].[LegalAddressMAQC] ([IdLegalAddressMAQC], [IdCity], [IdStreet], [HouseNumber], [Building]) VALUES (1, 1, 1, N'5', N'10')
INSERT [dbo].[LegalAddressMAQC] ([IdLegalAddressMAQC], [IdCity], [IdStreet], [HouseNumber], [Building]) VALUES (2, 2, 2, N'25', N'1')
INSERT [dbo].[LegalAddressMAQC] ([IdLegalAddressMAQC], [IdCity], [IdStreet], [HouseNumber], [Building]) VALUES (3, 4, 2, N'458', N'88')
INSERT [dbo].[LegalAddressMAQC] ([IdLegalAddressMAQC], [IdCity], [IdStreet], [HouseNumber], [Building]) VALUES (6, 3, 4, N'12', N'34')
INSERT [dbo].[LegalAddressMAQC] ([IdLegalAddressMAQC], [IdCity], [IdStreet], [HouseNumber], [Building]) VALUES (7, 8, 5, N'34', N'57')
INSERT [dbo].[LegalAddressMAQC] ([IdLegalAddressMAQC], [IdCity], [IdStreet], [HouseNumber], [Building]) VALUES (8, 9, 6, N'56', N'36')
INSERT [dbo].[LegalAddressMAQC] ([IdLegalAddressMAQC], [IdCity], [IdStreet], [HouseNumber], [Building]) VALUES (9, 10, 7, N'85', N'39')
INSERT [dbo].[LegalAddressMAQC] ([IdLegalAddressMAQC], [IdCity], [IdStreet], [HouseNumber], [Building]) VALUES (10, 11, 8, N'85', N'673')
INSERT [dbo].[LegalAddressMAQC] ([IdLegalAddressMAQC], [IdCity], [IdStreet], [HouseNumber], [Building]) VALUES (11, 13, 10, N'965', N'1')
SET IDENTITY_INSERT [dbo].[LegalAddressMAQC] OFF
GO
SET IDENTITY_INSERT [dbo].[LegalAddressOAC] ON 

INSERT [dbo].[LegalAddressOAC] ([IdLegalAddressOAC], [IdCity], [IdStreet], [HouseNumber], [Building]) VALUES (1, 1, 3, N'45', N'5')
INSERT [dbo].[LegalAddressOAC] ([IdLegalAddressOAC], [IdCity], [IdStreet], [HouseNumber], [Building]) VALUES (2, 2, 1, N'457', N'54')
SET IDENTITY_INSERT [dbo].[LegalAddressOAC] OFF
GO
SET IDENTITY_INSERT [dbo].[LegalAddressPacker] ON 

INSERT [dbo].[LegalAddressPacker] ([IdLegalAddressPacker], [IdCity], [IdStreet], [HouseNumber], [Building]) VALUES (1, 3, 3, N'98', N'4')
INSERT [dbo].[LegalAddressPacker] ([IdLegalAddressPacker], [IdCity], [IdStreet], [HouseNumber], [Building]) VALUES (2, 4, 4, N'75', N'12')
INSERT [dbo].[LegalAddressPacker] ([IdLegalAddressPacker], [IdCity], [IdStreet], [HouseNumber], [Building]) VALUES (3, 1, 4, N'55', N'78')
INSERT [dbo].[LegalAddressPacker] ([IdLegalAddressPacker], [IdCity], [IdStreet], [HouseNumber], [Building]) VALUES (4, 4, 4, N'55', N'555')
INSERT [dbo].[LegalAddressPacker] ([IdLegalAddressPacker], [IdCity], [IdStreet], [HouseNumber], [Building]) VALUES (5, 8, 5, N'46', N'24')
INSERT [dbo].[LegalAddressPacker] ([IdLegalAddressPacker], [IdCity], [IdStreet], [HouseNumber], [Building]) VALUES (6, 9, 6, N'124', N'754')
INSERT [dbo].[LegalAddressPacker] ([IdLegalAddressPacker], [IdCity], [IdStreet], [HouseNumber], [Building]) VALUES (7, 10, 7, N'456', N'3434')
INSERT [dbo].[LegalAddressPacker] ([IdLegalAddressPacker], [IdCity], [IdStreet], [HouseNumber], [Building]) VALUES (8, 11, 8, N'86', N'586')
INSERT [dbo].[LegalAddressPacker] ([IdLegalAddressPacker], [IdCity], [IdStreet], [HouseNumber], [Building]) VALUES (9, 12, 9, N'987', N'4')
INSERT [dbo].[LegalAddressPacker] ([IdLegalAddressPacker], [IdCity], [IdStreet], [HouseNumber], [Building]) VALUES (10, 13, 10, N'45', N'234')
SET IDENTITY_INSERT [dbo].[LegalAddressPacker] OFF
GO
SET IDENTITY_INSERT [dbo].[Manufacturer] ON 

INSERT [dbo].[Manufacturer] ([IdManufacturer], [IdManufacturerAndQualityControl], [IdPacker], [IdOrganizationAcceptingClaims]) VALUES (1, 1, 1, 1)
INSERT [dbo].[Manufacturer] ([IdManufacturer], [IdManufacturerAndQualityControl], [IdPacker], [IdOrganizationAcceptingClaims]) VALUES (2, 2, 2, 2)
INSERT [dbo].[Manufacturer] ([IdManufacturer], [IdManufacturerAndQualityControl], [IdPacker], [IdOrganizationAcceptingClaims]) VALUES (4, 2, 1, 2)
INSERT [dbo].[Manufacturer] ([IdManufacturer], [IdManufacturerAndQualityControl], [IdPacker], [IdOrganizationAcceptingClaims]) VALUES (6, 4, 3, 2)
INSERT [dbo].[Manufacturer] ([IdManufacturer], [IdManufacturerAndQualityControl], [IdPacker], [IdOrganizationAcceptingClaims]) VALUES (7, 5, 4, 4)
INSERT [dbo].[Manufacturer] ([IdManufacturer], [IdManufacturerAndQualityControl], [IdPacker], [IdOrganizationAcceptingClaims]) VALUES (8, 6, 5, 5)
INSERT [dbo].[Manufacturer] ([IdManufacturer], [IdManufacturerAndQualityControl], [IdPacker], [IdOrganizationAcceptingClaims]) VALUES (9, 7, 6, 6)
INSERT [dbo].[Manufacturer] ([IdManufacturer], [IdManufacturerAndQualityControl], [IdPacker], [IdOrganizationAcceptingClaims]) VALUES (10, 8, 7, 7)
INSERT [dbo].[Manufacturer] ([IdManufacturer], [IdManufacturerAndQualityControl], [IdPacker], [IdOrganizationAcceptingClaims]) VALUES (11, 9, 8, 8)
INSERT [dbo].[Manufacturer] ([IdManufacturer], [IdManufacturerAndQualityControl], [IdPacker], [IdOrganizationAcceptingClaims]) VALUES (12, 12, 10, 11)
SET IDENTITY_INSERT [dbo].[Manufacturer] OFF
GO
SET IDENTITY_INSERT [dbo].[ManufacturerAndQualityControl] ON 

INSERT [dbo].[ManufacturerAndQualityControl] ([IdManufacturerAndQualityControl], [NameMAQC], [IdCountry], [IdLegalAddressMAQC]) VALUES (1, N'Актива', 1, 1)
INSERT [dbo].[ManufacturerAndQualityControl] ([IdManufacturerAndQualityControl], [NameMAQC], [IdCountry], [IdLegalAddressMAQC]) VALUES (2, N'Лекарь', 2, 2)
INSERT [dbo].[ManufacturerAndQualityControl] ([IdManufacturerAndQualityControl], [NameMAQC], [IdCountry], [IdLegalAddressMAQC]) VALUES (4, N'Спарта', 3, 3)
INSERT [dbo].[ManufacturerAndQualityControl] ([IdManufacturerAndQualityControl], [NameMAQC], [IdCountry], [IdLegalAddressMAQC]) VALUES (5, N'Орион', 4, 3)
INSERT [dbo].[ManufacturerAndQualityControl] ([IdManufacturerAndQualityControl], [NameMAQC], [IdCountry], [IdLegalAddressMAQC]) VALUES (6, N'ИНДИГО', 8, 6)
INSERT [dbo].[ManufacturerAndQualityControl] ([IdManufacturerAndQualityControl], [NameMAQC], [IdCountry], [IdLegalAddressMAQC]) VALUES (7, N'Сима', 9, 7)
INSERT [dbo].[ManufacturerAndQualityControl] ([IdManufacturerAndQualityControl], [NameMAQC], [IdCountry], [IdLegalAddressMAQC]) VALUES (8, N'МЫ', 10, 8)
INSERT [dbo].[ManufacturerAndQualityControl] ([IdManufacturerAndQualityControl], [NameMAQC], [IdCountry], [IdLegalAddressMAQC]) VALUES (9, N'SPA', 11, 9)
INSERT [dbo].[ManufacturerAndQualityControl] ([IdManufacturerAndQualityControl], [NameMAQC], [IdCountry], [IdLegalAddressMAQC]) VALUES (10, N'ИВА', 12, 10)
INSERT [dbo].[ManufacturerAndQualityControl] ([IdManufacturerAndQualityControl], [NameMAQC], [IdCountry], [IdLegalAddressMAQC]) VALUES (12, N'Happy', 3, 11)
SET IDENTITY_INSERT [dbo].[ManufacturerAndQualityControl] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([IdOrder], [IdProduct], [DateOrder], [QuantityOrder], [IdSuppliers]) VALUES (2, 2, CAST(N'2022-10-25' AS Date), 1, 3)
INSERT [dbo].[Order] ([IdOrder], [IdProduct], [DateOrder], [QuantityOrder], [IdSuppliers]) VALUES (3, 12, CAST(N'2022-10-26' AS Date), 100, 1)
INSERT [dbo].[Order] ([IdOrder], [IdProduct], [DateOrder], [QuantityOrder], [IdSuppliers]) VALUES (5, 20, CAST(N'2022-11-05' AS Date), 10, 12)
INSERT [dbo].[Order] ([IdOrder], [IdProduct], [DateOrder], [QuantityOrder], [IdSuppliers]) VALUES (6, 19, CAST(N'2022-11-05' AS Date), 48, 11)
INSERT [dbo].[Order] ([IdOrder], [IdProduct], [DateOrder], [QuantityOrder], [IdSuppliers]) VALUES (7, 18, CAST(N'2022-11-05' AS Date), 4, 10)
INSERT [dbo].[Order] ([IdOrder], [IdProduct], [DateOrder], [QuantityOrder], [IdSuppliers]) VALUES (8, 18, CAST(N'2022-11-05' AS Date), 100, 9)
INSERT [dbo].[Order] ([IdOrder], [IdProduct], [DateOrder], [QuantityOrder], [IdSuppliers]) VALUES (9, 16, CAST(N'2022-11-05' AS Date), 100, 8)
INSERT [dbo].[Order] ([IdOrder], [IdProduct], [DateOrder], [QuantityOrder], [IdSuppliers]) VALUES (10, 14, CAST(N'2022-11-05' AS Date), 100, 7)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrganizationAcceptingClaims] ON 

INSERT [dbo].[OrganizationAcceptingClaims] ([IdOrganizationAcceptingClaims], [NameOAC], [IdCountry], [IdLegalAddressOAC]) VALUES (1, N'Винар     ', 3, 1)
INSERT [dbo].[OrganizationAcceptingClaims] ([IdOrganizationAcceptingClaims], [NameOAC], [IdCountry], [IdLegalAddressOAC]) VALUES (2, N'ПОЛИСАН   ', 1, 2)
INSERT [dbo].[OrganizationAcceptingClaims] ([IdOrganizationAcceptingClaims], [NameOAC], [IdCountry], [IdLegalAddressOAC]) VALUES (4, N'cat       ', 2, 1)
INSERT [dbo].[OrganizationAcceptingClaims] ([IdOrganizationAcceptingClaims], [NameOAC], [IdCountry], [IdLegalAddressOAC]) VALUES (5, N'Roc', 2, 2)
INSERT [dbo].[OrganizationAcceptingClaims] ([IdOrganizationAcceptingClaims], [NameOAC], [IdCountry], [IdLegalAddressOAC]) VALUES (6, N'Brandus', 3, 2)
INSERT [dbo].[OrganizationAcceptingClaims] ([IdOrganizationAcceptingClaims], [NameOAC], [IdCountry], [IdLegalAddressOAC]) VALUES (7, N'EliBrand', 4, 1)
INSERT [dbo].[OrganizationAcceptingClaims] ([IdOrganizationAcceptingClaims], [NameOAC], [IdCountry], [IdLegalAddressOAC]) VALUES (8, N'Posteleon', 8, 1)
INSERT [dbo].[OrganizationAcceptingClaims] ([IdOrganizationAcceptingClaims], [NameOAC], [IdCountry], [IdLegalAddressOAC]) VALUES (9, N'Sleepy', 9, 1)
INSERT [dbo].[OrganizationAcceptingClaims] ([IdOrganizationAcceptingClaims], [NameOAC], [IdCountry], [IdLegalAddressOAC]) VALUES (10, N'Sonya', 10, 2)
INSERT [dbo].[OrganizationAcceptingClaims] ([IdOrganizationAcceptingClaims], [NameOAC], [IdCountry], [IdLegalAddressOAC]) VALUES (11, N'Sweet', 11, 1)
SET IDENTITY_INSERT [dbo].[OrganizationAcceptingClaims] OFF
GO
SET IDENTITY_INSERT [dbo].[Packer] ON 

INSERT [dbo].[Packer] ([IdPacker], [NamePacker], [IdCountry], [IdLegalAddressPacker]) VALUES (1, N'КИМА', 1, 1)
INSERT [dbo].[Packer] ([IdPacker], [NamePacker], [IdCountry], [IdLegalAddressPacker]) VALUES (2, N'PolarPharm', 2, 2)
INSERT [dbo].[Packer] ([IdPacker], [NamePacker], [IdCountry], [IdLegalAddressPacker]) VALUES (3, N'ДиПи', 3, 3)
INSERT [dbo].[Packer] ([IdPacker], [NamePacker], [IdCountry], [IdLegalAddressPacker]) VALUES (4, N'Job', 4, 4)
INSERT [dbo].[Packer] ([IdPacker], [NamePacker], [IdCountry], [IdLegalAddressPacker]) VALUES (5, N'RePack', 8, 5)
INSERT [dbo].[Packer] ([IdPacker], [NamePacker], [IdCountry], [IdLegalAddressPacker]) VALUES (6, N'Ворк', 9, 6)
INSERT [dbo].[Packer] ([IdPacker], [NamePacker], [IdCountry], [IdLegalAddressPacker]) VALUES (7, N'Севен', 10, 7)
INSERT [dbo].[Packer] ([IdPacker], [NamePacker], [IdCountry], [IdLegalAddressPacker]) VALUES (8, N'ЭКО', 11, 8)
INSERT [dbo].[Packer] ([IdPacker], [NamePacker], [IdCountry], [IdLegalAddressPacker]) VALUES (9, N'Пром', 12, 9)
INSERT [dbo].[Packer] ([IdPacker], [NamePacker], [IdCountry], [IdLegalAddressPacker]) VALUES (10, N'Team', 3, 10)
SET IDENTITY_INSERT [dbo].[Packer] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Composition], [IdСategory], [ReleaseForm], [IdManufacturer], [IdSuppliers], [DosageForm], [Indications], [Contraindications], [MethodOfAdministrationAndDosage], [SideEffects], [Overdose], [DrugInteraction], [SpecialInstructions], [StorageConditions], [ReleaseDate], [ExpirationDate], [IdRecipe], [Quantity], [Price]) VALUES (2, N'Эффезел', N'Адапален,Бензоила пероксид', 1, N'Гель', 1, 1, N'Белый или светло-желтый непрозрачный гель', N'Местное лечение угревой сыпи с комедонами, папулами и пустулами.', N'Повышенная чувствительность или аллергические реакции к действующим веществам или любому из ингредиентов препарата.', N'Наружно.
Наносить тонкой пленкой с помощью кончиков пальцев на всю пораженную поверхность один раз в день вечером на чистую и сухую кожу, избегая попадания в глаза и на слизистую губ.', N'Часто: сухость кожи, раздражительный контактный дерматит, жжение и раздражение кожи.
Нечасто: зуд, солнечный ожог.', N'Эффезел следует наносить только один раз в день. При случайном проглатывании следует провести соответствующую симптоматическую терапию.', N'Исследований взаимодействия с другими лекарственными средствами не проводилось. На основании имеющегося опыта применения адапалена и бензоила пероксида взаимодествия с другими лекарственными средствами не выявлены.', N'Не следует наносить гель Эффезел на поврежденную в результате травм (порезы или ссадины) или экзематозно измененную кожу.', N'от 2℃ до 30℃', CAST(N'2022-10-19' AS Date), CAST(N'2023-10-19' AS Date), 1, 6, CAST(1500.00 AS Decimal(7, 2)))
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Composition], [IdСategory], [ReleaseForm], [IdManufacturer], [IdSuppliers], [DosageForm], [Indications], [Contraindications], [MethodOfAdministrationAndDosage], [SideEffects], [Overdose], [DrugInteraction], [SpecialInstructions], [StorageConditions], [ReleaseDate], [ExpirationDate], [IdRecipe], [Quantity], [Price]) VALUES (7, N'Левомицетин актитаб', N'Хлорамфеникол', 2, N'Таблетки', 1, 2, N'Таблетки, покрытые пленочной оболочкой светло-голубого цвета, двояковыпуклые,', N'Инфекции мочевыводящих и желчевыводящих путей, вызванные чувствительными микроорганизмами.', N'Гиперчувствительность, угнетение костномозгового кроветворения, острая интермиттирующая порфирия', N'Внутрь (за 30 мин до еды, а при развитии тошноты и рвоты - через 1 ч после еды), 3-4 раза в сутки. Разовая доза для взрослых - 0,25-0,5 г, суточная - 2 г.', N'Со стороны пищеварительной системы: диспепсия, тошнота, рвота (вероятность развития снижается при приеме через 1 ч после еды), диарея', N'Симптомы: тошнота, рвота.
Лечение: промывание желудка, симптоматическая терапия, гемосорбция.', N'Ингибирует микросомальные ферменты печени, поэтому при одновременном применении с фенобарбиталом, фенитоином, непрямыми антикоагулянтами отмечается ослабление метаболизма этих лекарственных средств', N'Тяжелые осложнения со стороны кроветворной системы, как правило, связаны с применением высоких доз длительное время.', N'от 2℃ до 25℃', CAST(N'2021-12-04' AS Date), CAST(N'2022-11-01' AS Date), 2, 99, CAST(150.00 AS Decimal(7, 2)))
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Composition], [IdСategory], [ReleaseForm], [IdManufacturer], [IdSuppliers], [DosageForm], [Indications], [Contraindications], [MethodOfAdministrationAndDosage], [SideEffects], [Overdose], [DrugInteraction], [SpecialInstructions], [StorageConditions], [ReleaseDate], [ExpirationDate], [IdRecipe], [Quantity], [Price]) VALUES (10, N'Туджео соло стар', N'инсулин гларгин', 7, N'Раствор для подкожного введения', 2, 3, N'Прозрачный, бесцветный или почти бесцветный раствор.', N'Сахарный диабет у пациентов 6 лет и старше', N'Повышенная чувствительность к инсулину гларгину или к любому из вспомогательных веществ препарата.', N'Препарат Туджео СолоСтар® следует вводить подкожно 1 раз в сутки в любое время дня, предпочтительно в одно и то же время.', N'Нарушения со стороны обмена веществ и питания', N'Передозировка инсулина (избыток инсулина относительно потребления пищи, энергозатрат или того и другого вместе) может приводить к тяжелой и иногда длительной и угрожающей жизни больного гипогликемии.', N'Ряд лекарственных средств влияет на метаболизм глюкозы, вследствие чего при их одновременном применении с инсулинами может потребоваться коррекция дозы инсулина и особенно тщательное наблюдение.', N'Пациенты должны обладать навыками самоконтроля сахарного диабета, включая мониторинг концентрации глюкозы в крови', N'от 2℃ до 8℃', CAST(N'2022-09-19' AS Date), CAST(N'2022-11-27' AS Date), 3, 144, CAST(2926.00 AS Decimal(7, 2)))
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Composition], [IdСategory], [ReleaseForm], [IdManufacturer], [IdSuppliers], [DosageForm], [Indications], [Contraindications], [MethodOfAdministrationAndDosage], [SideEffects], [Overdose], [DrugInteraction], [SpecialInstructions], [StorageConditions], [ReleaseDate], [ExpirationDate], [IdRecipe], [Quantity], [Price]) VALUES (12, N'Метформин канон', N'метформина гидрохлорид', 5, N'Таблетки, покрытые пленочной оболочкой', 2, 1, N'Таблетки овальные, двояковыпуклые, покрытые пленочной оболочкой белого или почти белого цвета. На поперечном разрезе белого или почти белого цвета.', N'Сахарный диабет 2 типа, особенно у пациентов с ожирением, при неэффективности диетотерапии и физических нагрузок:', N'Гиперчувствительность к метформину и/или к любому вспомогательному веществу в составе препарата.', N'Применяют внутрь.', N'Нарушения со стороны обмена веществ и питания', N'Значительная передозировка или сопряженные факторы риска могут привести к развитию лактоацидоза.', N'Йодсодержащие рентгеноконтрастные средства', N'Лактоацидоз является редким, но серьезным (высокая смертность при отсутствии неотложного лечения) осложнением', N'от 2℃ до 25℃', CAST(N'2022-05-19' AS Date), CAST(N'2023-02-23' AS Date), 3, 559, CAST(70.00 AS Decimal(7, 2)))
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Composition], [IdСategory], [ReleaseForm], [IdManufacturer], [IdSuppliers], [DosageForm], [Indications], [Contraindications], [MethodOfAdministrationAndDosage], [SideEffects], [Overdose], [DrugInteraction], [SpecialInstructions], [StorageConditions], [ReleaseDate], [ExpirationDate], [IdRecipe], [Quantity], [Price]) VALUES (14, N'Цитовир', N'Альфа-глутамил-триптофан', 13, N'Порошок для приготовления раствора для приема внутрь [для детей]', 4, 6, N'Порошок белого или белого с желтоватым оттенком цвета.', N'профилактика и комплексная терапия гриппа и острых респираторных вирусных инфекций', N'Гиперчувствительность к компонентам препарата, дефицит лактазы, непереносимость лактозы', N'Внутрь, за 30 минут до еды.', N'Возможно кратковременное снижение артериального давления.', N'случаи передозировки не описаны.', N'Взаимодействие альфа-глутамил-триптофана с лекарственными средствами не выявлено.', N'Препарат содержит фруктозу, прием более 2 недель может вызвать поражение зубов.', N'от 2℃ до 25℃', CAST(N'2022-09-22' AS Date), CAST(N'2023-02-17' AS Date), 3, 175, CAST(317.00 AS Decimal(7, 2)))
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Composition], [IdСategory], [ReleaseForm], [IdManufacturer], [IdSuppliers], [DosageForm], [Indications], [Contraindications], [MethodOfAdministrationAndDosage], [SideEffects], [Overdose], [DrugInteraction], [SpecialInstructions], [StorageConditions], [ReleaseDate], [ExpirationDate], [IdRecipe], [Quantity], [Price]) VALUES (16, N'Мирамистин', N'бензилдиметил', 12, N' Раствор для местного применения', 7, 7, N'Бесцветная, прозрачная жидкость, пенящаяся при встряхивании', N'Оториноларингология: комплексное лечение острого и хронического наружного отита', N'Повышенная чувствительность к действующему веществу.', N'Активировать насадку-распылитель нажатием', N'аллергические реакции.', N'Случаев передозировки препарата при местном или наружном применении не зарегистрировано', N'При одновременном применении с антибиотиками отмечено усиление их противобактериальных и противогрибковых свойств.', N'Пользование одного флакона препарата более чем одним лицом может привести к распространению инфекции.', N'от 2℃ до 25℃', CAST(N'2022-09-06' AS Date), CAST(N'2023-01-13' AS Date), 3, 585, CAST(300.00 AS Decimal(7, 2)))
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Composition], [IdСategory], [ReleaseForm], [IdManufacturer], [IdSuppliers], [DosageForm], [Indications], [Contraindications], [MethodOfAdministrationAndDosage], [SideEffects], [Overdose], [DrugInteraction], [SpecialInstructions], [StorageConditions], [ReleaseDate], [ExpirationDate], [IdRecipe], [Quantity], [Price]) VALUES (17, N'Ингавирин ', N'Имидазолилэтанамид ', 10, N'10 капсул вместе с инструкцией по применению помещают в уп', 8, 8, N'Капсулы 60 мг', N'Лечение гриппа А и В и других острых респираторных вирусных инфекций', N'Повышенная чувствительность к активному веществу или любому другому компоненту препарата.', N'Внутрь. Независимо от приема пищи.', N'Аллергические реакции (редко).', N'О случаях передозировки препарата Ингавирин® до настоящего времени не сообщалось.', N'Лекарственное взаимодействие препарата Ингавирин® не описано.', N'Не рекомендуется одновременный прием других противовирусных препаратов.', N'от 2℃ до 25℃', CAST(N'2022-08-02' AS Date), CAST(N'2023-03-15' AS Date), 2, 815, CAST(623.00 AS Decimal(7, 2)))
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Composition], [IdСategory], [ReleaseForm], [IdManufacturer], [IdSuppliers], [DosageForm], [Indications], [Contraindications], [MethodOfAdministrationAndDosage], [SideEffects], [Overdose], [DrugInteraction], [SpecialInstructions], [StorageConditions], [ReleaseDate], [ExpirationDate], [IdRecipe], [Quantity], [Price]) VALUES (18, N'Деринат ', N'натрия дезоксирибонуклеат', 11, N'Раствор для местного и наружного применения', 9, 11, N'Прозрачная, бесцветная жидкость без посторонних включений.', N'острые респираторные заболевания (ОРЗ);', N'Повышенная чувствительность к дезоксирибонуклеату натрия .', N'Препарат назначают детям с первого дня жизни и взрослым.', N'При гангренозных процессах под действием препарата отмечается самопроизвольное отторжение некротических масс', N'О случаях передозировки не сообщалось', N'При местном применении несовместим с мазями на жировой основе и перекисью водорода.', N'Влияние на способность управлять транспортными средствами, механизмами', N'от 4℃ до 20℃', CAST(N'2022-08-09' AS Date), CAST(N'2023-03-24' AS Date), 3, 100, CAST(268.00 AS Decimal(7, 2)))
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Composition], [IdСategory], [ReleaseForm], [IdManufacturer], [IdSuppliers], [DosageForm], [Indications], [Contraindications], [MethodOfAdministrationAndDosage], [SideEffects], [Overdose], [DrugInteraction], [SpecialInstructions], [StorageConditions], [ReleaseDate], [ExpirationDate], [IdRecipe], [Quantity], [Price]) VALUES (19, N'Арбидол ', N'Умифеновир', 6, N'Комплексная терапия', 12, 12, N'Капсулы твердые желатиновые № 0 белого цвета.', N'Профилактика и лечение у взрослых и детей', N'Повышенная чувствительность к умифеновиру или любому компоненту препарата', N'Внутрь, до приема пищи.', N'Препарат Арбидол® Максимум относится к малотоксичным препаратам и обычно хорошо переносится.', N'Не отмечена.', N'При назначении с другими лекарственными средствами отрицательных эффектов отмечено не было.', N'Необходимо соблюдать рекомендованную в инструкции схему и длительность приема препарата. ', N'от 2℃ до 25℃', CAST(N'2022-08-02' AS Date), CAST(N'2023-01-20' AS Date), 1, 151, CAST(512.00 AS Decimal(7, 2)))
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Composition], [IdСategory], [ReleaseForm], [IdManufacturer], [IdSuppliers], [DosageForm], [Indications], [Contraindications], [MethodOfAdministrationAndDosage], [SideEffects], [Overdose], [DrugInteraction], [SpecialInstructions], [StorageConditions], [ReleaseDate], [ExpirationDate], [IdRecipe], [Quantity], [Price]) VALUES (20, N'Галавит ', N'аминодигидрофталазиндион ', 12, N'Таблетки подъязычные', 10, 10, N'Таблетки подъязычные белого цвета с желтоватым оттенком,', N'острых респираторных инфекций', N'Индивидуальная непереносимость, непереносимость галактозы, фруктозы', N'Подъязычно по 1-й таблетке до 4-х раз в сутки или по 2 таблетки 2 раза в сутки:', N'В редких случаях возможны аллергические реакции.', N'Случаи передозировки не отмечены.', N'При одновременном применении возможно снижение курсовых доз антибиотиков', N'В состав препарата входит сорбитол, пациенты с редкими наследственными патологиями, связанными с непереносимостью фруктозы и сорбитола, не должны принимать препарат. ', N'от 2℃ до 25℃', CAST(N'2022-08-16' AS Date), CAST(N'2023-03-22' AS Date), 3, 147, CAST(420.00 AS Decimal(7, 2)))
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Recipe] ON 

INSERT [dbo].[Recipe] ([IdRecipe], [NeedRecipe]) VALUES (1, N'Форма № 107/у-НП')
INSERT [dbo].[Recipe] ([IdRecipe], [NeedRecipe]) VALUES (2, N'Форма № 148–1/у-88')
INSERT [dbo].[Recipe] ([IdRecipe], [NeedRecipe]) VALUES (3, N'Не требуется')
SET IDENTITY_INSERT [dbo].[Recipe] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([IdRole], [NameRole]) VALUES (1, N'Директор')
INSERT [dbo].[Role] ([IdRole], [NameRole]) VALUES (2, N'Администратор')
INSERT [dbo].[Role] ([IdRole], [NameRole]) VALUES (3, N'Фармацевт')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Sell] ON 

INSERT [dbo].[Sell] ([IdSell], [IdProductSell], [IdTypesell], [QuantitySell]) VALUES (1, 7, 2, 1)
INSERT [dbo].[Sell] ([IdSell], [IdProductSell], [IdTypesell], [QuantitySell]) VALUES (3, 10, 1, 1)
INSERT [dbo].[Sell] ([IdSell], [IdProductSell], [IdTypesell], [QuantitySell]) VALUES (4, 10, 2, 1)
INSERT [dbo].[Sell] ([IdSell], [IdProductSell], [IdTypesell], [QuantitySell]) VALUES (5, 10, 1, 1)
INSERT [dbo].[Sell] ([IdSell], [IdProductSell], [IdTypesell], [QuantitySell]) VALUES (6, 10, 2, 1)
INSERT [dbo].[Sell] ([IdSell], [IdProductSell], [IdTypesell], [QuantitySell]) VALUES (7, 20, 2, 100)
INSERT [dbo].[Sell] ([IdSell], [IdProductSell], [IdTypesell], [QuantitySell]) VALUES (8, 19, 2, 100)
INSERT [dbo].[Sell] ([IdSell], [IdProductSell], [IdTypesell], [QuantitySell]) VALUES (9, 18, 2, 100)
INSERT [dbo].[Sell] ([IdSell], [IdProductSell], [IdTypesell], [QuantitySell]) VALUES (10, 17, 2, 100)
INSERT [dbo].[Sell] ([IdSell], [IdProductSell], [IdTypesell], [QuantitySell]) VALUES (11, 16, 2, 100)
INSERT [dbo].[Sell] ([IdSell], [IdProductSell], [IdTypesell], [QuantitySell]) VALUES (12, 14, 2, 100)
INSERT [dbo].[Sell] ([IdSell], [IdProductSell], [IdTypesell], [QuantitySell]) VALUES (13, 12, 2, 100)
INSERT [dbo].[Sell] ([IdSell], [IdProductSell], [IdTypesell], [QuantitySell]) VALUES (14, 10, 2, 100)
INSERT [dbo].[Sell] ([IdSell], [IdProductSell], [IdTypesell], [QuantitySell]) VALUES (15, 18, 1, 10)
INSERT [dbo].[Sell] ([IdSell], [IdProductSell], [IdTypesell], [QuantitySell]) VALUES (16, 19, 1, 4)
INSERT [dbo].[Sell] ([IdSell], [IdProductSell], [IdTypesell], [QuantitySell]) VALUES (17, 12, 1, 41)
INSERT [dbo].[Sell] ([IdSell], [IdProductSell], [IdTypesell], [QuantitySell]) VALUES (18, 10, 1, 3)
INSERT [dbo].[Sell] ([IdSell], [IdProductSell], [IdTypesell], [QuantitySell]) VALUES (19, 7, 1, 1)
INSERT [dbo].[Sell] ([IdSell], [IdProductSell], [IdTypesell], [QuantitySell]) VALUES (20, 2, 1, 4)
SET IDENTITY_INSERT [dbo].[Sell] OFF
GO
SET IDENTITY_INSERT [dbo].[Street] ON 

INSERT [dbo].[Street] ([IdStreet], [NameStreet]) VALUES (1, N'Дачная')
INSERT [dbo].[Street] ([IdStreet], [NameStreet]) VALUES (2, N'Советская')
INSERT [dbo].[Street] ([IdStreet], [NameStreet]) VALUES (3, N'Гагарина')
INSERT [dbo].[Street] ([IdStreet], [NameStreet]) VALUES (4, N'Северная')
INSERT [dbo].[Street] ([IdStreet], [NameStreet]) VALUES (5, N'Академическая')
INSERT [dbo].[Street] ([IdStreet], [NameStreet]) VALUES (6, N'Богатырская')
INSERT [dbo].[Street] ([IdStreet], [NameStreet]) VALUES (7, N'Банная')
INSERT [dbo].[Street] ([IdStreet], [NameStreet]) VALUES (8, N'Большая')
INSERT [dbo].[Street] ([IdStreet], [NameStreet]) VALUES (9, N'Бунина')
INSERT [dbo].[Street] ([IdStreet], [NameStreet]) VALUES (10, N'Бутовская')
SET IDENTITY_INSERT [dbo].[Street] OFF
GO
SET IDENTITY_INSERT [dbo].[Suppliers] ON 

INSERT [dbo].[Suppliers] ([IdSuppliers], [NameSuppliers]) VALUES (1, N'Алтай')
INSERT [dbo].[Suppliers] ([IdSuppliers], [NameSuppliers]) VALUES (2, N'Виктория')
INSERT [dbo].[Suppliers] ([IdSuppliers], [NameSuppliers]) VALUES (3, N'Limon')
INSERT [dbo].[Suppliers] ([IdSuppliers], [NameSuppliers]) VALUES (6, N'fast')
INSERT [dbo].[Suppliers] ([IdSuppliers], [NameSuppliers]) VALUES (7, N'Express24')
INSERT [dbo].[Suppliers] ([IdSuppliers], [NameSuppliers]) VALUES (8, N'Добро')
INSERT [dbo].[Suppliers] ([IdSuppliers], [NameSuppliers]) VALUES (9, N'Эскела')
INSERT [dbo].[Suppliers] ([IdSuppliers], [NameSuppliers]) VALUES (10, N'Темп')
INSERT [dbo].[Suppliers] ([IdSuppliers], [NameSuppliers]) VALUES (11, N'SMi')
INSERT [dbo].[Suppliers] ([IdSuppliers], [NameSuppliers]) VALUES (12, N'Pack')
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeSell] ON 

INSERT [dbo].[TypeSell] ([IdType], [NameType]) VALUES (1, N'Продажа')
INSERT [dbo].[TypeSell] ([IdType], [NameType]) VALUES (2, N'Поставка')
SET IDENTITY_INSERT [dbo].[TypeSell] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([IdUser], [LoginUser], [IdRole], [PasswordUser]) VALUES (1, N'egor', 1, N'egor')
INSERT [dbo].[User] ([IdUser], [LoginUser], [IdRole], [PasswordUser]) VALUES (2, N'mag', 2, N'mag')
INSERT [dbo].[User] ([IdUser], [LoginUser], [IdRole], [PasswordUser]) VALUES (6, N'obi', 3, N'obi')
INSERT [dbo].[User] ([IdUser], [LoginUser], [IdRole], [PasswordUser]) VALUES (12, N'vika', 3, N'vika')
INSERT [dbo].[User] ([IdUser], [LoginUser], [IdRole], [PasswordUser]) VALUES (13, N'Masa', 3, N'Masa')
INSERT [dbo].[User] ([IdUser], [LoginUser], [IdRole], [PasswordUser]) VALUES (14, N'Roman', 2, N'Roman')
INSERT [dbo].[User] ([IdUser], [LoginUser], [IdRole], [PasswordUser]) VALUES (15, N'Dolina', 3, N'Dolina')
INSERT [dbo].[User] ([IdUser], [LoginUser], [IdRole], [PasswordUser]) VALUES (16, N'Leonid', 3, N'Leonid')
INSERT [dbo].[User] ([IdUser], [LoginUser], [IdRole], [PasswordUser]) VALUES (17, N'Kyza', 3, N'Kyza')
INSERT [dbo].[User] ([IdUser], [LoginUser], [IdRole], [PasswordUser]) VALUES (18, N'pop', 2, N'pop')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[LegalAddressMAQC]  WITH CHECK ADD  CONSTRAINT [FK_LegalAddressMAQC_City] FOREIGN KEY([IdCity])
REFERENCES [dbo].[City] ([IdCity])
GO
ALTER TABLE [dbo].[LegalAddressMAQC] CHECK CONSTRAINT [FK_LegalAddressMAQC_City]
GO
ALTER TABLE [dbo].[LegalAddressMAQC]  WITH CHECK ADD  CONSTRAINT [FK_LegalAddressMAQC_Street] FOREIGN KEY([IdStreet])
REFERENCES [dbo].[Street] ([IdStreet])
GO
ALTER TABLE [dbo].[LegalAddressMAQC] CHECK CONSTRAINT [FK_LegalAddressMAQC_Street]
GO
ALTER TABLE [dbo].[LegalAddressOAC]  WITH CHECK ADD  CONSTRAINT [FK_LegalAddressOAC_City] FOREIGN KEY([IdCity])
REFERENCES [dbo].[City] ([IdCity])
GO
ALTER TABLE [dbo].[LegalAddressOAC] CHECK CONSTRAINT [FK_LegalAddressOAC_City]
GO
ALTER TABLE [dbo].[LegalAddressOAC]  WITH CHECK ADD  CONSTRAINT [FK_LegalAddressOAC_Street] FOREIGN KEY([IdStreet])
REFERENCES [dbo].[Street] ([IdStreet])
GO
ALTER TABLE [dbo].[LegalAddressOAC] CHECK CONSTRAINT [FK_LegalAddressOAC_Street]
GO
ALTER TABLE [dbo].[LegalAddressPacker]  WITH CHECK ADD  CONSTRAINT [FK_LegalAddressPacker_City] FOREIGN KEY([IdCity])
REFERENCES [dbo].[City] ([IdCity])
GO
ALTER TABLE [dbo].[LegalAddressPacker] CHECK CONSTRAINT [FK_LegalAddressPacker_City]
GO
ALTER TABLE [dbo].[LegalAddressPacker]  WITH CHECK ADD  CONSTRAINT [FK_LegalAddressPacker_Street] FOREIGN KEY([IdStreet])
REFERENCES [dbo].[Street] ([IdStreet])
GO
ALTER TABLE [dbo].[LegalAddressPacker] CHECK CONSTRAINT [FK_LegalAddressPacker_Street]
GO
ALTER TABLE [dbo].[Manufacturer]  WITH CHECK ADD  CONSTRAINT [FK_Manufacturer_ManufacturerAndQualityControl] FOREIGN KEY([IdManufacturerAndQualityControl])
REFERENCES [dbo].[ManufacturerAndQualityControl] ([IdManufacturerAndQualityControl])
GO
ALTER TABLE [dbo].[Manufacturer] CHECK CONSTRAINT [FK_Manufacturer_ManufacturerAndQualityControl]
GO
ALTER TABLE [dbo].[Manufacturer]  WITH CHECK ADD  CONSTRAINT [FK_Manufacturer_OrganizationAcceptingClaims] FOREIGN KEY([IdOrganizationAcceptingClaims])
REFERENCES [dbo].[OrganizationAcceptingClaims] ([IdOrganizationAcceptingClaims])
GO
ALTER TABLE [dbo].[Manufacturer] CHECK CONSTRAINT [FK_Manufacturer_OrganizationAcceptingClaims]
GO
ALTER TABLE [dbo].[Manufacturer]  WITH CHECK ADD  CONSTRAINT [FK_Manufacturer_Packer] FOREIGN KEY([IdPacker])
REFERENCES [dbo].[Packer] ([IdPacker])
GO
ALTER TABLE [dbo].[Manufacturer] CHECK CONSTRAINT [FK_Manufacturer_Packer]
GO
ALTER TABLE [dbo].[ManufacturerAndQualityControl]  WITH CHECK ADD  CONSTRAINT [FK_ManufacturerAndQualityControl_Country] FOREIGN KEY([IdCountry])
REFERENCES [dbo].[Country] ([IdCountry])
GO
ALTER TABLE [dbo].[ManufacturerAndQualityControl] CHECK CONSTRAINT [FK_ManufacturerAndQualityControl_Country]
GO
ALTER TABLE [dbo].[ManufacturerAndQualityControl]  WITH CHECK ADD  CONSTRAINT [FK_ManufacturerAndQualityControl_LegalAddressMAQC] FOREIGN KEY([IdLegalAddressMAQC])
REFERENCES [dbo].[LegalAddressMAQC] ([IdLegalAddressMAQC])
GO
ALTER TABLE [dbo].[ManufacturerAndQualityControl] CHECK CONSTRAINT [FK_ManufacturerAndQualityControl_LegalAddressMAQC]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([IdProduct])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Product]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Suppliers] FOREIGN KEY([IdSuppliers])
REFERENCES [dbo].[Suppliers] ([IdSuppliers])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Suppliers]
GO
ALTER TABLE [dbo].[OrganizationAcceptingClaims]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationAcceptingClaims_Country] FOREIGN KEY([IdCountry])
REFERENCES [dbo].[Country] ([IdCountry])
GO
ALTER TABLE [dbo].[OrganizationAcceptingClaims] CHECK CONSTRAINT [FK_OrganizationAcceptingClaims_Country]
GO
ALTER TABLE [dbo].[OrganizationAcceptingClaims]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationAcceptingClaims_LegalAddressOAC] FOREIGN KEY([IdLegalAddressOAC])
REFERENCES [dbo].[LegalAddressOAC] ([IdLegalAddressOAC])
GO
ALTER TABLE [dbo].[OrganizationAcceptingClaims] CHECK CONSTRAINT [FK_OrganizationAcceptingClaims_LegalAddressOAC]
GO
ALTER TABLE [dbo].[Packer]  WITH CHECK ADD  CONSTRAINT [FK_Packer_Country] FOREIGN KEY([IdCountry])
REFERENCES [dbo].[Country] ([IdCountry])
GO
ALTER TABLE [dbo].[Packer] CHECK CONSTRAINT [FK_Packer_Country]
GO
ALTER TABLE [dbo].[Packer]  WITH CHECK ADD  CONSTRAINT [FK_Packer_LegalAddressPacker] FOREIGN KEY([IdLegalAddressPacker])
REFERENCES [dbo].[LegalAddressPacker] ([IdLegalAddressPacker])
GO
ALTER TABLE [dbo].[Packer] CHECK CONSTRAINT [FK_Packer_LegalAddressPacker]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([IdСategory])
REFERENCES [dbo].[Category] ([IdСategory])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Manufacturer] FOREIGN KEY([IdManufacturer])
REFERENCES [dbo].[Manufacturer] ([IdManufacturer])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Manufacturer]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Recipe] FOREIGN KEY([IdRecipe])
REFERENCES [dbo].[Recipe] ([IdRecipe])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Recipe]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Suppliers] FOREIGN KEY([IdSuppliers])
REFERENCES [dbo].[Suppliers] ([IdSuppliers])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Suppliers]
GO
ALTER TABLE [dbo].[Sell]  WITH CHECK ADD  CONSTRAINT [FK_Sell_Product] FOREIGN KEY([IdProductSell])
REFERENCES [dbo].[Product] ([IdProduct])
GO
ALTER TABLE [dbo].[Sell] CHECK CONSTRAINT [FK_Sell_Product]
GO
ALTER TABLE [dbo].[Sell]  WITH CHECK ADD  CONSTRAINT [FK_Sell_TypeSell] FOREIGN KEY([IdTypesell])
REFERENCES [dbo].[TypeSell] ([IdType])
GO
ALTER TABLE [dbo].[Sell] CHECK CONSTRAINT [FK_Sell_TypeSell]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([IdRole])
REFERENCES [dbo].[Role] ([IdRole])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO

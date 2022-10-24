USE [GorZdrav]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 25.10.2022 0:12:14 ******/
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
/****** Object:  Table [dbo].[City]    Script Date: 25.10.2022 0:12:14 ******/
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
/****** Object:  Table [dbo].[Country]    Script Date: 25.10.2022 0:12:14 ******/
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
/****** Object:  Table [dbo].[LegalAddressMAQC]    Script Date: 25.10.2022 0:12:14 ******/
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
/****** Object:  Table [dbo].[LegalAddressOAC]    Script Date: 25.10.2022 0:12:14 ******/
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
/****** Object:  Table [dbo].[LegalAddressPacker]    Script Date: 25.10.2022 0:12:14 ******/
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
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 25.10.2022 0:12:14 ******/
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
/****** Object:  Table [dbo].[ManufacturerAndQualityControl]    Script Date: 25.10.2022 0:12:14 ******/
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
/****** Object:  Table [dbo].[Order]    Script Date: 25.10.2022 0:12:14 ******/
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
/****** Object:  Table [dbo].[OrganizationAcceptingClaims]    Script Date: 25.10.2022 0:12:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrganizationAcceptingClaims](
	[IdOrganizationAcceptingClaims] [int] IDENTITY(1,1) NOT NULL,
	[NameOAC] [nchar](10) NOT NULL,
	[IdCountry] [int] NOT NULL,
	[IdLegalAddressOAC] [int] NOT NULL,
 CONSTRAINT [PK_OrganizationAcceptingClaims] PRIMARY KEY CLUSTERED 
(
	[IdOrganizationAcceptingClaims] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Packer]    Script Date: 25.10.2022 0:12:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Packer](
	[IdPacker] [int] NOT NULL,
	[NamePacker] [nvarchar](100) NOT NULL,
	[IdCountry] [int] NOT NULL,
	[IdLegalAddressPacker] [int] NOT NULL,
 CONSTRAINT [PK_Packer] PRIMARY KEY CLUSTERED 
(
	[IdPacker] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 25.10.2022 0:12:14 ******/
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
/****** Object:  Table [dbo].[Recipe]    Script Date: 25.10.2022 0:12:14 ******/
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
/****** Object:  Table [dbo].[Role]    Script Date: 25.10.2022 0:12:14 ******/
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
/****** Object:  Table [dbo].[Sell]    Script Date: 25.10.2022 0:12:14 ******/
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
/****** Object:  Table [dbo].[Street]    Script Date: 25.10.2022 0:12:14 ******/
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
/****** Object:  Table [dbo].[Suppliers]    Script Date: 25.10.2022 0:12:14 ******/
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
/****** Object:  Table [dbo].[TypeSell]    Script Date: 25.10.2022 0:12:14 ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 25.10.2022 0:12:14 ******/
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
INSERT [dbo].[Category] ([IdСategory], [NameСategory]) VALUES (3, N'Детское питание')
INSERT [dbo].[Category] ([IdСategory], [NameСategory]) VALUES (5, N'Слабительные')
INSERT [dbo].[Category] ([IdСategory], [NameСategory]) VALUES (6, N'Обезболивающие')
INSERT [dbo].[Category] ([IdСategory], [NameСategory]) VALUES (7, N'Инсулин')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([IdCity], [NameCity]) VALUES (1, N'Москва')
INSERT [dbo].[City] ([IdCity], [NameCity]) VALUES (2, N'Домодедово')
INSERT [dbo].[City] ([IdCity], [NameCity]) VALUES (3, N'Гонконг')
INSERT [dbo].[City] ([IdCity], [NameCity]) VALUES (4, N'Видное')
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([IdCountry], [NameCountry]) VALUES (1, N'Россия')
INSERT [dbo].[Country] ([IdCountry], [NameCountry]) VALUES (2, N'Германия')
INSERT [dbo].[Country] ([IdCountry], [NameCountry]) VALUES (3, N'Япония')
INSERT [dbo].[Country] ([IdCountry], [NameCountry]) VALUES (4, N'Китай')
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
SET IDENTITY_INSERT [dbo].[LegalAddressMAQC] ON 

INSERT [dbo].[LegalAddressMAQC] ([IdLegalAddressMAQC], [IdCity], [IdStreet], [HouseNumber], [Building]) VALUES (1, 1, 1, N'5', N'10')
INSERT [dbo].[LegalAddressMAQC] ([IdLegalAddressMAQC], [IdCity], [IdStreet], [HouseNumber], [Building]) VALUES (2, 2, 2, N'25', N'1')
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
SET IDENTITY_INSERT [dbo].[LegalAddressPacker] OFF
GO
SET IDENTITY_INSERT [dbo].[Manufacturer] ON 

INSERT [dbo].[Manufacturer] ([IdManufacturer], [IdManufacturerAndQualityControl], [IdPacker], [IdOrganizationAcceptingClaims]) VALUES (1, 1, 1, 1)
INSERT [dbo].[Manufacturer] ([IdManufacturer], [IdManufacturerAndQualityControl], [IdPacker], [IdOrganizationAcceptingClaims]) VALUES (2, 2, 3, 2)
SET IDENTITY_INSERT [dbo].[Manufacturer] OFF
GO
SET IDENTITY_INSERT [dbo].[ManufacturerAndQualityControl] ON 

INSERT [dbo].[ManufacturerAndQualityControl] ([IdManufacturerAndQualityControl], [NameMAQC], [IdCountry], [IdLegalAddressMAQC]) VALUES (1, N'Актива', 1, 1)
INSERT [dbo].[ManufacturerAndQualityControl] ([IdManufacturerAndQualityControl], [NameMAQC], [IdCountry], [IdLegalAddressMAQC]) VALUES (2, N'Лекарь', 2, 2)
SET IDENTITY_INSERT [dbo].[ManufacturerAndQualityControl] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([IdOrder], [IdProduct], [DateOrder], [QuantityOrder], [IdSuppliers]) VALUES (1, 2, CAST(N'2022-10-20' AS Date), 45, 2)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrganizationAcceptingClaims] ON 

INSERT [dbo].[OrganizationAcceptingClaims] ([IdOrganizationAcceptingClaims], [NameOAC], [IdCountry], [IdLegalAddressOAC]) VALUES (1, N'Винар     ', 3, 1)
INSERT [dbo].[OrganizationAcceptingClaims] ([IdOrganizationAcceptingClaims], [NameOAC], [IdCountry], [IdLegalAddressOAC]) VALUES (2, N'ПОЛИСАН   ', 1, 2)
SET IDENTITY_INSERT [dbo].[OrganizationAcceptingClaims] OFF
GO
INSERT [dbo].[Packer] ([IdPacker], [NamePacker], [IdCountry], [IdLegalAddressPacker]) VALUES (1, N'КИМА', 1, 1)
INSERT [dbo].[Packer] ([IdPacker], [NamePacker], [IdCountry], [IdLegalAddressPacker]) VALUES (3, N'PolarPharm', 2, 2)
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Composition], [IdСategory], [ReleaseForm], [IdManufacturer], [IdSuppliers], [DosageForm], [Indications], [Contraindications], [MethodOfAdministrationAndDosage], [SideEffects], [Overdose], [DrugInteraction], [SpecialInstructions], [StorageConditions], [ReleaseDate], [ExpirationDate], [IdRecipe], [Quantity], [Price]) VALUES (2, N'Эффезел', N'Адапален,Бензоила пероксид', 1, N'Гель', 1, 1, N'Белый или светло-желтый непрозрачный гель', N'Местное лечение угревой сыпи с комедонами, папулами и пустулами.', N'Повышенная чувствительность или аллергические реакции к действующим веществам или любому из ингредиентов препарата.', N'Наружно.
Наносить тонкой пленкой с помощью кончиков пальцев на всю пораженную поверхность один раз в день вечером на чистую и сухую кожу, избегая попадания в глаза и на слизистую губ.', N'Часто: сухость кожи, раздражительный контактный дерматит, жжение и раздражение кожи.
Нечасто: зуд, солнечный ожог.', N'Эффезел следует наносить только один раз в день. При случайном проглатывании следует провести соответствующую симптоматическую терапию.', N'Исследований взаимодействия с другими лекарственными средствами не проводилось. На основании имеющегося опыта применения адапалена и бензоила пероксида взаимодествия с другими лекарственными средствами не выявлены.', N'Не следует наносить гель Эффезел на поврежденную в результате травм (порезы или ссадины) или экзематозно измененную кожу.', N'от 2℃ до 30℃', CAST(N'2022-10-19' AS Date), CAST(N'2023-10-19' AS Date), 1, 10, CAST(1500.00 AS Decimal(7, 2)))
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Composition], [IdСategory], [ReleaseForm], [IdManufacturer], [IdSuppliers], [DosageForm], [Indications], [Contraindications], [MethodOfAdministrationAndDosage], [SideEffects], [Overdose], [DrugInteraction], [SpecialInstructions], [StorageConditions], [ReleaseDate], [ExpirationDate], [IdRecipe], [Quantity], [Price]) VALUES (7, N'Левомицетин актитаб', N'Хлорамфеникол', 2, N'Таблетки', 1, 2, N'Таблетки, покрытые пленочной оболочкой светло-голубого цвета, двояковыпуклые,', N'Инфекции мочевыводящих и желчевыводящих путей, вызванные чувствительными микроорганизмами.', N'Гиперчувствительность, угнетение костномозгового кроветворения, острая интермиттирующая порфирия', N'Внутрь (за 30 мин до еды, а при развитии тошноты и рвоты - через 1 ч после еды), 3-4 раза в сутки. Разовая доза для взрослых - 0,25-0,5 г, суточная - 2 г.', N'Со стороны пищеварительной системы: диспепсия, тошнота, рвота (вероятность развития снижается при приеме через 1 ч после еды), диарея', N'Симптомы: тошнота, рвота.
Лечение: промывание желудка, симптоматическая терапия, гемосорбция.', N'Ингибирует микросомальные ферменты печени, поэтому при одновременном применении с фенобарбиталом, фенитоином, непрямыми антикоагулянтами отмечается ослабление метаболизма этих лекарственных средств', N'Тяжелые осложнения со стороны кроветворной системы, как правило, связаны с применением высоких доз длительное время.', N'от 2℃ до 25℃', CAST(N'2021-12-04' AS Date), CAST(N'2022-11-01' AS Date), 2, 100, CAST(150.00 AS Decimal(7, 2)))
INSERT [dbo].[Product] ([IdProduct], [NameProduct], [Composition], [IdСategory], [ReleaseForm], [IdManufacturer], [IdSuppliers], [DosageForm], [Indications], [Contraindications], [MethodOfAdministrationAndDosage], [SideEffects], [Overdose], [DrugInteraction], [SpecialInstructions], [StorageConditions], [ReleaseDate], [ExpirationDate], [IdRecipe], [Quantity], [Price]) VALUES (9, N'test', N'test', 7, N'test', 2, 3, N'test', N'test', N'test', N'test', N'test', N'test', N'test', N'test', N'test', CAST(N'2022-10-01' AS Date), CAST(N'2022-10-30' AS Date), 3, 494, CAST(1455.00 AS Decimal(7, 2)))
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
INSERT [dbo].[Sell] ([IdSell], [IdProductSell], [IdTypesell], [QuantitySell]) VALUES (2, 9, 1, 51)
SET IDENTITY_INSERT [dbo].[Sell] OFF
GO
SET IDENTITY_INSERT [dbo].[Street] ON 

INSERT [dbo].[Street] ([IdStreet], [NameStreet]) VALUES (1, N'Дачная')
INSERT [dbo].[Street] ([IdStreet], [NameStreet]) VALUES (2, N'Советская')
INSERT [dbo].[Street] ([IdStreet], [NameStreet]) VALUES (3, N'Гагарина')
INSERT [dbo].[Street] ([IdStreet], [NameStreet]) VALUES (4, N'Северная')
SET IDENTITY_INSERT [dbo].[Street] OFF
GO
SET IDENTITY_INSERT [dbo].[Suppliers] ON 

INSERT [dbo].[Suppliers] ([IdSuppliers], [NameSuppliers]) VALUES (1, N'Алтай')
INSERT [dbo].[Suppliers] ([IdSuppliers], [NameSuppliers]) VALUES (2, N'Виктория')
INSERT [dbo].[Suppliers] ([IdSuppliers], [NameSuppliers]) VALUES (3, N'Limon')
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

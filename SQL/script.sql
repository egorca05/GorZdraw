USE [GorZdrav]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 17.10.2022 23:37:35 ******/
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
/****** Object:  Table [dbo].[City]    Script Date: 17.10.2022 23:37:35 ******/
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
/****** Object:  Table [dbo].[Country]    Script Date: 17.10.2022 23:37:35 ******/
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
/****** Object:  Table [dbo].[LegalAddressMAQC]    Script Date: 17.10.2022 23:37:35 ******/
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
/****** Object:  Table [dbo].[LegalAddressOAC]    Script Date: 17.10.2022 23:37:35 ******/
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
/****** Object:  Table [dbo].[LegalAddressPacker]    Script Date: 17.10.2022 23:37:35 ******/
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
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 17.10.2022 23:37:35 ******/
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
/****** Object:  Table [dbo].[ManufacturerAndQualityControl]    Script Date: 17.10.2022 23:37:35 ******/
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
/****** Object:  Table [dbo].[Order]    Script Date: 17.10.2022 23:37:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[IdOrder] [int] IDENTITY(1,1) NOT NULL,
	[IdProduct] [int] NOT NULL,
	[DateOrder] [date] NOT NULL,
	[QuantityOrder] [int] NOT NULL,
	[Price] [decimal](7, 2) NOT NULL,
	[Priceall] [decimal](7, 2) NOT NULL,
	[IdSuppliers] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[IdOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrganizationAcceptingClaims]    Script Date: 17.10.2022 23:37:35 ******/
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
/****** Object:  Table [dbo].[Packer]    Script Date: 17.10.2022 23:37:35 ******/
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
/****** Object:  Table [dbo].[Product]    Script Date: 17.10.2022 23:37:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[IdProduct] [int] IDENTITY(1,1) NOT NULL,
	[NameProduct] [nvarchar](40) NOT NULL,
	[Composition] [nvarchar](1000) NOT NULL,
	[IdСategory] [int] NOT NULL,
	[ReleaseForm] [nvarchar](100) NOT NULL,
	[IdManufacturer] [int] NOT NULL,
	[IdSuppliers] [int] NOT NULL,
	[DosageForm] [nvarchar](100) NOT NULL,
	[Indications] [nvarchar](100) NOT NULL,
	[Contraindications] [nvarchar](100) NOT NULL,
	[MethodOfAdministrationAndDosage] [nvarchar](1000) NOT NULL,
	[SideEffects] [nvarchar](100) NOT NULL,
	[Overdose] [nvarchar](100) NOT NULL,
	[DrugInteraction] [nvarchar](100) NOT NULL,
	[SpecialInstructions] [nvarchar](100) NOT NULL,
	[StorageConditions] [nvarchar](100) NOT NULL,
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
/****** Object:  Table [dbo].[Recipe]    Script Date: 17.10.2022 23:37:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recipe](
	[IdRecipe] [int] IDENTITY(1,1) NOT NULL,
	[NeedRecipe] [nvarchar](3) NOT NULL,
 CONSTRAINT [PK_Recipe] PRIMARY KEY CLUSTERED 
(
	[IdRecipe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 17.10.2022 23:37:35 ******/
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
/****** Object:  Table [dbo].[Street]    Script Date: 17.10.2022 23:37:35 ******/
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
/****** Object:  Table [dbo].[Suppliers]    Script Date: 17.10.2022 23:37:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[IdSuppliers] [int] NOT NULL,
	[NameSuppliers] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[IdSuppliers] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 17.10.2022 23:37:35 ******/
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
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([IdRole])
REFERENCES [dbo].[Role] ([IdRole])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO

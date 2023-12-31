USE [SD_79_XDWebsiteBanGiayTTZenSport]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/19/2023 11:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 11/19/2023 11:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[AddressID] [uniqueidentifier] NOT NULL,
	[Street] [nvarchar](200) NULL,
	[Commune] [nvarchar](200) NULL,
	[District] [nvarchar](200) NULL,
	[Province] [nvarchar](200) NULL,
	[Status] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[CumstomerID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 11/19/2023 11:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[BillID] [uniqueidentifier] NOT NULL,
	[BillCode] [nvarchar](100) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[SuccessDate] [datetime] NOT NULL,
	[DeliveryDate] [datetime] NOT NULL,
	[CancelDate] [datetime] NOT NULL,
	[TotalPrice] [decimal](18, 2) NOT NULL,
	[ShippingCosts] [decimal](18, 2) NOT NULL,
	[Note] [nvarchar](500) NOT NULL,
	[Status] [int] NOT NULL,
	[CustomerID] [uniqueidentifier] NOT NULL,
	[VoucherID] [uniqueidentifier] NOT NULL,
	[EmployeeID] [uniqueidentifier] NOT NULL,
	[PurchaseMethodID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Bill] PRIMARY KEY CLUSTERED 
(
	[BillID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillDetails]    Script Date: 11/19/2023 11:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillDetails](
	[ID] [uniqueidentifier] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Status] [int] NOT NULL,
	[ShoesDetailsId] [uniqueidentifier] NOT NULL,
	[BillID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_BillDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 11/19/2023 11:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[CumstomerID] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](300) NOT NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[CumstomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartDetails]    Script Date: 11/19/2023 11:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartDetails](
	[CartDetailsId] [uniqueidentifier] NOT NULL,
	[CumstomerID] [uniqueidentifier] NOT NULL,
	[ShoesDetails_SizeID] [uniqueidentifier] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_CartDetails] PRIMARY KEY CLUSTERED 
(
	[CartDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 11/19/2023 11:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[ColorID] [uniqueidentifier] NOT NULL,
	[ColorCode] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Status] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_Color] PRIMARY KEY CLUSTERED 
(
	[ColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 11/19/2023 11:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CumstomerID] [uniqueidentifier] NOT NULL,
	[FullName] [nvarchar](100) NULL,
	[UserName] [nvarchar](100) NULL,
	[Password] [nvarchar](100) NULL,
	[Email] [nvarchar](300) NULL,
	[Sex] [int] NOT NULL,
	[ResetPassword] [nvarchar](60) NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[Status] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[RankID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CumstomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 11/19/2023 11:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [uniqueidentifier] NOT NULL,
	[FullName] [nvarchar](100) NULL,
	[UserName] [nvarchar](100) NULL,
	[Password] [nvarchar](100) NULL,
	[Email] [nvarchar](300) NULL,
	[Sex] [int] NOT NULL,
	[ResetPassword] [nvarchar](60) NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[Status] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[RoleID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FavoriteShoes]    Script Date: 11/19/2023 11:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FavoriteShoes](
	[FavoriteID] [uniqueidentifier] NOT NULL,
	[ShoesDetailsId] [uniqueidentifier] NOT NULL,
	[CumstomerID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_FavoriteShoes] PRIMARY KEY CLUSTERED 
(
	[FavoriteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 11/19/2023 11:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[ImageID] [uniqueidentifier] NOT NULL,
	[ImageCode] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Image1] [nvarchar](1000) NULL,
	[Image2] [nvarchar](1000) NULL,
	[Image3] [nvarchar](1000) NULL,
	[Image4] [nvarchar](1000) NULL,
	[Status] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[ShoesDetailsID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 11/19/2023 11:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[MaterialId] [uniqueidentifier] NOT NULL,
	[MaterialCode] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Status] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED 
(
	[MaterialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/19/2023 11:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [uniqueidentifier] NOT NULL,
	[ProductCode] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Status] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[SupplierID] [uniqueidentifier] NOT NULL,
	[MaterialId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseMethod]    Script Date: 11/19/2023 11:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseMethod](
	[PurchaseMethodID] [uniqueidentifier] NOT NULL,
	[MethodName] [nvarchar](200) NOT NULL,
	[Status] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_PurchaseMethod] PRIMARY KEY CLUSTERED 
(
	[PurchaseMethodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rank]    Script Date: 11/19/2023 11:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rank](
	[RankID] [uniqueidentifier] NOT NULL,
	[RankCode] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Desciption] [nvarchar](500) NOT NULL,
	[ThresholdAmount] [decimal](18, 2) NOT NULL,
	[ReducedValue] [decimal](18, 2) NOT NULL,
	[Status] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_Rank] PRIMARY KEY CLUSTERED 
(
	[RankID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 11/19/2023 11:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [uniqueidentifier] NOT NULL,
	[RoleCode] [nvarchar](50) NULL,
	[RoleName] [nvarchar](100) NULL,
	[Status] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoesDetails]    Script Date: 11/19/2023 11:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoesDetails](
	[ShoesDetailsId] [uniqueidentifier] NOT NULL,
	[ShoesDetailsCode] [nvarchar](100) NULL,
	[DateCreated] [datetime] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[ImportPrice] [decimal](18, 2) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[Status] [int] NOT NULL,
	[ColorID] [uniqueidentifier] NOT NULL,
	[ProductID] [uniqueidentifier] NOT NULL,
	[SoleID] [uniqueidentifier] NOT NULL,
	[StyleID] [uniqueidentifier] NOT NULL,
	[ImageUrl] [nvarchar](1000) NULL,
 CONSTRAINT [PK_ShoesDetails] PRIMARY KEY CLUSTERED 
(
	[ShoesDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoesDetails_Size]    Script Date: 11/19/2023 11:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoesDetails_Size](
	[ID] [uniqueidentifier] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ShoesDetailsId] [uniqueidentifier] NOT NULL,
	[SizeID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_ShoesDetails_Size] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 11/19/2023 11:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[SizeID] [uniqueidentifier] NOT NULL,
	[SizeCode] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Status] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_Size] PRIMARY KEY CLUSTERED 
(
	[SizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sole]    Script Date: 11/19/2023 11:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sole](
	[SoleID] [uniqueidentifier] NOT NULL,
	[SoleCode] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Height] [decimal](18, 2) NOT NULL,
	[Status] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_Sole] PRIMARY KEY CLUSTERED 
(
	[SoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Style]    Script Date: 11/19/2023 11:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Style](
	[StyleID] [uniqueidentifier] NOT NULL,
	[StyleCode] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Status] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_Style] PRIMARY KEY CLUSTERED 
(
	[StyleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 11/19/2023 11:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[SupplierID] [uniqueidentifier] NOT NULL,
	[SupplierCode] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Status] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 11/19/2023 11:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[VoucherID] [uniqueidentifier] NOT NULL,
	[VoucherCode] [nvarchar](100) NULL,
	[VoucherValue] [decimal](18, 2) NOT NULL,
	[MaxUsage] [int] NOT NULL,
	[RemainingUsage] [int] NOT NULL,
	[ExpirationDate] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_Voucher] PRIMARY KEY CLUSTERED 
(
	[VoucherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Customer_CumstomerID] FOREIGN KEY([CumstomerID])
REFERENCES [dbo].[Customer] ([CumstomerID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Customer_CumstomerID]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_Customer_CustomerID] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CumstomerID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_Customer_CustomerID]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_Employee_EmployeeID] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_Employee_EmployeeID]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_PurchaseMethod_PurchaseMethodID] FOREIGN KEY([PurchaseMethodID])
REFERENCES [dbo].[PurchaseMethod] ([PurchaseMethodID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_PurchaseMethod_PurchaseMethodID]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_Voucher_VoucherID] FOREIGN KEY([VoucherID])
REFERENCES [dbo].[Voucher] ([VoucherID])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_Voucher_VoucherID]
GO
ALTER TABLE [dbo].[BillDetails]  WITH CHECK ADD  CONSTRAINT [FK_BillDetails_Bill_BillID] FOREIGN KEY([BillID])
REFERENCES [dbo].[Bill] ([BillID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BillDetails] CHECK CONSTRAINT [FK_BillDetails_Bill_BillID]
GO
ALTER TABLE [dbo].[BillDetails]  WITH CHECK ADD  CONSTRAINT [FK_BillDetails_ShoesDetails_ShoesDetailsId] FOREIGN KEY([ShoesDetailsId])
REFERENCES [dbo].[ShoesDetails] ([ShoesDetailsId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BillDetails] CHECK CONSTRAINT [FK_BillDetails_ShoesDetails_ShoesDetailsId]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Customer_CumstomerID] FOREIGN KEY([CumstomerID])
REFERENCES [dbo].[Customer] ([CumstomerID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Customer_CumstomerID]
GO
ALTER TABLE [dbo].[CartDetails]  WITH CHECK ADD  CONSTRAINT [FK_CartDetails_Cart_CumstomerID] FOREIGN KEY([CumstomerID])
REFERENCES [dbo].[Cart] ([CumstomerID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CartDetails] CHECK CONSTRAINT [FK_CartDetails_Cart_CumstomerID]
GO
ALTER TABLE [dbo].[CartDetails]  WITH CHECK ADD  CONSTRAINT [FK_CartDetails_ShoesDetails_Size_ShoesDetails_SizeID] FOREIGN KEY([ShoesDetails_SizeID])
REFERENCES [dbo].[ShoesDetails_Size] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CartDetails] CHECK CONSTRAINT [FK_CartDetails_ShoesDetails_Size_ShoesDetails_SizeID]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Rank_RankID] FOREIGN KEY([RankID])
REFERENCES [dbo].[Rank] ([RankID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Rank_RankID]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Role_RoleID] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Role_RoleID]
GO
ALTER TABLE [dbo].[FavoriteShoes]  WITH CHECK ADD  CONSTRAINT [FK_FavoriteShoes_Customer_CumstomerID] FOREIGN KEY([CumstomerID])
REFERENCES [dbo].[Customer] ([CumstomerID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FavoriteShoes] CHECK CONSTRAINT [FK_FavoriteShoes_Customer_CumstomerID]
GO
ALTER TABLE [dbo].[FavoriteShoes]  WITH CHECK ADD  CONSTRAINT [FK_FavoriteShoes_ShoesDetails_ShoesDetailsId] FOREIGN KEY([ShoesDetailsId])
REFERENCES [dbo].[ShoesDetails] ([ShoesDetailsId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FavoriteShoes] CHECK CONSTRAINT [FK_FavoriteShoes_ShoesDetails_ShoesDetailsId]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_ShoesDetails_ShoesDetailsID] FOREIGN KEY([ShoesDetailsID])
REFERENCES [dbo].[ShoesDetails] ([ShoesDetailsId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_ShoesDetails_ShoesDetailsID]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Material_MaterialId] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[Material] ([MaterialId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Material_MaterialId]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Supplier_SupplierID] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([SupplierID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Supplier_SupplierID]
GO
ALTER TABLE [dbo].[ShoesDetails]  WITH CHECK ADD  CONSTRAINT [FK_ShoesDetails_Color_ColorID] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShoesDetails] CHECK CONSTRAINT [FK_ShoesDetails_Color_ColorID]
GO
ALTER TABLE [dbo].[ShoesDetails]  WITH CHECK ADD  CONSTRAINT [FK_ShoesDetails_Product_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShoesDetails] CHECK CONSTRAINT [FK_ShoesDetails_Product_ProductID]
GO
ALTER TABLE [dbo].[ShoesDetails]  WITH CHECK ADD  CONSTRAINT [FK_ShoesDetails_Sole_SoleID] FOREIGN KEY([SoleID])
REFERENCES [dbo].[Sole] ([SoleID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShoesDetails] CHECK CONSTRAINT [FK_ShoesDetails_Sole_SoleID]
GO
ALTER TABLE [dbo].[ShoesDetails]  WITH CHECK ADD  CONSTRAINT [FK_ShoesDetails_Style_StyleID] FOREIGN KEY([StyleID])
REFERENCES [dbo].[Style] ([StyleID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShoesDetails] CHECK CONSTRAINT [FK_ShoesDetails_Style_StyleID]
GO
ALTER TABLE [dbo].[ShoesDetails_Size]  WITH CHECK ADD  CONSTRAINT [FK_ShoesDetails_Size_ShoesDetails_ShoesDetailsId] FOREIGN KEY([ShoesDetailsId])
REFERENCES [dbo].[ShoesDetails] ([ShoesDetailsId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShoesDetails_Size] CHECK CONSTRAINT [FK_ShoesDetails_Size_ShoesDetails_ShoesDetailsId]
GO
ALTER TABLE [dbo].[ShoesDetails_Size]  WITH CHECK ADD  CONSTRAINT [FK_ShoesDetails_Size_Size_SizeID] FOREIGN KEY([SizeID])
REFERENCES [dbo].[Size] ([SizeID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShoesDetails_Size] CHECK CONSTRAINT [FK_ShoesDetails_Size_Size_SizeID]
GO

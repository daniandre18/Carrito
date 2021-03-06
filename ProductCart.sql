USE [productCart]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 17/09/2021 4:21:29 p. m. ******/
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
/****** Object:  Table [dbo].[Book]    Script Date: 17/09/2021 4:21:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](100) NULL,
	[Author] [varchar](100) NULL,
	[Category] [varchar](20) NOT NULL,
	[Price] [decimal](10, 2) NOT NULL,
	[CoverFileName] [varchar](100) NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 17/09/2021 4:21:30 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[CartId] [varchar](36) NOT NULL,
	[UserID] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartItems]    Script Date: 17/09/2021 4:21:30 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartItems](
	[CartItemId] [int] IDENTITY(1,1) NOT NULL,
	[CartId] [varchar](36) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK__CartItem__488B0B0AA0297D1C] PRIMARY KEY CLUSTERED 
(
	[CartItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 17/09/2021 4:21:30 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](20) NOT NULL,
 CONSTRAINT [PK__Categori__19093A2B46B8DFC9] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerOrderDetails]    Script Date: 17/09/2021 4:21:30 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerOrderDetails](
	[OrderDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [varchar](20) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK__Customer__9DD74DBD81D9221B] PRIMARY KEY CLUSTERED 
(
	[OrderDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerOrders]    Script Date: 17/09/2021 4:21:30 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerOrders](
	[OrderId] [varchar](20) NOT NULL,
	[UserID] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[CartTotal] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK__Customer__C3905BCF96C8F1E7] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserMaster]    Script Date: 17/09/2021 4:21:30 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMaster](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](20) NOT NULL,
	[LastName] [varchar](20) NOT NULL,
	[Username] [varchar](20) NOT NULL,
	[Password] [varchar](40) NOT NULL,
	[Gender] [varchar](6) NOT NULL,
	[UserTypeID] [int] NOT NULL,
 CONSTRAINT [PK__UserMast__1788CCAC2694A2ED] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 17/09/2021 4:21:30 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[UserTypeID] [int] IDENTITY(1,1) NOT NULL,
	[UserTypeName] [varchar](20) NOT NULL,
 CONSTRAINT [PK_UserType] PRIMARY KEY CLUSTERED 
(
	[UserTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wishlist]    Script Date: 17/09/2021 4:21:30 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wishlist](
	[WishlistId] [varchar](36) NOT NULL,
	[UserID] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_Wishlist] PRIMARY KEY CLUSTERED 
(
	[WishlistId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WishlistItems]    Script Date: 17/09/2021 4:21:30 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WishlistItems](
	[WishlistItemId] [int] IDENTITY(1,1) NOT NULL,
	[WishlistId] [varchar](36) NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK__Wishlist__171E21A16A5148A4] PRIMARY KEY CLUSTERED 
(
	[WishlistItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210505232525_InitialCreate', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210515021312_WishList', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210916165352_newMigration', N'5.0.5')
GO
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([BookID], [Title], [Author], [Category], [Price], [CoverFileName]) VALUES (1002, N'Fuego', N'Juan Gossain', N'Suspenso', CAST(44900.00 AS Decimal(10, 2)), N'd0e505c9-bcdf-4c4b-8956-36b6e787a9ab6df4a30a-e8a1-467d-9da6-d826989a9c606148028.jpg')
INSERT [dbo].[Book] ([BookID], [Title], [Author], [Category], [Price], [CoverFileName]) VALUES (1003, N'Una Noche en el museo', N'Anonimo', N'Drama', CAST(67000.00 AS Decimal(10, 2)), N'1f1a6c8b-a8bd-4fbb-a9bb-0046f6cff2d3fe476d1e-cdc3-404b-913e-a52889d5b9fcqq.jpg')
INSERT [dbo].[Book] ([BookID], [Title], [Author], [Category], [Price], [CoverFileName]) VALUES (1004, N'Historia de amor', N'Anonimo', N'Suspenso', CAST(54000.00 AS Decimal(10, 2)), N'c5b3305e-4ed4-41da-9517-ac4fdc68ca3ebb4382d6-4c3f-462f-bbbe-a7f88afc1436qq.jpg')
INSERT [dbo].[Book] ([BookID], [Title], [Author], [Category], [Price], [CoverFileName]) VALUES (1005, N'La ayuda', N'KATHRYN STOCKETT', N'Suspenso', CAST(45000.00 AS Decimal(10, 2)), N'8e0f5255-7efe-47d8-aeab-1985f0f18d7f921ff624-bcdb-4b48-8e5b-c3f34078bd11q3.jpg')
INSERT [dbo].[Book] ([BookID], [Title], [Author], [Category], [Price], [CoverFileName]) VALUES (1007, N'libro test', N'test', N'Suspenso', CAST(12500.00 AS Decimal(10, 2)), NULL)
SET IDENTITY_INSERT [dbo].[Book] OFF
GO
INSERT [dbo].[Cart] ([CartId], [UserID], [DateCreated]) VALUES (N'1166c120-e848-4a67-8459-bf26b3501ce9', 75922, CAST(N'2021-09-16T00:00:00.000' AS DateTime))
INSERT [dbo].[Cart] ([CartId], [UserID], [DateCreated]) VALUES (N'768b46b8-6931-4ad7-9fdf-ece99097e9b2', 7, CAST(N'2021-09-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Cart] ([CartId], [UserID], [DateCreated]) VALUES (N'8242f2fb-4aad-4718-a377-bd2a0582919a', 17933, CAST(N'2021-09-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Cart] ([CartId], [UserID], [DateCreated]) VALUES (N'92d55ba7-c972-4999-a8a6-2c0575c3fbe4', 0, CAST(N'2021-09-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Cart] ([CartId], [UserID], [DateCreated]) VALUES (N'9f369de7-78ad-4f89-aa96-45f56e7f4543', 6, CAST(N'2021-09-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Cart] ([CartId], [UserID], [DateCreated]) VALUES (N'ae762f5a-e037-4faa-b2ec-9fa37fe0b1d7', 72929, CAST(N'2021-09-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Cart] ([CartId], [UserID], [DateCreated]) VALUES (N'b0ab5052-5baa-40f8-a853-7bf11c89ba1d', 95854, CAST(N'2021-09-16T00:00:00.000' AS DateTime))
INSERT [dbo].[Cart] ([CartId], [UserID], [DateCreated]) VALUES (N'd974e02e-87e0-4fb6-881e-bd2af1c3242e', 2, CAST(N'2021-09-16T00:00:00.000' AS DateTime))
INSERT [dbo].[Cart] ([CartId], [UserID], [DateCreated]) VALUES (N'fbfae397-498f-4858-87f3-f422c61bb52f', 1, CAST(N'2021-09-16T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[CartItems] ON 

INSERT [dbo].[CartItems] ([CartItemId], [CartId], [ProductId], [Quantity]) VALUES (2, N'1166c120-e848-4a67-8459-bf26b3501ce9', 1, 2)
INSERT [dbo].[CartItems] ([CartItemId], [CartId], [ProductId], [Quantity]) VALUES (1002, N'b0ab5052-5baa-40f8-a853-7bf11c89ba1d', 1, 3)
INSERT [dbo].[CartItems] ([CartItemId], [CartId], [ProductId], [Quantity]) VALUES (1003, N'b0ab5052-5baa-40f8-a853-7bf11c89ba1d', 2, 1)
INSERT [dbo].[CartItems] ([CartItemId], [CartId], [ProductId], [Quantity]) VALUES (1004, N'b0ab5052-5baa-40f8-a853-7bf11c89ba1d', 3, 1)
INSERT [dbo].[CartItems] ([CartItemId], [CartId], [ProductId], [Quantity]) VALUES (1026, N'ae762f5a-e037-4faa-b2ec-9fa37fe0b1d7', 1, 3)
INSERT [dbo].[CartItems] ([CartItemId], [CartId], [ProductId], [Quantity]) VALUES (1028, N'ae762f5a-e037-4faa-b2ec-9fa37fe0b1d7', 1002, 1)
INSERT [dbo].[CartItems] ([CartItemId], [CartId], [ProductId], [Quantity]) VALUES (1029, N'ae762f5a-e037-4faa-b2ec-9fa37fe0b1d7', 1004, 2)
INSERT [dbo].[CartItems] ([CartItemId], [CartId], [ProductId], [Quantity]) VALUES (1031, N'8242f2fb-4aad-4718-a377-bd2a0582919a', 1005, 1)
INSERT [dbo].[CartItems] ([CartItemId], [CartId], [ProductId], [Quantity]) VALUES (1032, N'8242f2fb-4aad-4718-a377-bd2a0582919a', 1004, 1)
INSERT [dbo].[CartItems] ([CartItemId], [CartId], [ProductId], [Quantity]) VALUES (1033, N'8242f2fb-4aad-4718-a377-bd2a0582919a', 1002, 1)
SET IDENTITY_INSERT [dbo].[CartItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (1, N'Terror')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (2, N'Suspenso')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (3, N'Drama')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[CustomerOrderDetails] ON 

INSERT [dbo].[CustomerOrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity], [Price]) VALUES (1, N'104-693394', 1, 4, CAST(12000.00 AS Decimal(10, 2)))
INSERT [dbo].[CustomerOrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity], [Price]) VALUES (2, N'104-693394', 3, 5, CAST(112500.00 AS Decimal(10, 2)))
INSERT [dbo].[CustomerOrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity], [Price]) VALUES (3, N'179-643677', 1002, 2, CAST(44900.00 AS Decimal(10, 2)))
INSERT [dbo].[CustomerOrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity], [Price]) VALUES (4, N'179-643677', 3, 2, CAST(112500.00 AS Decimal(10, 2)))
INSERT [dbo].[CustomerOrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity], [Price]) VALUES (5, N'179-643677', 2, 2, CAST(43000.00 AS Decimal(10, 2)))
INSERT [dbo].[CustomerOrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity], [Price]) VALUES (6, N'179-643677', 1004, 2, CAST(54000.00 AS Decimal(10, 2)))
INSERT [dbo].[CustomerOrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity], [Price]) VALUES (7, N'179-643677', 1003, 1, CAST(67000.00 AS Decimal(10, 2)))
INSERT [dbo].[CustomerOrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity], [Price]) VALUES (8, N'179-643677', 1, 1, CAST(12000.00 AS Decimal(10, 2)))
INSERT [dbo].[CustomerOrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity], [Price]) VALUES (9, N'861-455382', 1, 3, CAST(12000.00 AS Decimal(10, 2)))
INSERT [dbo].[CustomerOrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity], [Price]) VALUES (10, N'861-455382', 1004, 2, CAST(54000.00 AS Decimal(10, 2)))
INSERT [dbo].[CustomerOrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity], [Price]) VALUES (11, N'861-455382', 3, 2, CAST(112500.00 AS Decimal(10, 2)))
INSERT [dbo].[CustomerOrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity], [Price]) VALUES (12, N'926-461984', 2, 3, CAST(43000.00 AS Decimal(10, 2)))
INSERT [dbo].[CustomerOrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity], [Price]) VALUES (13, N'926-461984', 1005, 2, CAST(45000.00 AS Decimal(10, 2)))
INSERT [dbo].[CustomerOrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity], [Price]) VALUES (14, N'926-461984', 1003, 2, CAST(67000.00 AS Decimal(10, 2)))
INSERT [dbo].[CustomerOrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity], [Price]) VALUES (15, N'891-336481', 1, 2, CAST(14500.00 AS Decimal(10, 2)))
INSERT [dbo].[CustomerOrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity], [Price]) VALUES (16, N'891-336481', 3, 1, CAST(112500.00 AS Decimal(10, 2)))
INSERT [dbo].[CustomerOrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity], [Price]) VALUES (17, N'891-336481', 2, 1, CAST(43000.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[CustomerOrderDetails] OFF
GO
INSERT [dbo].[CustomerOrders] ([OrderId], [UserID], [DateCreated], [CartTotal]) VALUES (N'104-693394', 1, CAST(N'2021-09-16T00:00:00.000' AS DateTime), CAST(610500.00 AS Decimal(10, 2)))
INSERT [dbo].[CustomerOrders] ([OrderId], [UserID], [DateCreated], [CartTotal]) VALUES (N'179-643677', 1, CAST(N'2021-09-16T00:00:00.000' AS DateTime), CAST(587800.00 AS Decimal(10, 2)))
INSERT [dbo].[CustomerOrders] ([OrderId], [UserID], [DateCreated], [CartTotal]) VALUES (N'861-455382', 2, CAST(N'2021-09-16T00:00:00.000' AS DateTime), CAST(369000.00 AS Decimal(10, 2)))
INSERT [dbo].[CustomerOrders] ([OrderId], [UserID], [DateCreated], [CartTotal]) VALUES (N'891-336481', 7, CAST(N'2021-09-17T00:00:00.000' AS DateTime), CAST(184500.00 AS Decimal(10, 2)))
INSERT [dbo].[CustomerOrders] ([OrderId], [UserID], [DateCreated], [CartTotal]) VALUES (N'926-461984', 2, CAST(N'2021-09-16T00:00:00.000' AS DateTime), CAST(353000.00 AS Decimal(10, 2)))
GO
SET IDENTITY_INSERT [dbo].[UserMaster] ON 

INSERT [dbo].[UserMaster] ([UserID], [FirstName], [LastName], [Username], [Password], [Gender], [UserTypeID]) VALUES (1, N'Danilo Andres ', N'Pineda', N'daniandre18', N'qwerty', N'Male', 1)
INSERT [dbo].[UserMaster] ([UserID], [FirstName], [LastName], [Username], [Password], [Gender], [UserTypeID]) VALUES (2, N'Claudia Andrea', N'Cardenas', N'clau', N'qwerty', N'Female', 2)
INSERT [dbo].[UserMaster] ([UserID], [FirstName], [LastName], [Username], [Password], [Gender], [UserTypeID]) VALUES (6, N'mariana', N'lopez', N'mlopez', N'Catalina123"', N'Female', 2)
INSERT [dbo].[UserMaster] ([UserID], [FirstName], [LastName], [Username], [Password], [Gender], [UserTypeID]) VALUES (7, N'samuel', N'pineda', N'sami18', N'Catalina123"', N'Male', 2)
SET IDENTITY_INSERT [dbo].[UserMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[UserType] ON 

INSERT [dbo].[UserType] ([UserTypeID], [UserTypeName]) VALUES (1, N'Admin')
INSERT [dbo].[UserType] ([UserTypeID], [UserTypeName]) VALUES (2, N'User')
SET IDENTITY_INSERT [dbo].[UserType] OFF
GO
INSERT [dbo].[Wishlist] ([WishlistId], [UserID], [DateCreated]) VALUES (N'3ed3d173-d27f-4df8-b25d-26aac160f2be', 2, CAST(N'2021-09-16T00:00:00.000' AS DateTime))
INSERT [dbo].[Wishlist] ([WishlistId], [UserID], [DateCreated]) VALUES (N'8c36a088-0811-4f42-a6ac-e4d3ccdf6501', 1, CAST(N'2021-09-16T00:00:00.000' AS DateTime))
INSERT [dbo].[Wishlist] ([WishlistId], [UserID], [DateCreated]) VALUES (N'ec94cc85-7d6e-4f70-89e8-a77439ae2b3a', 7, CAST(N'2021-09-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Wishlist] ([WishlistId], [UserID], [DateCreated]) VALUES (N'fbc0609e-0e01-4ecf-becb-cf4252195a38', 6, CAST(N'2021-09-17T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[WishlistItems] ON 

INSERT [dbo].[WishlistItems] ([WishlistItemId], [WishlistId], [ProductId]) VALUES (1005, N'3ed3d173-d27f-4df8-b25d-26aac160f2be', 1002)
INSERT [dbo].[WishlistItems] ([WishlistItemId], [WishlistId], [ProductId]) VALUES (1006, N'3ed3d173-d27f-4df8-b25d-26aac160f2be', 2)
SET IDENTITY_INSERT [dbo].[WishlistItems] OFF
GO

USE [master]
GO
/****** Object:  Database [PROJECTAssigment_SE1755_N6]    Script Date: 11/5/2023 10:42:00 AM ******/
CREATE DATABASE [PROJECTAssigment_SE1755_N6]
go
USE [PROJECTAssigment_SE1755_N6]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 11/5/2023 10:42:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[MenuID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
	[price] [decimal](10, 2) NULL,
	[Category] [varchar](50) NULL,
	[Image] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order Details]    Script Date: 11/5/2023 10:42:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order Details](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[MenuID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 11/5/2023 10:42:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TableID] [int] NOT NULL,
	[Status] [int] NULL,
	[OrderDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tables]    Script Date: 11/5/2023 10:42:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tables](
	[Tableid] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[code] [varchar](50) NULL,
	[urge] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Tableid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/5/2023 10:42:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[Password] [varchar](100) NOT NULL,
	[Roles] [varchar](10) NOT NULL,
	[PhoneNumber] [varchar](12) NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([MenuID], [Name], [price], [Category], [Image]) VALUES (1, N'Seafood Pizza', CAST(10.99 AS Decimal(10, 2)), N'pizza', N'images/pizza/1.jpg')
INSERT [dbo].[Menu] ([MenuID], [Name], [price], [Category], [Image]) VALUES (2, N'Grilled Meat Pizza', CAST(12.99 AS Decimal(10, 2)), N'pizza', N'images/pizza/2.jpg')
INSERT [dbo].[Menu] ([MenuID], [Name], [price], [Category], [Image]) VALUES (3, N'Fresh Garden Salad', CAST(7.99 AS Decimal(10, 2)), N'salad', N'images/salad/3.jpg')
INSERT [dbo].[Menu] ([MenuID], [Name], [price], [Category], [Image]) VALUES (4, N'Classic Caesar Salad', CAST(6.99 AS Decimal(10, 2)), N'salad', N'images/salad/4.jpg')
INSERT [dbo].[Menu] ([MenuID], [Name], [price], [Category], [Image]) VALUES (5, N'Iced Coffee', CAST(3.49 AS Decimal(10, 2)), N'drink', N'images/drink/5.jpg')
INSERT [dbo].[Menu] ([MenuID], [Name], [price], [Category], [Image]) VALUES (6, N'Lemonade', CAST(2.99 AS Decimal(10, 2)), N'drink', N'images/drink/6.jpg')
INSERT [dbo].[Menu] ([MenuID], [Name], [price], [Category], [Image]) VALUES (7, N'Classic Beef Burger', CAST(9.99 AS Decimal(10, 2)), N'burger', N'images/burger/7.jpg')
INSERT [dbo].[Menu] ([MenuID], [Name], [price], [Category], [Image]) VALUES (8, N'Chicken and Avocado Burger', CAST(10.49 AS Decimal(10, 2)), N'burger', N'images/burger/8.jpg')
INSERT [dbo].[Menu] ([MenuID], [Name], [price], [Category], [Image]) VALUES (9, N'Chocolate Fudge Cake', CAST(5.99 AS Decimal(10, 2)), N'dessert', N'images/dessert/9.jpg')
INSERT [dbo].[Menu] ([MenuID], [Name], [price], [Category], [Image]) VALUES (10, N'Strawberry Cheesecake', CAST(4.99 AS Decimal(10, 2)), N'dessert', N'images/dessert/10.jpg')
INSERT [dbo].[Menu] ([MenuID], [Name], [price], [Category], [Image]) VALUES (11, N'Vegetable Stir-Fry', CAST(8.49 AS Decimal(10, 2)), N'other', N'images/other/11.jpg')
INSERT [dbo].[Menu] ([MenuID], [Name], [price], [Category], [Image]) VALUES (15, N'Mushroom Risotto', CAST(7.99 AS Decimal(10, 2)), N'other', N'images/other/12.jpg')
INSERT [dbo].[Menu] ([MenuID], [Name], [price], [Category], [Image]) VALUES (16, N'Test', CAST(32.80 AS Decimal(10, 2)), N'drink', N'images/product-4-161x162.jpg')
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[Order Details] ON 

INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (1, 14, 1, 9)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (2, 14, 2, 9)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (3, 14, 3, 9)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (4, 15, 1, 1)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (5, 15, 6, 3)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (6, 15, 7, 2)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (7, 16, 1, 1)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (8, 16, 2, 3)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (9, 16, 3, 2)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (10, 17, 1, 1)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (11, 17, 2, 2)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (12, 17, 3, 1)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (13, 19, 1, 3)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (14, 19, 2, 4)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (15, 20, 1, 1)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (16, 20, 2, 1)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (35, 22, 1, 1)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (36, 22, 2, 1)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (37, 22, 3, 1)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (38, 23, 1, 1)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (39, 23, 2, 2)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (40, 24, 1, 1)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (41, 24, 2, 2)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (42, 24, 3, 2)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (49, 27, 1, 1)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (50, 27, 2, 1)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (51, 27, 3, 1)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (52, 28, 1, 1)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (53, 28, 2, 1)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (54, 25, 1, 3)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (55, 25, 2, 2)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (56, 25, 3, 1)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (59, 26, 1, 1)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (60, 26, 2, 3)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (61, 26, 2, 4)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (62, 29, 1, 1)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (63, 29, 2, 2)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (64, 29, 3, 2)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (65, 30, 1, 1)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (66, 30, 2, 1)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (67, 30, 3, 1)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (68, 31, 1, 1)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (69, 31, 2, 1)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (70, 31, 3, 1)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (72, 32, 2, 2)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (73, 32, 3, 1)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (74, 33, 6, 3)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (75, 33, 4, 5)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (78, 35, 1, 1)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (79, 36, 2, 1)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (80, 34, 1, 1)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (81, 34, 2, 2)
INSERT [dbo].[Order Details] ([ID], [OrderID], [MenuID], [Quantity]) VALUES (82, 34, 3, 1)
SET IDENTITY_INSERT [dbo].[Order Details] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([ID], [TableID], [Status], [OrderDate]) VALUES (14, 1, 1, CAST(N'2023-11-01T10:39:08.000' AS DateTime))
INSERT [dbo].[Orders] ([ID], [TableID], [Status], [OrderDate]) VALUES (15, 1, 1, CAST(N'2023-11-01T10:46:13.000' AS DateTime))
INSERT [dbo].[Orders] ([ID], [TableID], [Status], [OrderDate]) VALUES (16, 1, 1, CAST(N'2023-11-01T10:47:07.000' AS DateTime))
INSERT [dbo].[Orders] ([ID], [TableID], [Status], [OrderDate]) VALUES (17, 1, 1, CAST(N'2023-11-01T10:51:18.000' AS DateTime))
INSERT [dbo].[Orders] ([ID], [TableID], [Status], [OrderDate]) VALUES (19, 9, 1, CAST(N'2023-11-01T13:07:17.000' AS DateTime))
INSERT [dbo].[Orders] ([ID], [TableID], [Status], [OrderDate]) VALUES (20, 5, 1, CAST(N'2023-11-01T17:25:29.000' AS DateTime))
INSERT [dbo].[Orders] ([ID], [TableID], [Status], [OrderDate]) VALUES (21, 5, 1, CAST(N'2023-11-01T20:04:30.000' AS DateTime))
INSERT [dbo].[Orders] ([ID], [TableID], [Status], [OrderDate]) VALUES (22, 5, 1, CAST(N'2023-11-01T22:49:39.000' AS DateTime))
INSERT [dbo].[Orders] ([ID], [TableID], [Status], [OrderDate]) VALUES (23, 8, 1, CAST(N'2023-11-02T11:21:46.000' AS DateTime))
INSERT [dbo].[Orders] ([ID], [TableID], [Status], [OrderDate]) VALUES (24, 8, 1, CAST(N'2023-11-02T11:25:32.000' AS DateTime))
INSERT [dbo].[Orders] ([ID], [TableID], [Status], [OrderDate]) VALUES (25, 8, 2, CAST(N'2023-11-02T11:30:04.000' AS DateTime))
INSERT [dbo].[Orders] ([ID], [TableID], [Status], [OrderDate]) VALUES (26, 1, 1, CAST(N'2023-11-02T14:38:47.000' AS DateTime))
INSERT [dbo].[Orders] ([ID], [TableID], [Status], [OrderDate]) VALUES (27, 2, 1, CAST(N'2023-11-02T14:40:49.000' AS DateTime))
INSERT [dbo].[Orders] ([ID], [TableID], [Status], [OrderDate]) VALUES (28, 3, 1, CAST(N'2023-11-02T14:41:29.000' AS DateTime))
INSERT [dbo].[Orders] ([ID], [TableID], [Status], [OrderDate]) VALUES (29, 4, 1, CAST(N'2023-11-02T20:50:04.000' AS DateTime))
INSERT [dbo].[Orders] ([ID], [TableID], [Status], [OrderDate]) VALUES (30, 4, 1, CAST(N'2023-11-02T21:03:02.000' AS DateTime))
INSERT [dbo].[Orders] ([ID], [TableID], [Status], [OrderDate]) VALUES (31, 1, 1, CAST(N'2023-11-02T21:08:02.000' AS DateTime))
INSERT [dbo].[Orders] ([ID], [TableID], [Status], [OrderDate]) VALUES (32, 1, 1, CAST(N'2023-11-02T21:09:06.000' AS DateTime))
INSERT [dbo].[Orders] ([ID], [TableID], [Status], [OrderDate]) VALUES (33, 1, 1, CAST(N'2023-11-02T22:20:38.000' AS DateTime))
INSERT [dbo].[Orders] ([ID], [TableID], [Status], [OrderDate]) VALUES (34, 2, 0, CAST(N'2023-11-02T22:23:58.000' AS DateTime))
INSERT [dbo].[Orders] ([ID], [TableID], [Status], [OrderDate]) VALUES (35, 3, 2, CAST(N'2023-11-02T22:24:10.000' AS DateTime))
INSERT [dbo].[Orders] ([ID], [TableID], [Status], [OrderDate]) VALUES (36, 4, 3, CAST(N'2023-11-02T22:24:41.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
INSERT [dbo].[Tables] ([Tableid], [Status], [code], [urge]) VALUES (1, 0, NULL, 0)
INSERT [dbo].[Tables] ([Tableid], [Status], [code], [urge]) VALUES (2, 1, N'D112', 1)
INSERT [dbo].[Tables] ([Tableid], [Status], [code], [urge]) VALUES (3, 1, N'Y7RG', NULL)
INSERT [dbo].[Tables] ([Tableid], [Status], [code], [urge]) VALUES (4, 1, N'B3OE', 0)
INSERT [dbo].[Tables] ([Tableid], [Status], [code], [urge]) VALUES (5, 0, NULL, NULL)
INSERT [dbo].[Tables] ([Tableid], [Status], [code], [urge]) VALUES (6, 0, NULL, NULL)
INSERT [dbo].[Tables] ([Tableid], [Status], [code], [urge]) VALUES (7, 0, NULL, NULL)
INSERT [dbo].[Tables] ([Tableid], [Status], [code], [urge]) VALUES (8, 1, N'V8L9', 1)
INSERT [dbo].[Tables] ([Tableid], [Status], [code], [urge]) VALUES (9, 0, NULL, NULL)
INSERT [dbo].[Tables] ([Tableid], [Status], [code], [urge]) VALUES (10, 0, NULL, NULL)
INSERT [dbo].[Tables] ([Tableid], [Status], [code], [urge]) VALUES (11, 0, NULL, NULL)
INSERT [dbo].[Tables] ([Tableid], [Status], [code], [urge]) VALUES (12, 0, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [UserName], [Password], [Roles], [PhoneNumber], [status]) VALUES (1, N'admin@gmail.com', N'123', N'Admin', N'0913587267', 1)
INSERT [dbo].[Users] ([ID], [UserName], [Password], [Roles], [PhoneNumber], [status]) VALUES (2, N'staff1@gmail.com', N'test', N'Staff', N'0913587267', 0)
INSERT [dbo].[Users] ([ID], [UserName], [Password], [Roles], [PhoneNumber], [status]) VALUES (3, N'staff2@gmail.com', N'staff2', N'Staff', N'0913587267', 1)
INSERT [dbo].[Users] ([ID], [UserName], [Password], [Roles], [PhoneNumber], [status]) VALUES (11, N'laingoclam3112@gmail.com', N'bcl', N'Staff', N'0984068859', 0)
INSERT [dbo].[Users] ([ID], [UserName], [Password], [Roles], [PhoneNumber], [status]) VALUES (12, N'trong@gmail.com', N'abc123', N'Staff', N'0984068859', 1)
INSERT [dbo].[Users] ([ID], [UserName], [Password], [Roles], [PhoneNumber], [status]) VALUES (13, N'laingoclam311202@gmail.com', N'123', N'Staff', N'0984068859', 1)
INSERT [dbo].[Users] ([ID], [UserName], [Password], [Roles], [PhoneNumber], [status]) VALUES (14, N'khois2p@gmail.com', N'abc', N'Staff', N'0984068859', 1)
INSERT [dbo].[Users] ([ID], [UserName], [Password], [Roles], [PhoneNumber], [status]) VALUES (16, N'staff007@gmail.com', N'abc', N'Staff', N'0878532644', 0)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[Tables] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[Order Details]  WITH CHECK ADD  CONSTRAINT [FK_Menu] FOREIGN KEY([MenuID])
REFERENCES [dbo].[Menu] ([MenuID])
GO
ALTER TABLE [dbo].[Order Details] CHECK CONSTRAINT [FK_Menu]
GO
ALTER TABLE [dbo].[Order Details]  WITH CHECK ADD  CONSTRAINT [FK_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[Order Details] CHECK CONSTRAINT [FK_Orders]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Tables] FOREIGN KEY([TableID])
REFERENCES [dbo].[Tables] ([Tableid])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Tables]
GO
USE [master]
GO
ALTER DATABASE [PROJECTAssigment_SE1755_N6] SET  READ_WRITE 
GO

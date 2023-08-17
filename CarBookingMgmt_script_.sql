USE [CarBookingManagement]
GO
/****** Object:  Table [dbo].[tblBookingDetails]    Script Date: 8/17/2023 11:32:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblBookingDetails](
	[carID] [int] NOT NULL,
	[bookingID] [int] NOT NULL,
	[bookingPrice] [decimal](10, 4) NULL,
	[bookingDate] [datetime] NULL,
	[bookingExpired] [datetime] NULL,
	[returnStatus] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[carID] ASC,
	[bookingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBookings]    Script Date: 8/17/2023 11:32:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBookings](
	[bookingID] [int] IDENTITY(1,1) NOT NULL,
	[createdDate] [datetime] NULL,
	[totalPrice] [decimal](10, 4) NULL,
	[userID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[bookingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBrands]    Script Date: 8/17/2023 11:32:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBrands](
	[brandID] [int] NOT NULL,
	[brandName] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[brandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCars]    Script Date: 8/17/2023 11:32:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCars](
	[carID] [int] IDENTITY(1,1) NOT NULL,
	[carName] [varchar](100) NULL,
	[carPlate] [varchar](255) NULL,
	[pricePerHour] [decimal](10, 4) NULL,
	[brandID] [int] NULL,
	[modelID] [int] NOT NULL,
	[isDeleted] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[carID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblModels]    Script Date: 8/17/2023 11:32:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblModels](
	[modelID] [int] NOT NULL,
	[modelName] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[modelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 8/17/2023 11:32:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsers](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[fullName] [varchar](255) NULL,
	[email] [varchar](75) NOT NULL,
	[password] [varchar](25) NOT NULL,
	[address] [varchar](255) NULL,
	[roleID] [varchar](10) NULL,
	[isDeleted] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblBookingDetails] ([carID], [bookingID], [bookingPrice], [bookingDate], [bookingExpired], [returnStatus]) VALUES (1, 1, CAST(30.0000 AS Decimal(10, 4)), CAST(N'2023-08-16T00:00:00.000' AS DateTime), CAST(N'2023-08-18T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[tblBookingDetails] ([carID], [bookingID], [bookingPrice], [bookingDate], [bookingExpired], [returnStatus]) VALUES (2, 2, CAST(25.0000 AS Decimal(10, 4)), CAST(N'2023-08-17T00:00:00.000' AS DateTime), CAST(N'2023-08-19T00:00:00.000' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[tblBookings] ON 

INSERT [dbo].[tblBookings] ([bookingID], [createdDate], [totalPrice], [userID]) VALUES (1, CAST(N'2023-08-16T00:00:00.000' AS DateTime), CAST(50.0000 AS Decimal(10, 4)), 1)
INSERT [dbo].[tblBookings] ([bookingID], [createdDate], [totalPrice], [userID]) VALUES (2, CAST(N'2023-08-17T00:00:00.000' AS DateTime), CAST(75.0000 AS Decimal(10, 4)), 2)
SET IDENTITY_INSERT [dbo].[tblBookings] OFF
GO
INSERT [dbo].[tblBrands] ([brandID], [brandName]) VALUES (1, N'Toyota')
INSERT [dbo].[tblBrands] ([brandID], [brandName]) VALUES (2, N'Honda')
INSERT [dbo].[tblBrands] ([brandID], [brandName]) VALUES (3, N'Ford')
GO
SET IDENTITY_INSERT [dbo].[tblCars] ON 

INSERT [dbo].[tblCars] ([carID], [carName], [carPlate], [pricePerHour], [brandID], [modelID], [isDeleted]) VALUES (1, N'Toyota Camry', N'ABC123', CAST(30.0000 AS Decimal(10, 4)), 1, 1, 0)
INSERT [dbo].[tblCars] ([carID], [carName], [carPlate], [pricePerHour], [brandID], [modelID], [isDeleted]) VALUES (2, N'Honda Civic', N'XYZ789', CAST(25.0000 AS Decimal(10, 4)), 2, 2, 0)
INSERT [dbo].[tblCars] ([carID], [carName], [carPlate], [pricePerHour], [brandID], [modelID], [isDeleted]) VALUES (3, N'Ford Focus', N'LMN456', CAST(28.0000 AS Decimal(10, 4)), 3, 3, 0)
SET IDENTITY_INSERT [dbo].[tblCars] OFF
GO
INSERT [dbo].[tblModels] ([modelID], [modelName]) VALUES (1, N'4 seats')
INSERT [dbo].[tblModels] ([modelID], [modelName]) VALUES (2, N'5 seats')
INSERT [dbo].[tblModels] ([modelID], [modelName]) VALUES (3, N'16 seats')
GO
SET IDENTITY_INSERT [dbo].[tblUsers] ON 

INSERT [dbo].[tblUsers] ([userID], [fullName], [email], [password], [address], [roleID], [isDeleted]) VALUES (1, N'John Doe', N'john@example.com', N'password123', N'123 Main St', N'user', 0)
INSERT [dbo].[tblUsers] ([userID], [fullName], [email], [password], [address], [roleID], [isDeleted]) VALUES (2, N'Jane Smith', N'jane@example.com', N'pass456', N'456 Elm St', N'admin', 0)
SET IDENTITY_INSERT [dbo].[tblUsers] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tblCars__F852FE3F95157C32]    Script Date: 8/17/2023 11:32:11 AM ******/
ALTER TABLE [dbo].[tblCars] ADD UNIQUE NONCLUSTERED 
(
	[carPlate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tblUsers__AB6E6164695DB5A3]    Script Date: 8/17/2023 11:32:11 AM ******/
ALTER TABLE [dbo].[tblUsers] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblBookingDetails]  WITH CHECK ADD  CONSTRAINT [FKtblBooking382260] FOREIGN KEY([carID])
REFERENCES [dbo].[tblCars] ([carID])
GO
ALTER TABLE [dbo].[tblBookingDetails] CHECK CONSTRAINT [FKtblBooking382260]
GO
ALTER TABLE [dbo].[tblBookingDetails]  WITH CHECK ADD  CONSTRAINT [FKtblBooking505768] FOREIGN KEY([bookingID])
REFERENCES [dbo].[tblBookings] ([bookingID])
GO
ALTER TABLE [dbo].[tblBookingDetails] CHECK CONSTRAINT [FKtblBooking505768]
GO
ALTER TABLE [dbo].[tblBookings]  WITH CHECK ADD  CONSTRAINT [FKtblBooking558133] FOREIGN KEY([userID])
REFERENCES [dbo].[tblUsers] ([userID])
GO
ALTER TABLE [dbo].[tblBookings] CHECK CONSTRAINT [FKtblBooking558133]
GO
ALTER TABLE [dbo].[tblCars]  WITH CHECK ADD  CONSTRAINT [FKtblCars232816] FOREIGN KEY([modelID])
REFERENCES [dbo].[tblModels] ([modelID])
GO
ALTER TABLE [dbo].[tblCars] CHECK CONSTRAINT [FKtblCars232816]
GO
ALTER TABLE [dbo].[tblCars]  WITH CHECK ADD  CONSTRAINT [FKtblCars513690] FOREIGN KEY([brandID])
REFERENCES [dbo].[tblBrands] ([brandID])
GO
ALTER TABLE [dbo].[tblCars] CHECK CONSTRAINT [FKtblCars513690]
GO

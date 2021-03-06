USE [Cinema]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 5.08.2021 23:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[customerID] [int] IDENTITY(1,1) NOT NULL,
	[customerFullName] [nvarchar](70) NOT NULL,
	[customerGender] [bit] NOT NULL,
	[customerType] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Halls]    Script Date: 5.08.2021 23:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Halls](
	[hallID] [int] IDENTITY(1,1) NOT NULL,
	[hallName] [varchar](20) NULL,
	[seatCapacity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[hallID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Managers]    Script Date: 5.08.2021 23:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Managers](
	[managerUserName] [varchar](50) NOT NULL,
	[managerPassword] [varchar](50) NOT NULL,
	[managerName] [varchar](50) NOT NULL,
	[managerSurname] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Managers] PRIMARY KEY CLUSTERED 
(
	[managerUserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 5.08.2021 23:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[movieID] [int] IDENTITY(1,1) NOT NULL,
	[movieName] [varchar](50) NOT NULL,
	[movieDirector] [nvarchar](50) NOT NULL,
	[movieDuration] [time](7) NOT NULL,
 CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED 
(
	[movieID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sessions]    Script Date: 5.08.2021 23:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sessions](
	[sessionID] [int] IDENTITY(1,1) NOT NULL,
	[movieID] [int] NOT NULL,
	[hallID] [int] NOT NULL,
	[time] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 5.08.2021 23:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[staffUserName] [varchar](50) NOT NULL,
	[staffPassword] [varchar](50) NOT NULL,
	[staffName] [varchar](50) NOT NULL,
	[staffSurname] [varchar](50) NOT NULL,
	[addedManageruserName] [varchar](50) NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[staffUserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tickets]    Script Date: 5.08.2021 23:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tickets](
	[ticketID] [int] IDENTITY(1,1) NOT NULL,
	[ticketCustomerID] [int] NOT NULL,
	[sessionID] [int] NOT NULL,
	[seatNo] [int] NOT NULL,
	[ticketPrice] [smallmoney] NULL
) ON [PRIMARY]
GO

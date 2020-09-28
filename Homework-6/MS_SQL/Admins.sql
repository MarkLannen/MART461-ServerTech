USE [Esports]
GO

/****** Object:  Table [dbo].[Admins]    Script Date: 9/27/2020 7:56:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Admins](
	[FirstName] [varchar](100) NULL,
	[LastName] [varchar](100) NULL,
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[Addres1] [varchar](100) NULL,
	[Address2] [varchar](100) NULL,
	[City] [varchar](100) NULL,
	[StateID] [int] NULL,
	[Zip] [varchar](14) NULL,
	[Country] [varchar](50) NULL,
	[Email] [varchar](100) NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varbinary](50) NULL,
	[GamerTag] [varchar](50) NULL,
	[GamesPlayed] [varchar](50) NULL,
	[SubscribeToCorrespondence] [varchar](4) NULL
) ON [PRIMARY]
GO


USE [Esports]
GO

/****** Object:  Table [dbo].[Players]    Script Date: 9/27/2020 7:57:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Players](
	[FirstName] [varchar](100) NULL,
	[LastName] [varchar](100) NULL,
	[PlayerID] [int] IDENTITY(1,1) NOT NULL,
	[Address1] [varchar](100) NULL,
	[Address2] [varchar](100) NULL,
	[City] [varchar](100) NULL,
	[StateID] [int] NULL,
	[Zip] [varchar](14) NULL,
	[Country] [varchar](50) NULL,
	[Email] [varchar](100) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varbinary](50) NOT NULL,
	[GamerTag] [varchar](50) NULL,
	[GamesPlayed] [varchar](50) NULL,
	[SubscribeToCorrespondence] [varchar](4) NULL,
 CONSTRAINT [PK_Players] PRIMARY KEY CLUSTERED 
(
	[PlayerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


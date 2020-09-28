USE [Esports]
GO

/****** Object:  Table [dbo].[GamesPlayed]    Script Date: 9/27/2020 7:57:03 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[GamesPlayed](
	[GameName] [varchar](100) NOT NULL,
	[GameID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO


USE [Tafsir]
GO

/****** Object:  Table [dbo].[TbExamDetail]    Script Date: 7/20/2019 6:42:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TbExamDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ExmH_ID] [int] NOT NULL,
	[Qs_id] [int] NOT NULL,
	[Ans] [int] NOT NULL
) ON [PRIMARY]
GO



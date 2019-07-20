USE [Tafsir]
GO

/****** Object:  Table [dbo].[TbQuestion]    Script Date: 7/20/2019 6:42:32 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TbQuestion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[exam_id] [int] NOT NULL,
	[question] [nvarchar](max) NOT NULL,
	[an1] [nvarchar](250) NOT NULL,
	[an2] [nvarchar](250) NOT NULL,
	[an3] [nvarchar](250) NOT NULL,
	[an4] [nvarchar](250) NOT NULL,
	[currect_ans] [tinyint] NOT NULL,
	[pos_score] [numeric](4, 2) NOT NULL,
	[neg_score] [numeric](4, 2) NOT NULL,
	[qs_status] [int] NOT NULL,
 CONSTRAINT [PK_TbQuestion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[TbQuestion] ADD  CONSTRAINT [DF_TbQuestion_qs_status]  DEFAULT ((0)) FOR [qs_status]
GO



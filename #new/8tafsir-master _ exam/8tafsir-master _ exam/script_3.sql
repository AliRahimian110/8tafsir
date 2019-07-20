USE [Tafsir]
GO

/****** Object:  Table [dbo].[TbExamHeader]    Script Date: 7/20/2019 6:42:23 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TbExamHeader](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NOT NULL,
	[exam_id] [int] NOT NULL,
	[start_at] [datetime] NOT NULL,
	[end_at] [datetime] NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_TbExamHeader] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[TbExamHeader] ADD  CONSTRAINT [DF_TbExamHeader_status]  DEFAULT ((0)) FOR [status]
GO



USE [Tafsir]
GO

/****** Object:  Table [dbo].[TbExam]    Script Date: 7/20/2019 6:42:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TbExam](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[exm_title] [nvarchar](250) NOT NULL,
	[course_id] [int] NOT NULL,
	[exm_length] [int] NOT NULL,
	[Exm_date] [char](10) NOT NULL,
	[exm_time] [nvarchar](20) NOT NULL,
	[exm_status] [int] NOT NULL,
 CONSTRAINT [PK_TbExam] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[TbExam] ADD  CONSTRAINT [DF_TbExam_exp_status]  DEFAULT ((0)) FOR [exm_status]
GO



USE [Tafsir]
GO

/****** Object:  StoredProcedure [dbo].[SPSelectExam]    Script Date: 7/20/2019 6:40:58 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SPSelectExam]
@user int
AS
BEGIN
	select ID,exm_title+' '+title as title from vw_exam
END
GO



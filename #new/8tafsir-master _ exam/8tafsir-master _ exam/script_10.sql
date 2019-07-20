USE [Tafsir]
GO

/****** Object:  StoredProcedure [dbo].[SPExamheaderEndSet]    Script Date: 7/20/2019 6:40:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[SPExamheaderEndSet]
@examh_id		int
AS
BEGIN

BEGIN Try
BEGIN Tran t1

	update
	TbExamHeader 
	set end_at = GETDATE()
	where id = @examh_id
	select @examh_id

	Commit Tran t1
END Try
BEGIN Catch
	SELECT -1
	Rollback
END Catch
END
GO



USE [Tafsir]
GO

/****** Object:  StoredProcedure [dbo].[SPExamheaderSet]    Script Date: 7/20/2019 6:40:20 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SPExamheaderSet]
@student_id	    int
,@exam_id		int
AS
BEGIN

BEGIN Try
BEGIN Tran t1

	if exists (select 1 from TbExamHeader where exam_id = @exam_id and student_id= @student_id and end_at is not null)
	begin
	select -2
	return
	end

	insert into TbExamHeader 
	( [student_id], [exam_id], [start_at])
	values
	(@student_id,@exam_id,getdate())
	Select SCOPE_IDENTITY();
	Commit Tran t1
END Try
BEGIN Catch
	SELECT -1
	Rollback
END Catch
END
GO



USE [Tafsir]
GO

/****** Object:  StoredProcedure [dbo].[SPExamdetailSet]    Script Date: 7/20/2019 6:40:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SPExamdetailSet]
@examH_id		int
,@qs_id			int		
,@ans			int
AS
BEGIN

BEGIN Try
BEGIN Tran t1
	delete from TbExamDetail where ExmH_ID =  @examH_id and Qs_id = @qs_id

	insert into TbExamDetail
	( [ExmH_ID], [Qs_id], [Ans] )
	values
	(@examH_id,@qs_id,@ans)
	Select SCOPE_IDENTITY();

	Commit Tran t1
END Try
BEGIN Catch
	SELECT -1
	Rollback
END Catch
END
GO



USE [Tafsir]
GO

/****** Object:  StoredProcedure [dbo].[SPExamSet]    Script Date: 7/20/2019 6:40:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SPExamSet]
@Id		int
,@exam_title		nvarchar(500)
,@course_id		int
,@len		int
,@date		char(10)
,@time			nvarchar(20)

--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	IF(@Id>0)
	BEGIN
		UPDATE [TbExam] Set 

		exm_title = @exam_title ,
		course_id = @course_id	,
		exm_length = @len		,
		Exm_date = @date		,
		exm_time = @time		

		WHERE [Id] = @Id

		SELECT @Id
	END

	Else 	IF(@Id=0)
	BEGIN

		INSERT INTO [TbExam] 
		       (exm_title		,course_id	,exm_length	,Exm_date	,exm_time)
		VALUES ( @exam_title	,@course_id	,@len		,@date		,@time		);
		Select SCOPE_IDENTITY();

	END
	Else 	IF(@Id < 0)
	BEGIN
		UPDATE [TbExam] Set 

		exm_status = -1

		WHERE [Id] = -1 * @Id

		select -1 * @Id

	END

	Commit Tran t1
END Try
BEGIN Catch
	SELECT -1
	Rollback
END Catch

END
GO



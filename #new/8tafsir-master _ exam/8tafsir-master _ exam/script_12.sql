USE [Tafsir]
GO

/****** Object:  StoredProcedure [dbo].[SPQuestionSet]    Script Date: 7/20/2019 6:40:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create PROCEDURE [dbo].[SPQuestionSet]
@Id		int
,@exam_id		int
,@question		nvarchar(max)
,@ans_1			nvarchar(500)
,@ans_2			nvarchar(500)
,@ans_3			nvarchar(500)
,@ans_4			nvarchar(500)
,@ans_c			int
,@p_score		numeric(4,2)
,@n_score		numeric(4,2)

--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	IF(@Id>0)
	BEGIN
		UPDATE [TbQuestion] Set 
	[exam_id]			=@exam_id	
 , [question]			=@question	
 , [an1]				=@ans_1		
 , [an2]				=@ans_2		
 , [an3]				=@ans_3		
 , [an4]				=@ans_4		
 , [currect_ans]		=@ans_c		
 , [pos_score]			=@p_score	
 , [neg_score]			=@n_score	


		WHERE [Id] = @Id

		SELECT @Id
	END

	Else 	IF(@Id=0)
	BEGIN

		INSERT INTO [TbQuestion] 
		   (  [exam_id], [question], [an1], [an2], [an3], [an4], [currect_ans], [pos_score], [neg_score]   )
		VALUES 
		( 
		@exam_id			,@question			,@ans_1				,@ans_2				,@ans_3				,@ans_4				,@ans_c				,@p_score			,@n_score			
		);
		Select SCOPE_IDENTITY();

	END
	Else 	IF(@Id < 0)
	BEGIN
		UPDATE [TbQuestion] Set 

		[qs_status] = -1

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



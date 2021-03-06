USE [Tafsir]
GO
/****** Object:  StoredProcedure [dbo].[SPBookNameDel]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPBookNameDel]
@ID int
--WITH ENCRYPTION
AS
BEGIN

SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	DELETE [TbBookName] WHERE [ID] = @ID

	SELECT @@ROWCOUNT AS Count;

	Commit Tran t1
END Try
BEGIN Catch
	SELECT -1
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPBookNameGet]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPBookNameGet]
@ID int
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT [ID], [BookName], [Writer], [Translator], [Publisher], [Active], [Language], [Pages], [Viewed], [InsertUserId], [InsertDate], [Keyword], [Description]
	FROM [Tafsir].[dbo].[TbBookName] 
	WHERE [ID] = @ID
	ORDER BY [ID]

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPBookNameLoad]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPBookNameLoad]
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT [ID], [BookName], [Writer], [Translator], [Publisher], [Active], [Language], [Pages], [Viewed], [InsertUserId], [InsertDate], [Keyword], [Description]
	FROM [Tafsir].[dbo].[TbBookName] 
	ORDER BY [ID]

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPBookNameNew]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPBookNameNew]
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT top 10 [ID], [BookName], [Writer], [Translator], [Publisher], [Active], [Language], [Pages], [Viewed], [InsertUserId], [InsertDate], [Keyword], [Description]
	FROM [Tafsir].[dbo].[TbBookName] 
	ORDER BY [ID] Desc

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPBookNameSearch]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPBookNameSearch]
@ID		int
,@BookName		[nvarchar] (200)
,@Writer		[nvarchar] (200)
,@Translator		[nvarchar] (200)
,@Publisher		[nvarchar] (200)
,@Active		bit
,@Language		[nvarchar] (20)
,@Pages		int
,@Viewed		int
,@InsertUserId		int
,@InsertDate		[varchar] (10)
,@Keyword		[nvarchar] (max)
,@Description		[nvarchar] (max)
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	IF(@ID>0)
	BEGIN
		--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
		SELECT [ID], [BookName], [Writer], [Translator], [Publisher], [Active], [Language], [Pages], [Viewed], [InsertUserId], [InsertDate], [Keyword], [Description]
		FROM [Tafsir].[dbo].[TbBookName] 
		WHERE [ID] = @ID
	END

	ELSE
	BEGIN
		SELECT [ID], [BookName], [Writer], [Translator], [Publisher], [Active], [Language], [Pages], [Viewed], [InsertUserId], [InsertDate], [Keyword], [Description]
		FROM [Tafsir].[dbo].[TbBookName] 
		WHERE [BookName] 		Like @BookName
		AND   [Writer] 	Like @Writer
		AND   [Translator] 	Like @Translator
		AND   [Publisher] 	Like @Publisher
		AND   [Active] 	Like @Active
		AND   [Language] 	Like @Language
		AND   [Pages] 	Like @Pages
		AND   [Viewed] 	Like @Viewed
		AND   [InsertUserId] 	Like @InsertUserId
		AND   [InsertDate] 	Like @InsertDate
		AND   [Keyword] 	Like @Keyword
		AND   [Description] 	Like @Description
		ORDER BY [ID]
	END

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPBookNameSet]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPBookNameSet]
@ID		int
,@BookName		[nvarchar] (200)
,@Writer		[nvarchar] (200)
,@Translator		[nvarchar] (200)
,@Publisher		[nvarchar] (200)
,@Active		bit
,@Language		[nvarchar] (20)
,@Pages		int
,@Viewed		int
,@InsertUserId		int
,@InsertDate		[varchar] (10)
,@Keyword		[nvarchar] (max)
,@Description		[nvarchar] (max)
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	IF(@ID>0)
	BEGIN
		UPDATE [TbBookName] Set [BookName] = @BookName
			, [Writer] = @Writer
			, [Translator] = @Translator
			, [Publisher] = @Publisher
			, [Active] = @Active
			, [Language] = @Language
			, [Pages] = @Pages
			, [Viewed] = @Viewed
			, [InsertUserId] = @InsertUserId
			, [InsertDate] = @InsertDate
			, [Keyword] = @Keyword
			, [Description] = @Description
		WHERE [ID] = @ID

		SELECT @ID
	END

	Else
	BEGIN

		INSERT INTO [TbBookName] 
		       ([BookName], [Writer], [Translator], [Publisher], [Active], [Language], [Pages], [Viewed], [InsertUserId], [InsertDate], [Keyword], [Description])
		VALUES ( @BookName, @Writer , @Translator , @Publisher , @Active , @Language , @Pages , @Viewed , @InsertUserId , @InsertDate , @Keyword , @Description );

		Select SCOPE_IDENTITY();

	END

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPBookNameVisit]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPBookNameVisit]
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT top 10 [ID], [BookName], [Writer], [Translator], [Publisher], [Active], [Language], [Pages], [Viewed], [InsertUserId], [InsertDate], [Keyword], [Description]
	FROM [Tafsir].[dbo].[TbBookName] 
	ORDER BY [Viewed] Desc

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPBookParagraphDel]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPBookParagraphDel]
@ID int
--WITH ENCRYPTION
AS
BEGIN

SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	DELETE [TbBookParagraph] WHERE [ID] = @ID

	SELECT @@ROWCOUNT AS Count;

	Commit Tran t1
END Try
BEGIN Catch
	SELECT -1
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPBookParagraphGet]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPBookParagraphGet]
@ID int
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT [ID], [BookId], [TitleNumber], [HeadrNumber], [Title], [Text]
	FROM [Tafsir].[dbo].[TbBookParagraph] 
	WHERE [ID] = @ID
	ORDER BY [ID]

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPBookParagraphGetFirst]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SPBookParagraphGetFirst]
@BookID int = 0
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT top 1 [ID], [BookId], [TitleNumber], [HeadrNumber], [Title], [Text]
	FROM [Tafsir].[dbo].[TbBookParagraph] 
	WHERE [BookId] = @BookID
	ORDER BY [ID]

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END



GO
/****** Object:  StoredProcedure [dbo].[SPBookParagraphLoad]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPBookParagraphLoad]
@bookid int = 0
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT [ID], [BookId], [TitleNumber], [HeadrNumber], [Title], [Text]
	FROM [Tafsir].[dbo].[TbBookParagraph] 
	Where bookid = @bookid
	ORDER BY [ID]

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPBookParagraphSearch]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPBookParagraphSearch]
@ID		int
,@BookId		int
,@TitleNumber		int
,@HeadrNumber		[nchar] (10)
,@Title		[nvarchar] (100)
,@Text		[nvarchar] (max)
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	IF(@ID>0)
	BEGIN
		--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
		SELECT [ID], [BookId], [TitleNumber], [HeadrNumber], [Title], [Text]
		FROM [Tafsir].[dbo].[TbBookParagraph] 
		WHERE [ID] = @ID
	END

	ELSE
	BEGIN
		SELECT [ID], [BookId], [TitleNumber], [HeadrNumber], [Title], [Text]
		FROM [Tafsir].[dbo].[TbBookParagraph] 
		WHERE [BookId] 		Like @BookId
		AND   [TitleNumber] 	Like @TitleNumber
		AND   [HeadrNumber] 	Like @HeadrNumber
		AND   [Title] 	Like @Title
		AND   [Text] 	Like @Text
		ORDER BY [ID]
	END

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPBookParagraphSet]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPBookParagraphSet]
@ID		int
,@BookId		int
,@TitleNumber		int
,@HeadrNumber		[nchar] (10)
,@Title		[nvarchar] (100)
,@Text		[nvarchar] (max)
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	IF(@ID>0)
	BEGIN
		UPDATE [TbBookParagraph] Set [BookId] = @BookId
			, [TitleNumber] = @TitleNumber
			, [HeadrNumber] = @HeadrNumber
			, [Title] = @Title
			, [Text] = @Text
		WHERE [ID] = @ID

		SELECT @ID
	END

	Else
	BEGIN

		INSERT INTO [TbBookParagraph] 
		       ([BookId], [TitleNumber], [HeadrNumber], [Title], [Text])
		VALUES ( @BookId, @TitleNumber , @HeadrNumber , @Title , @Text );

		Select SCOPE_IDENTITY();

	END

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPCommentsDel]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPCommentsDel]
@Id int
--WITH ENCRYPTION
AS
BEGIN

SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	DELETE [TbComments] WHERE [Id] = @Id

	SELECT @@ROWCOUNT AS Count;

	Commit Tran t1
END Try
BEGIN Catch
	SELECT -1
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPCommentsGet]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPCommentsGet]
@Id int
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT [Id], [NewsId], [NewsType], [Name], [Email], [Comment], [DateTime], [ShowMess], [Reply], [UserReply], [DateTimeReply]
	FROM [Tafsir].[dbo].[TbComments] 
	WHERE [Id] = @Id
	ORDER BY [Id]

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPCommentsLoad]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPCommentsLoad]
--WITH ENCRYPTION
@showall bit = 1
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	IF(@showall = 1)
	BEGIN
		--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
		SELECT [Id], [NewsId], [NewsType], [Name], [Email], [Comment], [DateTime], [ShowMess], [Reply], [UserReply], [DateTimeReply]
		FROM [Tafsir].[dbo].[TbComments] 
		ORDER BY [Id]
	End
	ELSE
	BEGIN
		--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
		SELECT [Id], [NewsId], [NewsType], [Name], [Email], [Comment], [DateTime], [ShowMess], [Reply], [UserReply], [DateTimeReply]
		FROM [Tafsir].[dbo].[TbComments] 
		Where [ShowMess] = 1
		ORDER BY [Id]
	End


	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPCommentsSearch]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPCommentsSearch]
@Id		int
,@NewsId		int
,@NewsType		int
,@Name		[nvarchar] (70)
,@Email		[nvarchar] (80)
,@Comment		[nvarchar] (max)
,@DateTime		[char] (10)
,@ShowMess		bit
,@Reply		[nvarchar] (max)
,@UserReply		int
,@DateTimeReply		[char] (10)
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	IF(@Id>0)
	BEGIN
		--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
		SELECT [Id], [NewsId], [NewsType], [Name], [Email], [Comment], [DateTime], [ShowMess], [Reply], [UserReply], [DateTimeReply]
		FROM [Tafsir].[dbo].[TbComments] 
		WHERE [Id] = @Id
	END

	ELSE
	BEGIN
		SELECT [Id], [NewsId], [NewsType], [Name], [Email], [Comment], [DateTime], [ShowMess], [Reply], [UserReply], [DateTimeReply]
		FROM [Tafsir].[dbo].[TbComments] 
		WHERE [NewsId] 		Like @NewsId
		AND   [NewsType] 	Like @NewsType
		AND   [Name] 	Like @Name
		AND   [Email] 	Like @Email
		AND   [Comment] 	Like @Comment
		AND   [DateTime] 	Like @DateTime
		AND   [ShowMess] 	Like @ShowMess
		AND   [Reply] 	Like @Reply
		AND   [UserReply] 	Like @UserReply
		AND   [DateTimeReply] 	Like @DateTimeReply
		ORDER BY [Id]
	END

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPCommentsSet]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPCommentsSet]
@Id		int
,@NewsId		int
,@NewsType		int
,@Name		[nvarchar] (70)
,@Email		[nvarchar] (80)
,@Comment		[nvarchar] (max)
,@DateTime		[char] (10)
,@ShowMess		bit
,@Reply		[nvarchar] (max)
,@UserReply		int
,@DateTimeReply		[char] (10)
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	IF(@Id>0)
	BEGIN
		UPDATE [TbComments] Set [NewsId] = @NewsId
			, [NewsType] = @NewsType
			, [Name] = @Name
			, [Email] = @Email
			, [Comment] = @Comment
			, [DateTime] = @DateTime
			, [ShowMess] = @ShowMess
			, [Reply] = @Reply
			, [UserReply] = @UserReply
			, [DateTimeReply] = @DateTimeReply
		WHERE [Id] = @Id

		SELECT @Id
	END

	Else
	BEGIN

		INSERT INTO [TbComments] 
		       ([NewsId], [NewsType], [Name], [Email], [Comment], [DateTime], [ShowMess], [Reply], [UserReply], [DateTimeReply])
		VALUES ( @NewsId, @NewsType , @Name , @Email , @Comment , @DateTime , @ShowMess , @Reply , @UserReply , @DateTimeReply );


		Select SCOPE_IDENTITY();

	END

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPCourseDel]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPCourseDel]
@ID int
--WITH ENCRYPTION
AS
BEGIN

SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	DELETE [TbCourse] WHERE [ID] = @ID

	SELECT @@ROWCOUNT AS Count;

	Commit Tran t1
END Try
BEGIN Catch
	SELECT -1
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPCourseFlieDel]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPCourseFlieDel]
@Id int
--WITH ENCRYPTION
AS
BEGIN

SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	DELETE [TbCourseFlie] WHERE [Id] = @Id

	SELECT @@ROWCOUNT AS Count;

	Commit Tran t1
END Try
BEGIN Catch
	SELECT -1
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPCourseFlieGet]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPCourseFlieGet]
@Id int
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT [Id], [CourseId], [FileName], [FileType], [Address], [Active]
	FROM [Tafsir].[dbo].[TbCourseFlie] 
	WHERE [Id] = @Id
	ORDER BY [Id]

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPCourseFlieLoad]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPCourseFlieLoad]
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT [Id], [CourseId], [FileName], [FileType], [Address], [Active]
	FROM [Tafsir].[dbo].[TbCourseFlie] 
	ORDER BY [Id]

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPCourseFlieSearch]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPCourseFlieSearch]
@Id		int
,@CourseId		int
,@FileName		[nvarchar] (50)
,@FileType		[nvarchar] (50)
,@Address		[nvarchar] (250)
,@Active		bit
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	IF(@Id>0)
	BEGIN
		--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
		SELECT [Id], [CourseId], [FileName], [FileType], [Address], [Active]
		FROM [Tafsir].[dbo].[TbCourseFlie] 
		WHERE [Id] = @Id
	END

	ELSE
	BEGIN
		SELECT [Id], [CourseId], [FileName], [FileType], [Address], [Active]
		FROM [Tafsir].[dbo].[TbCourseFlie] 
		WHERE [CourseId] 		Like @CourseId
		AND   [FileName] 	Like @FileName
		AND   [FileType] 	Like @FileType
		AND   [Address] 	Like @Address
		AND   [Active] 	Like @Active
		ORDER BY [Id]
	END

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPCourseFlieSet]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPCourseFlieSet]
@Id		int
,@CourseId		int
,@FileName		[nvarchar] (50)
,@FileType		[nvarchar] (50)
,@Address		[nvarchar] (250)
,@Active		bit
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	IF(@Id>0)
	BEGIN
		UPDATE [TbCourseFlie] Set [CourseId] = @CourseId
			, [FileName] = @FileName
			, [FileType] = @FileType
			, [Address] = @Address
			, [Active] = @Active
		WHERE [Id] = @Id

		SELECT @Id
	END

	Else
	BEGIN

		INSERT INTO [TbCourseFlie] 
		       ([CourseId], [FileName], [FileType], [Address], [Active])
		VALUES ( @CourseId, @FileName , @FileType , @Address , @Active );

		Select SCOPE_IDENTITY();

	END

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPCourseGet]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPCourseGet]
@ID int
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT [ID], [NumberCourse], [VAHED], [TypeCourse], [Title], [DateStart], [TimeCourse], [TimeQuiz], [Length], [Address], [TeacherId], [Description], [Link], [Active]
	FROM [Tafsir].[dbo].[TbCourse] 
	WHERE [ID] = @ID
	ORDER BY [ID]

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPCourseLoad]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SPCourseLoad]
@TypeCourse int,
@StudentId int
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	DECLARE @ProductTotals table (
	id int
      ,[NumberCourse] nvarchar(50)
      ,[VAHED] int
      ,[TypeCourse] int
      ,[Title] nvarchar(50)
      ,[DateStart] nvarchar(50)
      ,[TimeCourse] nvarchar(50)
      ,[TimeQuiz] nvarchar(50)
      ,[Length] nvarchar(50)
      ,[Address] nvarchar(50)
      ,[TeacherId] int
      ,[TeacherName] nvarchar(50)
      ,[Description] nvarchar(50)
      ,[Active] bit
      ,[Link] nvarchar(50)
	  ,[Reg] bit
	  )

	  INSERT INTO @ProductTotals
SELECT *, 0 FROM [Tafsir].[dbo].[VeCourse]
where [TypeCourse] = @TypeCourse

UPDATE @ProductTotals
SET [Reg] = 1 
WHERE [Id] in (SELECT [CourseId]
  FROM [Tafsir].[dbo].[TbCourseRegistration] 
  Where StudentId = @StudentId);

Select ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row',*,Link as [Address] from @ProductTotals

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END



GO
/****** Object:  StoredProcedure [dbo].[SPCourseLoad222222]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPCourseLoad222222]
@TypeCourse varchar(10)
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row',[ID], [NumberCourse], [VAHED], [TypeCourse], [Title], [DateStart], [TimeCourse], [TimeQuiz], [Length], [Address], [TeacherId], [TeacherName], [Description], [Link], [Active]
	FROM [Tafsir].[dbo].[VeCourse] 
	where TypeCourse = @TypeCourse And Active = 1
	ORDER BY [ID]

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPCourseLoadType]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPCourseLoadType]
@TypeId int
--@StudentId int
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	DECLARE @ProductTotals table (
	id int
      ,[NumberCourse] nvarchar(50)
      ,[VAHED] int
      ,[TypeCourse] int
      ,[Title] nvarchar(50)
      ,[DateStart] nvarchar(50)
      ,[TimeCourse] nvarchar(50)
      ,[TimeQuiz] nvarchar(50)
      ,[Length] nvarchar(50)
      ,[Address] nvarchar(50)
      ,[TeacherId] int
      ,[TeacherName] nvarchar(50)
      ,[Description] nvarchar(50)
      ,[Active] bit
      ,[Link] nvarchar(50)
	  ,[Reg] bit
	  )

	  INSERT INTO @ProductTotals
SELECT *, 0 FROM [Tafsir].[dbo].[VeCourse]
where [TypeCourse] = @TypeId

UPDATE @ProductTotals
SET [Reg] = 1 
WHERE [Id] in (SELECT [CourseId]
  FROM [Tafsir].[dbo].[TbCourseRegistration] 
  --Where StudentId = @StudentId
  );

Select ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row',*,Link as [Address] from @ProductTotals

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END




GO
/****** Object:  StoredProcedure [dbo].[SPCourseRegistrationDel]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPCourseRegistrationDel]
@ID int
--WITH ENCRYPTION
AS
BEGIN

SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	DELETE [TbCourseRegistration] WHERE [ID] = @ID

	SELECT @@ROWCOUNT AS Count;

	Commit Tran t1
END Try
BEGIN Catch
	SELECT -1
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPCourseRegistrationGet]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPCourseRegistrationGet]
@ID int
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT [ID], [CourseId], [StudentId], [DateTime]
	FROM [Tafsir].[dbo].[TbCourseRegistration] 
	WHERE [ID] = @ID
	ORDER BY [ID]

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[spCourseRegistrationList]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[spCourseRegistrationList]
@id int =0
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	--SELECT [ID], [CourseId], [StudentId], [DateTime]
	--FROM [Tafsir].[dbo].[TbCourseRegistration] 
	--ORDER BY [ID]

	SELECT        dbo.TbStudent.FirstName, dbo.TbStudent.LastName, dbo.TbStudent.ID, dbo.TbCourse.Title as 'UserName'
FROM            dbo.TbCourseRegistration INNER JOIN
                         dbo.TbStudent ON dbo.TbCourseRegistration.StudentId = dbo.TbStudent.Id INNER JOIN
                         dbo.TbCourse ON dbo.TbCourseRegistration.CourseId = dbo.TbCourse.ID
WHERE        (dbo.TbCourse.ID = @id)

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END



GO
/****** Object:  StoredProcedure [dbo].[SPCourseRegistrationLoad]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPCourseRegistrationLoad]
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT [ID], [CourseId], [StudentId], [DateTime]
	FROM [Tafsir].[dbo].[TbCourseRegistration] 
	ORDER BY [ID]

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPCourseRegistrationSearch]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPCourseRegistrationSearch]
@ID		int
,@CourseId		int
,@StudentId		int
,@DateTime		[char] (20)
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	IF(@ID>0)
	BEGIN
		--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
		SELECT [ID], [CourseId], [StudentId], [DateTime]
		FROM [Tafsir].[dbo].[TbCourseRegistration] 
		WHERE [ID] = @ID
	END

	ELSE
	BEGIN
		SELECT [ID], [CourseId], [StudentId], [DateTime]
		FROM [Tafsir].[dbo].[TbCourseRegistration] 
		WHERE [CourseId] 		Like @CourseId
		AND   [StudentId] 	Like @StudentId
		AND   [DateTime] 	Like @DateTime
		ORDER BY [ID]
	END

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPCourseRegistrationSet]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPCourseRegistrationSet]
@ID		int
,@CourseId		int
,@StudentId		int
,@DateTime		[char] (20)
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	IF(@ID>0)
	BEGIN
		UPDATE [TbCourseRegistration] Set [CourseId] = @CourseId
			, [StudentId] = @StudentId
			, [DateTime] = @DateTime
		WHERE [ID] = @ID

		SELECT @ID
	END

	Else
	BEGIN

		INSERT INTO [TbCourseRegistration] 
		       ([CourseId], [StudentId], [DateTime])
		VALUES ( @CourseId, @StudentId , @DateTime );

		Select SCOPE_IDENTITY();

	END

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPCourseSearch]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPCourseSearch]
@ID		int
,@NumberCourse		[nvarchar] (50)
,@VAHED		int
,@TypeCourse		int
,@Title		[nvarchar] (50)
,@DateStart		[char] (10)
,@TimeCourse		[nvarchar] (50)
,@TimeQuiz		[nvarchar] (50)
,@Length		[nvarchar] (50)
,@Address		[nvarchar] (200)
,@TeacherId		int
,@Description		[nvarchar] (max)
,@Active		bit
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	IF(@ID>0)
	BEGIN
		--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
		SELECT [ID], [NumberCourse], [VAHED], [TypeCourse], [Title], [DateStart], [TimeCourse], [TimeQuiz], [Length], [Address], [TeacherId], [Description], [Active]
		FROM [Tafsir].[dbo].[TbCourse] 
		WHERE [ID] = @ID
	END

	ELSE
	BEGIN
		SELECT [ID], [NumberCourse], [VAHED], [TypeCourse], [Title], [DateStart], [TimeCourse], [TimeQuiz], [Length], [Address], [TeacherId], [Description], [Active]
		FROM [Tafsir].[dbo].[TbCourse] 
		WHERE [NumberCourse] 		Like @NumberCourse
		AND   [VAHED] 	Like @VAHED
		AND   [TypeCourse] 	Like @TypeCourse
		AND   [Title] 	Like @Title
		AND   [DateStart] 	Like @DateStart
		AND   [TimeCourse] 	Like @TimeCourse
		AND   [TimeQuiz] 	Like @TimeQuiz
		AND   [Length] 	Like @Length
		AND   [Address] 	Like @Address
		AND   [TeacherId] 	Like @TeacherId
		AND   [Description] 	Like @Description
		AND   [Active] 	Like @Active
		ORDER BY [ID]
	END

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPCourseSet]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPCourseSet]
@ID		int
,@NumberCourse		[nvarchar] (50)
,@VAHED		int
,@TypeCourse		int
,@Title		[nvarchar] (50)
,@DateStart		[char] (10)
,@TimeCourse		[nvarchar] (50)
,@TimeQuiz		[nvarchar] (50)
,@Length		[nvarchar] (50)
,@Address		[nvarchar] (200)
,@TeacherId		int
,@Description		[nvarchar] (max)
,@Link			[nvarchar] (200)
,@Active		bit
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	IF(@ID>0)
	BEGIN
		UPDATE [TbCourse] Set [NumberCourse] = @NumberCourse
			, [VAHED] = @VAHED
			, [TypeCourse] = @TypeCourse
			, [Title] = @Title
			, [DateStart] = @DateStart
			, [TimeCourse] = @TimeCourse
			, [TimeQuiz] = @TimeQuiz
			, [Length] = @Length
			, [Address] = @Address
			, [TeacherId] = @TeacherId
			, [Description] = @Description
			, [Link]		= @Link
			, [Active] = @Active
		WHERE [ID] = @ID

		SELECT @ID
	END

	Else
	BEGIN

		INSERT INTO [TbCourse] 
		       ([NumberCourse], [VAHED], [TypeCourse], [Title], [DateStart], [TimeCourse], [TimeQuiz], [Length], [Address], [TeacherId], [Description], [Active], [Link])
		VALUES ( @NumberCourse, @VAHED , @TypeCourse , @Title , @DateStart , @TimeCourse , @TimeQuiz , @Length , @Address , @TeacherId , @Description , @Active , @Link);

		Select SCOPE_IDENTITY();

	END

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPExamdetailSet]    Script Date: 30/04/1398 10:31:58 ******/
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
/****** Object:  StoredProcedure [dbo].[SPExamheaderEndSet]    Script Date: 30/04/1398 10:31:58 ******/
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
/****** Object:  StoredProcedure [dbo].[SPExamheaderSet]    Script Date: 30/04/1398 10:31:58 ******/
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
/****** Object:  StoredProcedure [dbo].[SPExamSet]    Script Date: 30/04/1398 10:31:58 ******/
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
/****** Object:  StoredProcedure [dbo].[SPLinksDel]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPLinksDel]
@ID int
--WITH ENCRYPTION
AS
BEGIN

SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	DELETE [TbLinks] WHERE [ID] = @ID

	SELECT @@ROWCOUNT AS Count;

	Commit Tran t1
END Try
BEGIN Catch
	SELECT -1
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPLinksGet]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPLinksGet]
@ID int
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT [ID], [TitleLink], [Address], [Image], [Description], [Active]
	FROM [Tafsir].[dbo].[TbLinks] 
	WHERE [ID] = @ID
	ORDER BY [ID]

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPLinksLoad]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPLinksLoad]
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT [ID], [TitleLink], [Address], [Image], [Description], [Active]
	FROM [Tafsir].[dbo].[TbLinks] 
	ORDER BY [ID]

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPLinksSearch]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPLinksSearch]
@ID		int
,@TitleLink		[nvarchar] (250)
,@Address		[nvarchar] (250)
,@Image		[nvarchar] (250)
,@Description		[nvarchar] (250)
,@Active		bit
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	IF(@ID>0)
	BEGIN
		--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
		SELECT [ID], [TitleLink], [Address], [Image], [Description], [Active]
		FROM [Tafsir].[dbo].[TbLinks] 
		WHERE [ID] = @ID
	END

	ELSE
	BEGIN
		SELECT [ID], [TitleLink], [Address], [Image], [Description], [Active]
		FROM [Tafsir].[dbo].[TbLinks] 
		WHERE [TitleLink] 		Like @TitleLink
		AND   [Address] 	Like @Address
		AND   [Image] 	Like @Image
		AND   [Description] 	Like @Description
		AND   [Active] 	Like @Active
		ORDER BY [ID]
	END

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPLinksSet]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPLinksSet]
@ID		int
,@TitleLink		[nvarchar] (250)
,@Address		[nvarchar] (250)
,@Image		[nvarchar] (250)
,@Description		[nvarchar] (250)
,@Active		bit
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	IF(@ID>0)
	BEGIN
		UPDATE [TbLinks] Set [TitleLink] = @TitleLink
			, [Address] = @Address
			, [Image] = @Image
			, [Description] = @Description
			, [Active] = @Active
		WHERE [ID] = @ID

		SELECT @ID
	END

	Else
	BEGIN

		INSERT INTO [TbLinks] 
		       ([TitleLink], [Address], [Image], [Description], [Active])
		VALUES ( @TitleLink, @Address , @Image , @Description , @Active );

		Select SCOPE_IDENTITY();

	END

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPMobalegDel]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPMobalegDel]
@ID int
--WITH ENCRYPTION
AS
BEGIN

SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	DELETE [TbMobaleg] WHERE [ID] = @ID

	SELECT @@ROWCOUNT AS Count;

	Commit Tran t1
END Try
BEGIN Catch
	SELECT -1
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPMobalegGet]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPMobalegGet]
@ID int
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT [ID], [FirstName], [LastName], [ComName], [CodeMeli], [Tel], [Email], [City], [DateStart], [DateEnd], [Description], [Send], [Checked], [InaertDate]
	FROM [Tafsir].[dbo].[TbMobaleg] 
	WHERE [ID] = @ID
	ORDER BY [ID]

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPMobalegLoad]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPMobalegLoad]
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT [ID], [FirstName], [LastName], [ComName], [CodeMeli], [Tel], [Email], [City], [DateStart], [DateEnd], [Description], [Send], [Checked], [InaertDate]
	FROM [Tafsir].[dbo].[TbMobaleg] 
	ORDER BY [ID] desc

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPMobalegSearch]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPMobalegSearch]
@ID		int
,@FirstName		[nvarchar] (50)
,@LastName		[nvarchar] (50)
,@ComName		[nvarchar] (50)
,@CodeMeli		[char] (10)
,@Tel		[char] (11)
,@Email		[nvarchar] (70)
,@City		[nvarchar] (50)
,@DateStart		[char] (10)
,@DateEnd		[char] (10)
,@Description		[nvarchar] (max)
,@Send		bit
,@Checked		bit
,@InaertDate		[char] (10)
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	IF(@ID>0)
	BEGIN
		--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
		SELECT [ID], [FirstName], [LastName], [ComName], [CodeMeli], [Tel], [Email], [City], [DateStart], [DateEnd], [Description], [Send], [Checked], [InaertDate]
		FROM [Tafsir].[dbo].[TbMobaleg] 
		WHERE [ID] = @ID
	END

	ELSE
	BEGIN
		SELECT [ID], [FirstName], [LastName], [ComName], [CodeMeli], [Tel], [Email], [City], [DateStart], [DateEnd], [Description], [Send], [Checked], [InaertDate]
		FROM [Tafsir].[dbo].[TbMobaleg] 
		WHERE [FirstName] 		Like @FirstName
		AND   [LastName] 	Like @LastName
		AND   [ComName] 	Like @ComName
		AND   [CodeMeli] 	Like @CodeMeli
		AND   [Tel] 	Like @Tel
		AND   [Email] 	Like @Email
		AND   [City] 	Like @City
		AND   [DateStart] 	Like @DateStart
		AND   [DateEnd] 	Like @DateEnd
		AND   [Description] 	Like @Description
		AND   [Send] 	Like @Send
		AND   [Checked] 	Like @Checked
		AND   [InaertDate] 	Like @InaertDate
		ORDER BY [ID]
	END

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPMobalegSet]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPMobalegSet]
@ID		int
,@FirstName		[nvarchar] (50)
,@LastName		[nvarchar] (50)
,@ComName		[nvarchar] (50)
,@CodeMeli		[char] (10)
,@Tel		[char] (11)
,@Email		[nvarchar] (70)
,@City		[nvarchar] (50)
,@DateStart		[char] (10)
,@DateEnd		[char] (10)
,@Description		[nvarchar] (max)
,@Send		bit
,@Checked		bit
,@InaertDate		[char] (10)
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	IF(@ID>0)
	BEGIN
		UPDATE [TbMobaleg] Set [FirstName] = @FirstName
			, [LastName] = @LastName
			, [ComName] = @ComName
			, [CodeMeli] = @CodeMeli
			, [Tel] = @Tel
			, [Email] = @Email
			, [City] = @City
			, [DateStart] = @DateStart
			, [DateEnd] = @DateEnd
			, [Description] = @Description
			, [Send] = @Send
			, [Checked] = @Checked
			, [InaertDate] = @InaertDate
		WHERE [ID] = @ID

		SELECT @ID
	END

	Else
	BEGIN

		INSERT INTO [TbMobaleg] 
		       ([FirstName], [LastName], [ComName], [CodeMeli], [Tel], [Email], [City], [DateStart], [DateEnd], [Description], [Send], [Checked], [InaertDate])
		VALUES ( @FirstName, @LastName , @ComName , @CodeMeli , @Tel , @Email , @City , @DateStart , @DateEnd , @Description , @Send , @Checked , @InaertDate );

		Select SCOPE_IDENTITY();

	END

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPNewsDel]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPNewsDel]
@ID int
--WITH ENCRYPTION
AS
BEGIN

SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	DELETE [TbNews] WHERE [ID] = @ID

	SELECT @@ROWCOUNT AS Count;

	Commit Tran t1
END Try
BEGIN Catch
	SELECT -1
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPNewsGet]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPNewsGet]
@ID int
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT [ID], [TypeId], [TitleNews], [Description], [TextNews], [Writer], [Active], [Viewed], [InsertUser], [InsertDate], [Keyword], [Image]
	FROM [Tafsir].[dbo].[TbNews] 
	WHERE [ID] = @ID
	ORDER BY [ID]

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPNewsLoad]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPNewsLoad]
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT [ID], [TypeId], [TitleNews], [Description], [TextNews], [Writer], [Active], [Viewed], [InsertUser], [InsertDate], [Keyword], [Image]
	FROM [Tafsir].[dbo].[TbNews] 
	ORDER BY [ID]

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPNewsLoadType]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SPNewsLoadType]
@typeId int = 1
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT [ID], [TypeId], [TitleNews], [Description], [TextNews], [Writer], [Active], [Viewed], [InsertUser], [InsertDate], [Keyword], [Image]
	FROM [Tafsir].[dbo].[TbNews]
	Where [TypeId] = @typeId
	ORDER BY [ID] Desc

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END




GO
/****** Object:  StoredProcedure [dbo].[SPNewsLoadTypeTop]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SPNewsLoadTypeTop]
@typeId int = 1
,@count int = 3
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT top 3 [ID], [TypeId], [TitleNews], [Description], [TextNews], [Writer], [Active], [Viewed], [InsertUser], [InsertDate], [Keyword], [Image]
	FROM [Tafsir].[dbo].[TbNews]
	Where [TypeId] = @typeId
	ORDER BY [ID] Desc

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END



GO
/****** Object:  StoredProcedure [dbo].[SPNewsSearch]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPNewsSearch]
@ID		int
,@TypeId		int
,@TitleNews		[nvarchar] (200)
,@Description		[nvarchar] (400)
,@TextNews		[nvarchar] (max)
,@Writer		[nvarchar] (200)
,@Active		bit
,@Viewed		int
,@InsertUser		int
,@InsertDate		[char] (10)
,@Keyword		[nvarchar] (max)
,@Image		[nvarchar] (200)
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	IF(@ID>0)
	BEGIN
		--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
		SELECT [ID], [TypeId], [TitleNews], [Description], [TextNews], [Writer], [Active], [Viewed], [InsertUser], [InsertDate], [Keyword], [Image]
		FROM [Tafsir].[dbo].[TbNews] 
		WHERE [ID] = @ID
	END

	ELSE
	BEGIN
		SELECT [ID], [TypeId], [TitleNews], [Description], [TextNews], [Writer], [Active], [Viewed], [InsertUser], [InsertDate], [Keyword], [Image]
		FROM [Tafsir].[dbo].[TbNews] 
		WHERE [TypeId] 		Like @TypeId
		AND   [TitleNews] 	Like @TitleNews
		AND   [Description] 	Like @Description
		AND   [TextNews] 	Like @TextNews
		AND   [Writer] 	Like @Writer
		AND   [Active] 	Like @Active
		AND   [Viewed] 	Like @Viewed
		AND   [InsertUser] 	Like @InsertUser
		AND   [InsertDate] 	Like @InsertDate
		AND   [Keyword] 	Like @Keyword
		AND   [Image] 	Like @Image
		ORDER BY [ID]
	END

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPNewsSet]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPNewsSet]
@ID		int
,@TypeId		int
,@TitleNews		[nvarchar] (200)
,@Description		[nvarchar] (400)
,@TextNews		[nvarchar] (max)
,@Writer		[nvarchar] (200)
,@Active		bit
,@Viewed		int
,@InsertUser		int
,@InsertDate		[char] (10)
,@Keyword		[nvarchar] (max)
,@Image		[nvarchar] (200)
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	IF(@ID>0)
	BEGIN
		UPDATE [TbNews] Set [TypeId] = @TypeId
			, [TitleNews] = @TitleNews
			, [Description] = @Description
			, [TextNews] = @TextNews
			, [Writer] = @Writer
			, [Active] = @Active
			, [Viewed] = @Viewed
			, [InsertUser] = @InsertUser
			, [InsertDate] = @InsertDate
			, [Keyword] = @Keyword
			, [Image] = @Image
		WHERE [ID] = @ID

		SELECT @ID
	END

	Else
	BEGIN

		INSERT INTO [TbNews] 
		       ([TypeId], [TitleNews], [Description], [TextNews], [Writer], [Active], [Viewed], [InsertUser], [InsertDate], [Keyword], [Image])
		VALUES ( @TypeId, @TitleNews , @Description , @TextNews , @Writer , @Active , @Viewed , @InsertUser , @InsertDate , @Keyword , @Image );

		Select SCOPE_IDENTITY();

	END

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPNewsTypeDel]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPNewsTypeDel]
@ID int
--WITH ENCRYPTION
AS
BEGIN

SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	DELETE [TbNewsType] WHERE [ID] = @ID

	SELECT @@ROWCOUNT AS Count;

	Commit Tran t1
END Try
BEGIN Catch
	SELECT -1
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPNewsTypeGet]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPNewsTypeGet]
@ID int
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT [ID], [TypeName]
	FROM [Tafsir].[dbo].[TbNewsType] 
	WHERE [ID] = @ID
	ORDER BY [ID]

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPNewsTypeLoad]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPNewsTypeLoad]
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT [ID], [TypeName]
	FROM [Tafsir].[dbo].[TbNewsType] 
	ORDER BY [ID]

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPNewsTypeSearch]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPNewsTypeSearch]
@ID		int
,@TypeName		[nvarchar] (50)
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	IF(@ID>0)
	BEGIN
		--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
		SELECT [ID], [TypeName]
		FROM [Tafsir].[dbo].[TbNewsType] 
		WHERE [ID] = @ID
	END

	ELSE
	BEGIN
		SELECT [ID], [TypeName]
		FROM [Tafsir].[dbo].[TbNewsType] 
		WHERE [TypeName] 		Like @TypeName
		ORDER BY [ID]
	END

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPNewsTypeSet]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPNewsTypeSet]
@ID		int
,@TypeName		[nvarchar] (50)
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	IF(@ID>0)
	BEGIN
		UPDATE [TbNewsType] Set [TypeName] = @TypeName
		WHERE [ID] = @ID

		SELECT @ID
	END

	Else
	BEGIN

		INSERT INTO [TbNewsType] 
		       ([TypeName])
		VALUES ( @TypeName);

		Select SCOPE_IDENTITY();

	END

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPQuestionNazarsanjiDel]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPQuestionNazarsanjiDel]
@Id int
--WITH ENCRYPTION
AS
BEGIN

SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	DELETE [TbQuestionNazarsanji] WHERE [Id] = @Id

	SELECT @@ROWCOUNT AS Count;

	Commit Tran t1
END Try
BEGIN Catch
	SELECT -1
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPQuestionNazarsanjiGet]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPQuestionNazarsanjiGet]
@Id int
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT [Id], [Question], [Active]
	FROM [Tafsir].[dbo].[TbQuestionNazarsanji] 
	WHERE [Id] = @Id
	ORDER BY [Id]

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPQuestionNazarsanjiLoad]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPQuestionNazarsanjiLoad]
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT [Id], [Question], [Active]
	FROM [Tafsir].[dbo].[TbQuestionNazarsanji] 
	ORDER BY [Id]

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPQuestionNazarsanjiResult]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SPQuestionNazarsanjiResult]
@TeacharId int
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT [Id], [Question], 0 as [Result], [Active]
	FROM [Tafsir].[dbo].[TbQuestionNazarsanji] 
	ORDER BY [Id]

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END



GO
/****** Object:  StoredProcedure [dbo].[SPQuestionNazarsanjiSearch]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPQuestionNazarsanjiSearch]
@Id		int
,@Question		[nvarchar] (400)
,@Active		bit
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	IF(@Id>0)
	BEGIN
		--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
		SELECT [Id], [Question], [Active]
		FROM [Tafsir].[dbo].[TbQuestionNazarsanji] 
		WHERE [Id] = @Id
	END

	ELSE
	BEGIN
		SELECT [Id], [Question], [Active]
		FROM [Tafsir].[dbo].[TbQuestionNazarsanji] 
		WHERE [Question] 		Like @Question
		AND   [Active] 	Like @Active
		ORDER BY [Id]
	END

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPQuestionNazarsanjiSet]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPQuestionNazarsanjiSet]
@Id		int
,@Question		[nvarchar] (400)
,@Active		bit
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	IF(@Id>0)
	BEGIN
		UPDATE [TbQuestionNazarsanji] Set [Question] = @Question
			, [Active] = @Active
		WHERE [Id] = @Id

		SELECT @Id
	END

	Else
	BEGIN

		INSERT INTO [TbQuestionNazarsanji] 
		       ([Question], [Active])
		VALUES ( @Question, @Active );

		Select SCOPE_IDENTITY();

	END

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPQuestionSet]    Script Date: 30/04/1398 10:31:58 ******/
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
/****** Object:  StoredProcedure [dbo].[SPSelectExam]    Script Date: 30/04/1398 10:31:58 ******/
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
/****** Object:  StoredProcedure [dbo].[SPSlideDel]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPSlideDel]
@Id int
--WITH ENCRYPTION
AS
BEGIN

SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	DELETE [TbSlide] WHERE [Id] = @Id

	SELECT @@ROWCOUNT AS Count;

	Commit Tran t1
END Try
BEGIN Catch
	SELECT -1
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPSlideGet]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPSlideGet]
@Id int
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT [Id], [Image], [Active]
	FROM [Tafsir].[dbo].[TbSlide] 
	WHERE [Id] = @Id
	ORDER BY [Id]

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPSlideLoad]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPSlideLoad]
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT [Id], [Image], [Active]
	FROM [Tafsir].[dbo].[TbSlide] 
	where  [Active] = 1
	ORDER BY [Id]

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPSlideLoadAll]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPSlideLoadAll]
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT [Id], [Image], [Active]
	FROM [Tafsir].[dbo].[TbSlide] 
	--where  [Active] = 1
	ORDER BY [Id]

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPSlideSearch]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPSlideSearch]
@Id		int
,@Image		[nvarchar] (50)
,@Active		bit
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	IF(@Id>0)
	BEGIN
		--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
		SELECT [Id], [Image], [Active]
		FROM [Tafsir].[dbo].[TbSlide] 
		WHERE [Id] = @Id
	END

	ELSE
	BEGIN
		SELECT [Id], [Image], [Active]
		FROM [Tafsir].[dbo].[TbSlide] 
		WHERE [Image] 		Like @Image
		AND   [Active] 	Like @Active
		ORDER BY [Id]
	END

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPSlideSet]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPSlideSet]
@Id		int
,@Image		[nvarchar] (50)
,@Active		bit
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	IF(@Id>0)
	BEGIN
		UPDATE [TbSlide] Set [Image] = @Image
			, [Active] = @Active
		WHERE [Id] = @Id

		SELECT @Id
	END

	Else
	BEGIN

		INSERT INTO [TbSlide] 
		       ([Image], [Active])
		VALUES ( @Image, @Active );

		Select SCOPE_IDENTITY();

	END

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPStudentCheck]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SPStudentCheck]
 @User		[nvarchar] (50)
,@Pass		[nvarchar] (50)
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row'
 
	SELECT 1--,[ID], [FirstName], [LastName], [UserName], [Password], [Active], [Image], [RulId]
	FROM [Tafsir].[dbo].[TbStudent] 
	WHERE [UserName] = @User
	And		[Password] = @Pass

	select 0

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END




GO
/****** Object:  StoredProcedure [dbo].[SPStudentCheckEmail]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SPStudentCheckEmail]
 @email		[nvarchar] (50)
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row'
 
	SELECT  COUNT([ID])
	FROM [Tafsir].[dbo].[TbStudent] 
	WHERE [UserName] = @email
	or		[Email] = @email
	
	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END





GO
/****** Object:  StoredProcedure [dbo].[SPStudentDel]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPStudentDel]
@Id int
--WITH ENCRYPTION
AS
BEGIN

SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	DELETE [TbStudent] WHERE [Id] = @Id

	SELECT @@ROWCOUNT AS Count;

	Commit Tran t1
END Try
BEGIN Catch
	SELECT -1
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPStudentForgatPassword]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SPStudentForgatPassword]
 @email		[nvarchar] (50)
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row'
 
	SELECT [ID], [FirstName], [LastName], [UserName], [Password], [Active], [Image]--, [RulId]
	FROM [Tafsir].[dbo].[TbStudent] 
	WHERE [Email]=@email

	select 0

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END




GO
/****** Object:  StoredProcedure [dbo].[SPStudentGet]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPStudentGet]
@Id int
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT [Id], [FirstName], [LastName], [UserName], [Password], [Image], [Active], [BirthDate], [Address], [Email], [Tel]
	FROM [Tafsir].[dbo].[TbStudent] 
	WHERE [Id] = @Id
	ORDER BY [Id]

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPStudentGetUsePass]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SPStudentGetUsePass]
@user nvarchar(100),
@pass nvarchar(100)
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT [ID], [FirstName], [LastName], [UserName], [Password], [Active], [Image], [Email]
	FROM [Tafsir].[dbo].[TbStudent] 
	WHERE [UserName] = @user And [Password] = @pass
	ORDER BY [ID]

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END



GO
/****** Object:  StoredProcedure [dbo].[SPStudentLoad]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPStudentLoad]
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT [Id], [FirstName], [LastName], [UserName], [Password], [Image], [Active], [BirthDate], [Address], [Email], [Tel]
	FROM [Tafsir].[dbo].[TbStudent] 
	ORDER BY [Id]

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPStudentSearch]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPStudentSearch]
@Id		int
,@FirstName		[nvarchar] (50)
,@LastName		[nvarchar] (50)
,@UserName		[nvarchar] (50)
,@Password		[nvarchar] (50)
,@Image		[nvarchar] (100)
,@Active		bit
,@BirthDate		[char] (10)
,@Address		[nvarchar] (500)
,@Email		[varchar] (50)
,@Tel		[nvarchar] (50)
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	IF(@Id>0)
	BEGIN
		--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
		SELECT [Id], [FirstName], [LastName], [UserName], [Password], [Image], [Active], [BirthDate], [Address], [Email], [Tel]
		FROM [Tafsir].[dbo].[TbStudent] 
		WHERE [Id] = @Id
	END

	ELSE
	BEGIN
		SELECT [Id], [FirstName], [LastName], [UserName], [Password], [Image], [Active], [BirthDate], [Address], [Email], [Tel]
		FROM [Tafsir].[dbo].[TbStudent] 
		WHERE [FirstName] 		Like @FirstName
		AND   [LastName] 	Like @LastName
		AND   [UserName] 	Like @UserName
		AND   [Password] 	Like @Password
		AND   [Image] 	Like @Image
		AND   [Active] 	Like @Active
		AND   [BirthDate] 	Like @BirthDate
		AND   [Address] 	Like @Address
		AND   [Email] 	Like @Email
		AND   [Tel] 	Like @Tel
		ORDER BY [Id]
	END

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPStudentSet]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPStudentSet]
@Id		int
,@FirstName		[nvarchar] (50)
,@LastName		[nvarchar] (50)
,@UserName		[nvarchar] (50)
,@Password		[nvarchar] (50)
,@Image			[nvarchar] (100)
,@Active		bit
,@BirthDate		[char] (10)
,@Address		[nvarchar] (500)
,@Email		[varchar] (50)
,@Tel		[nvarchar] (50)
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	IF(@Id>0)
	BEGIN
		UPDATE [TbStudent] Set [FirstName] = @FirstName
			, [LastName] = @LastName
			, [UserName] = @UserName
			, [Password] = @Password
			, [Image] = @Image
			, [Active] = @Active
			, [BirthDate] = @BirthDate
			, [Address] = @Address
			, [Email] = @Email
			, [Tel] = @Tel
		WHERE [Id] = @Id

		SELECT @Id
	END

	Else
	BEGIN

		INSERT INTO [TbStudent] 
		       ([FirstName], [LastName], [UserName], [Password], [Image], [Active], [BirthDate], [Address], [Email], [Tel])
		VALUES ( @FirstName, @LastName , @UserName , @Password , @Image , @Active , @BirthDate , @Address , @Email , @Tel );

		Select SCOPE_IDENTITY();

	END

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPTeacherDel]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPTeacherDel]
@Id int
--WITH ENCRYPTION
AS
BEGIN

SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	DELETE [TbTeacher] WHERE [Id] = @Id

	SELECT @@ROWCOUNT AS Count;

	Commit Tran t1
END Try
BEGIN Catch
	SELECT -1
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPTeacherGet]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPTeacherGet]
@Id int
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT [Id], [FirstName], [LastName], [UserName], [Password], [Image], [Active], [Grade], [Rezome], [BirthDate], [Address], [Email], [Tel]
	FROM [Tafsir].[dbo].[TbTeacher] 
	WHERE [Id] = @Id
	ORDER BY [Id]

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[spTeacherListFullName]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[spTeacherListFullName]
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT [Id], [FirstName]+ ' '+ [LastName] as 'FirstName' ,[FirstName]+ ' '+ [LastName] as 'LastName', [UserName], [Password], [Image], [Active], [Grade], [Rezome], [BirthDate], [Address], [Email], [Tel]
	FROM [Tafsir].[dbo].[TbTeacher] 
	ORDER BY [Id]

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END



GO
/****** Object:  StoredProcedure [dbo].[SPTeacherLoad]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPTeacherLoad]
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT [Id], [FirstName], [LastName], [UserName], [Password], [Image], [Active], [Grade], [Rezome], [BirthDate], [Address], [Email], [Tel]
	FROM [Tafsir].[dbo].[TbTeacher] 
	ORDER BY [Id]

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPTeacherNazarsanjiDel]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPTeacherNazarsanjiDel]
@Id int
--WITH ENCRYPTION
AS
BEGIN

SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	DELETE [TbTeacherNazarsanji] WHERE [Id] = @Id

	SELECT @@ROWCOUNT AS Count;

	Commit Tran t1
END Try
BEGIN Catch
	SELECT -1
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPTeacherNazarsanjiGet]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPTeacherNazarsanjiGet]
@Id int
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT [Id], [Question], [Active]
	FROM [Tafsir].[dbo].[TbTeacherNazarsanji] 
	WHERE [Id] = @Id
	ORDER BY [Id]

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPTeacherNazarsanjiLoad]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPTeacherNazarsanjiLoad]
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT [Id], [Question], [Active]
	FROM [Tafsir].[dbo].[TbTeacherNazarsanji] 
	ORDER BY [Id]

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPTeacherNazarsanjiSearch]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPTeacherNazarsanjiSearch]
@Id		int
,@Question		[nvarchar] (400)
,@Active		bit
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	IF(@Id>0)
	BEGIN
		--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
		SELECT [Id], [Question], [Active]
		FROM [Tafsir].[dbo].[TbTeacherNazarsanji] 
		WHERE [Id] = @Id
	END

	ELSE
	BEGIN
		SELECT [Id], [Question], [Active]
		FROM [Tafsir].[dbo].[TbTeacherNazarsanji] 
		WHERE [Question] 		Like @Question
		AND   [Active] 	Like @Active
		ORDER BY [Id]
	END

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPTeacherNazarsanjiSet]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPTeacherNazarsanjiSet]
@Id		int
,@Question		[nvarchar] (400)
,@Active		bit
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	IF(@Id>0)
	BEGIN
		UPDATE [TbTeacherNazarsanji] Set [Question] = @Question
			, [Active] = @Active
		WHERE [Id] = @Id

		SELECT @Id
	END

	Else
	BEGIN

		INSERT INTO [TbTeacherNazarsanji] 
		       ([Question], [Active])
		VALUES ( @Question, @Active );

		Select SCOPE_IDENTITY();

	END

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPTeacherSearch]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPTeacherSearch]
@Id		int
,@FirstName		[nvarchar] (50)
,@LastName		[nvarchar] (50)
,@UserName		[nvarchar] (50)
,@Password		[nvarchar] (50)
,@Image		[nvarchar] (100)
,@Active		[nchar] (10)
,@Grade		[nvarchar] (50)
,@Rezome		[nvarchar] (max)
,@BirthDate		[char] (10)
,@Address		[nvarchar] (500)
,@Email		[varchar] (50)
,@Tel		[nvarchar] (50)
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	IF(@Id>0)
	BEGIN
		--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
		SELECT [Id], [FirstName], [LastName], [UserName], [Password], [Image], [Active], [Grade], [Rezome], [BirthDate], [Address], [Email], [Tel]
		FROM [Tafsir].[dbo].[TbTeacher] 
		WHERE [Id] = @Id
	END

	ELSE
	BEGIN
		SELECT [Id], [FirstName], [LastName], [UserName], [Password], [Image], [Active], [Grade], [Rezome], [BirthDate], [Address], [Email], [Tel]
		FROM [Tafsir].[dbo].[TbTeacher] 
		WHERE [FirstName] 		Like @FirstName
		AND   [LastName] 	Like @LastName
		AND   [UserName] 	Like @UserName
		AND   [Password] 	Like @Password
		AND   [Image] 	Like @Image
		AND   [Active] 	Like @Active
		AND   [Grade] 	Like @Grade
		AND   [Rezome] 	Like @Rezome
		AND   [BirthDate] 	Like @BirthDate
		AND   [Address] 	Like @Address
		AND   [Email] 	Like @Email
		AND   [Tel] 	Like @Tel
		ORDER BY [Id]
	END

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPTeacherSet]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPTeacherSet]
@Id		int
,@FirstName		[nvarchar] (50)
,@LastName		[nvarchar] (50)
,@UserName		[nvarchar] (50)
,@Password		[nvarchar] (50)
,@Image		[nvarchar] (100)
,@Active		[nchar] (10)
,@Grade		[nvarchar] (50)
,@Rezome		[nvarchar] (max)
,@BirthDate		[char] (10)
,@Address		[nvarchar] (500)
,@Email		[varchar] (50)
,@Tel		[nvarchar] (50)
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	IF(@Id>0)
	BEGIN
		UPDATE [TbTeacher] Set [FirstName] = @FirstName
			, [LastName] = @LastName
			, [UserName] = @UserName
			, [Password] = @Password
			, [Image] = @Image
			, [Active] = @Active
			, [Grade] = @Grade
			, [Rezome] = @Rezome
			, [BirthDate] = @BirthDate
			, [Address] = @Address
			, [Email] = @Email
			, [Tel] = @Tel
		WHERE [Id] = @Id

		SELECT @Id
	END

	Else
	BEGIN

		INSERT INTO [TbTeacher] 
		       ([FirstName], [LastName], [UserName], [Password], [Image], [Active], [Grade], [Rezome], [BirthDate], [Address], [Email], [Tel])
		VALUES ( @FirstName, @LastName , @UserName , @Password , @Image , @Active , @Grade , @Rezome , @BirthDate , @Address , @Email , @Tel );

		Select SCOPE_IDENTITY();

	END

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPUserCheck]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SPUserCheck]
 @User		[nvarchar] (50)
,@Pass		[nvarchar] (50)
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row'
 
	SELECT 1--,[ID], [FirstName], [LastName], [UserName], [Password], [Active], [Image], [RulId]
	FROM [Tafsir].[dbo].[TbUser] 
	WHERE [UserName] = @User
	And		[Password] = @Pass

	select 0

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END



GO
/****** Object:  StoredProcedure [dbo].[SPUserCheckEmail]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SPUserCheckEmail]
 @email		[nvarchar] (50)
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row'
 
	SELECT  COUNT([ID])
	FROM [Tafsir].[dbo].[TbUser] 
	WHERE [UserName] = @email
	or		[Email] = @email
	
	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END




GO
/****** Object:  StoredProcedure [dbo].[SPUserDel]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPUserDel]
@ID int
--WITH ENCRYPTION
AS
BEGIN

SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	DELETE [TbUser] WHERE [ID] = @ID

	SELECT @@ROWCOUNT AS Count;

	Commit Tran t1
END Try
BEGIN Catch
	SELECT -1
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPUserForgatPassword]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SPUserForgatPassword]
 @email		[nvarchar] (50)
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row'
 
	SELECT [ID], [FirstName], [LastName], [UserName], [Password], [Active], [Image], [RulId]
	FROM [Tafsir].[dbo].[TbUser] 
	WHERE [Email]=@email

	select 0

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END



GO
/****** Object:  StoredProcedure [dbo].[SPUserGet]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPUserGet]
@ID int
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT [ID], [FirstName], [LastName], [UserName], [Password], [Active], [Image], [RulId], [Email]
	FROM [Tafsir].[dbo].[TbUser] 
	WHERE [ID] = @ID
	ORDER BY [ID]

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPUserGetUsePass]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPUserGetUsePass]
@user nvarchar(100),
@pass nvarchar(100)
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT [ID], [FirstName], [LastName], [UserName], [Password], [Active], [Image], [RulId], [Email]
	FROM [Tafsir].[dbo].[TbUser] 
	WHERE [UserName] = @user And [Password] = @pass
	ORDER BY [ID]

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPUserLoad]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPUserLoad]
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
	SELECT [ID], [FirstName], [LastName], [UserName], [Password], [Active], [Image], [RulId], [Email]
	FROM [Tafsir].[dbo].[TbUser] 
	ORDER BY [ID]

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPUserSearch]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPUserSearch]
@ID		int
,@FirstName		[nvarchar] (50)
,@LastName		[nvarchar] (50)
,@UserName		[nvarchar] (50)
,@Password		[nvarchar] (50)
,@Active		bit
,@Image		[nvarchar] (100)
,@RulId		int
,@Email		[nvarchar] (50)
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	IF(@ID>0)
	BEGIN
		--SELECT ROW_NUMBER() OVER(ORDER BY [Id]) AS 'Row' 
		SELECT [ID], [FirstName], [LastName], [UserName], [Password], [Active], [Image], [RulId], [Email]
		FROM [Tafsir].[dbo].[TbUser] 
		WHERE [ID] = @ID
	END

	ELSE
	BEGIN
		SELECT [ID], [FirstName], [LastName], [UserName], [Password], [Active], [Image], [RulId], [Email]
		FROM [Tafsir].[dbo].[TbUser] 
		WHERE [FirstName] 		Like @FirstName
		AND   [LastName] 	Like @LastName
		AND   [UserName] 	Like @UserName
		AND   [Password] 	Like @Password
		AND   [Active] 	Like @Active
		AND   [Image] 	Like @Image
		AND   [RulId] 	Like @RulId
		AND   [Email] 	Like @Email
		ORDER BY [ID]
	END

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO
/****** Object:  StoredProcedure [dbo].[SPUserSet]    Script Date: 30/04/1398 10:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPUserSet]
@ID		int
,@FirstName		[nvarchar] (50)
,@LastName		[nvarchar] (50)
,@UserName		[nvarchar] (50)
,@Password		[nvarchar] (50)
,@Active		bit
,@Image		[nvarchar] (100)
,@RulId		int
,@Email		[nvarchar] (50)
--WITH ENCRYPTION
AS
BEGIN

--SET NOCOUNT ON;
BEGIN Try
BEGIN Tran t1

	IF(@ID>0)
	BEGIN
		UPDATE [TbUser] Set [FirstName] = @FirstName
			, [LastName] = @LastName
			, [UserName] = @UserName
			, [Password] = @Password
			, [Active] = @Active
			, [Image] = @Image
			, [RulId] = @RulId
			, [Email] = @Email
		WHERE [ID] = @ID

		SELECT @ID
	END

	Else
	BEGIN

		INSERT INTO [TbUser] 
		       ([FirstName], [LastName], [UserName], [Password], [Active], [Image], [RulId], [Email])
		VALUES ( @FirstName, @LastName , @UserName , @Password , @Active , @Image , @RulId , @Email );

		Select SCOPE_IDENTITY();

	END

	Commit Tran t1
END Try
BEGIN Catch
	SELECT ERROR_MESSAGE()
	Rollback
END Catch

END


GO

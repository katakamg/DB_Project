USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[updDirectory]    Script Date: 5/8/2016 2:34:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[updDirectory]
	
	@ListInDirectory BIT,
	@lineNumber VARCHAR(12)

AS

BEGIN TRANSACTION

UPDATE peoplePhone SET listInDirectory = @ListInDirectory WHERE lineNumber = @lineNumber


IF (@@ERROR <> 0)
  BEGIN
	PRINT 'ERROR OCCURRED WHILE ATTEMPTING TO UPDATE DATA IN peoplePhone'
	ROLLBACK TRANSACTION
	RETURN -10001
  END

COMMIT TRANSACTION

RETURN


GO



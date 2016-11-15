USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[updEndDateOfLine]    Script Date: 5/8/2016 2:35:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[updEndDateOfLine]
	
	@lineNumber VARCHAR(12),
	@endDate DATE

AS

BEGIN TRANSACTION

UPDATE phone SET endDate = @endDate WHERE lineNumber = @lineNumber


IF (@@ERROR <> 0)
  BEGIN
	PRINT 'ERROR OCCURRED WHILE ATTEMPTING TO UPDATE DATA IN phone'
	ROLLBACK TRANSACTION
	RETURN -10001
  END

COMMIT TRANSACTION

RETURN


GO



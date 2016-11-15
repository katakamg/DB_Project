USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[delphone]    Script Date: 5/8/2016 2:42:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[delphone]
	
	@linenumber VARCHAR(12)

	
AS

BEGIN TRANSACTION

---USE THE FOLLOWING IF NEED TO DELETE SPECIFIC DATA FROM TABLE
DELETE FROM phone
WHERE lineNumber = @linenumber

---USE THE FOLLOWING IF NEED TO DELETE ALL DATA FROM TABLE
---DELETE FROM TABLENAME 

IF (@@ERROR <> 0)
  BEGIN
	PRINT 'ERROR OCCURRED WHILE ATTEMPTING TO DELETE DATA IN phone'
	ROLLBACK TRANSACTION
	RETURN -10001
  END

COMMIT TRANSACTION

RETURN


GO



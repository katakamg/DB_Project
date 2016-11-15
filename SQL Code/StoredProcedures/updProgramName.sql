USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[updProgramName]    Script Date: 5/8/2016 2:36:42 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[updProgramName]
	
	@name varchar(62),
	@programID CHAR(4)

AS

BEGIN TRANSACTION

UPDATE program SET name = @name WHERE programID = @programID 


IF (@@ERROR <> 0)
  BEGIN
	PRINT 'ERROR OCCURRED WHILE ATTEMPTING TO UPDATE DATA IN program'
	ROLLBACK TRANSACTION
	RETURN -10001
  END

COMMIT TRANSACTION

RETURN


GO



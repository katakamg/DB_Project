USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[updDivisionDescription]    Script Date: 5/8/2016 2:34:30 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[updDivisionDescription]
	
	@description varchar(128),
	@divisionID CHAR(5)

AS

BEGIN TRANSACTION

UPDATE division SET description = @description WHERE divisionID = @divisionID 


IF (@@ERROR <> 0)
  BEGIN
	PRINT 'ERROR OCCURRED WHILE ATTEMPTING TO UPDATE DATA IN division'
	ROLLBACK TRANSACTION
	RETURN -10001
  END

COMMIT TRANSACTION

RETURN


GO



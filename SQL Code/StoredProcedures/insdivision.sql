USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[insdivision]    Script Date: 5/8/2016 2:27:37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[insdivision]

	@divisionID		CHAR(5),
	@name			VARCHAR(32),
	@description	VARCHAR(128)
AS

BEGIN TRANSACTION

INSERT INTO division (divisionID, name, description) 
	VALUES ( @divisionID, @name, @description) 

IF (@@ERROR <> 0)
  BEGIN
	PRINT 'ERROR OCCURRED WHILE ATTEMPTING TO INSERT INTO division'
	ROLLBACK TRANSACTION
	RETURN -10001
  END

COMMIT TRANSACTION

RETURN







GO



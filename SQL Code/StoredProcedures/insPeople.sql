USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[insPeople]    Script Date: 5/8/2016 2:27:58 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[insPeople]

	@NetID		CHAR(10),
	@firstName	VARCHAR(64),
	@lastName	VARCHAR(64),
	@EmailID		VARCHAR(64),
	@divisionID	CHAR(5),
	@office		VARCHAR(64)		NULL
	
AS

BEGIN TRANSACTION

INSERT INTO people( NetID, firstName, lastName, EmailID, divisionID, office) 
	VALUES ( @NetID, @firstName, @lastName, @EmailID, @divisionID, @office )

IF (@@ERROR <> 0)
  BEGIN
	PRINT 'ERROR OCCURRED WHILE ATTEMPTING TO INSERT INTO people'
	ROLLBACK TRANSACTION
	RETURN -10001
  END

COMMIT TRANSACTION

RETURN

GO



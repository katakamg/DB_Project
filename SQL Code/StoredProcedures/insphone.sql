USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[insphone]    Script Date: 5/8/2016 2:28:52 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[insphone]

	@lineNumber		VARCHAR(12),
	@accountNumber	VARCHAR(64),
	@roomNumber		VARCHAR(6),
	@startDate		DATE,
	@endDate			DATE,
	@voiceMail		BIT,
	@phoneType		VARCHAR(24),
	@divisionID		CHAR(5)
AS

BEGIN TRANSACTION

INSERT INTO phone(lineNumber, accountNumber, roomNumber, startDate, endDate, voiceMail, phoneType, divisionID) 
	VALUES (@lineNumber, @accountNumber, @roomNumber, @startDate, @endDate, @voiceMail, @phoneType, @divisionID)

IF (@@ERROR <> 0)
  BEGIN
	PRINT 'ERROR OCCURRED WHILE ATTEMPTING TO INSERT INTO phone'
	ROLLBACK TRANSACTION
	RETURN -10001
  END

COMMIT TRANSACTION

RETURN







GO



USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[updServicetype]    Script Date: 5/8/2016 2:37:48 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[updServicetype]
	
	@serviceType varchar(64),
	@ChargesID VARCHAR(64)

AS

BEGIN TRANSACTION

UPDATE Charges SET ServiceType = @serviceType WHERE ChargesID = @ChargesID


IF (@@ERROR <> 0)
  BEGIN
	PRINT 'ERROR OCCURRED WHILE ATTEMPTING TO UPDATE DATA IN Charges'
	ROLLBACK TRANSACTION
	RETURN -10001
  END

COMMIT TRANSACTION

RETURN


GO



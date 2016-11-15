USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[insBillingCodes]    Script Date: 5/8/2016 2:20:40 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insBillingCodes]

	@BillingCode		VARCHAR(64),
	@AccountNumber	VARCHAR(64)
AS

BEGIN TRANSACTION

INSERT INTO BillingCodes(BillingCode, AccountNumber) 
	VALUES (@BillingCode, @AccountNumber)

IF (@@ERROR <> 0)
  BEGIN
	PRINT 'ERROR OCCURRED WHILE ATTEMPTING TO INSERT INTO BillingCodes'
	ROLLBACK TRANSACTION
	RETURN -10001
  END

COMMIT TRANSACTION

RETURN






GO



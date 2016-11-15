USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[insBillingNames]    Script Date: 5/8/2016 2:21:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insBillingNames]

	@BillingCode		VARCHAR(64),
	@BillingName		VARCHAR(64)
AS

BEGIN TRANSACTION

INSERT INTO BillingNames(BillingCode, BillingName) 
	VALUES (@BillingCode, @BillingName)

IF (@@ERROR <> 0)
  BEGIN
	PRINT 'ERROR OCCURRED WHILE ATTEMPTING TO INSERT INTO BillingNames'
	ROLLBACK TRANSACTION
	RETURN -10001
  END

COMMIT TRANSACTION

RETURN






GO



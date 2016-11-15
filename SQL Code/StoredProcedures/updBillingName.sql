USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[updBillingName]    Script Date: 5/8/2016 2:33:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[updBillingName]
	
	@billingName VARCHAR(64),
	@billingCode VARCHAR(64)

AS

BEGIN TRANSACTION

UPDATE BillingNames SET BillingName = @billingName WHERE BillingCode = @billingCode


IF (@@ERROR <> 0)
  BEGIN
	PRINT 'ERROR OCCURRED WHILE ATTEMPTING TO UPDATE DATA IN BillingNames'
	ROLLBACK TRANSACTION
	RETURN -10001
  END

COMMIT TRANSACTION

RETURN


GO



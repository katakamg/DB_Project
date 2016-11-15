USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[updquantity]    Script Date: 5/8/2016 2:37:06 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[updquantity]
	
	@billingDate date,
	@quantity int

AS

BEGIN TRANSACTION

UPDATE BillingDates SET Quantity = @quantity WHERE BillingDate = @billingDate


IF (@@ERROR <> 0)
  BEGIN
	PRINT 'ERROR OCCURRED WHILE ATTEMPTING TO UPDATE DATA IN BillingDates'
	ROLLBACK TRANSACTION
	RETURN -10001
  END

COMMIT TRANSACTION

RETURN


GO



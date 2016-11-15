USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[delBillingDate]    Script Date: 5/8/2016 2:39:44 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[delBillingDate]
	
	@BillingDateID INT

AS

BEGIN TRANSACTION

---USE THE FOLLOWING IF NEED TO DELETE SPECIFIC DATA FROM TABLE
DELETE FROM BillingDates
WHERE BillingDateID = @BillingDateID

---USE THE FOLLOWING IF NEED TO DELETE ALL DATA FROM TABLE
---DELETE FROM TABLENAME 

IF (@@ERROR <> 0)
  BEGIN
	PRINT 'ERROR OCCURRED WHILE ATTEMPTING TO DELETE DATA IN BillingDates'
	ROLLBACK TRANSACTION
	RETURN -10001
  END

COMMIT TRANSACTION

RETURN


GO



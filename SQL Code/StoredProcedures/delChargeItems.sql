USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[delChargeItems]    Script Date: 5/8/2016 2:41:07 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[delChargeItems]
	
	@Itemcode VARCHAR(64)

AS

BEGIN TRANSACTION

---USE THE FOLLOWING IF NEED TO DELETE SPECIFIC DATA FROM TABLE
DELETE FROM ChargeItems
WHERE ItemCode = @Itemcode

---USE THE FOLLOWING IF NEED TO DELETE ALL DATA FROM TABLE
---DELETE FROM TABLENAME 

IF (@@ERROR <> 0)
  BEGIN
	PRINT 'ERROR OCCURRED WHILE ATTEMPTING TO DELETE DATA IN ChargeItems'
	ROLLBACK TRANSACTION
	RETURN -10001
  END

COMMIT TRANSACTION

RETURN


GO


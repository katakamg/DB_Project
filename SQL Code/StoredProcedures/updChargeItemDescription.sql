USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[updChargeItemDescription]    Script Date: 5/8/2016 2:33:48 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[updChargeItemDescription]
	
	@description varchar(64),
	@itemCode VARCHAR(64)

AS

BEGIN TRANSACTION

UPDATE ChargeItems SET Description = @description WHERE ItemCode = @itemCode 


IF (@@ERROR <> 0)
  BEGIN
	PRINT 'ERROR OCCURRED WHILE ATTEMPTING TO UPDATE DATA IN ChargeItems'
	ROLLBACK TRANSACTION
	RETURN -10001
  END

COMMIT TRANSACTION

RETURN


GO



USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[updTotalAmount]    Script Date: 5/8/2016 2:38:04 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[updTotalAmount]
	
	@totalAmount real,
	@accountNumber VARCHAR(64)

AS

BEGIN TRANSACTION

UPDATE PinnacleAccount SET TotalAmount = @totalAmount WHERE AccountNumber = @accountNumber


IF (@@ERROR <> 0)
  BEGIN
	PRINT 'ERROR OCCURRED WHILE ATTEMPTING TO UPDATE DATA IN pinnacleAccount'
	ROLLBACK TRANSACTION
	RETURN -10001
  END

COMMIT TRANSACTION

RETURN


GO



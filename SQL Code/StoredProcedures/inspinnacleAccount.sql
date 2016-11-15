USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[inspinnacleAccount]    Script Date: 5/8/2016 2:29:09 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[inspinnacleAccount]

	@AccountNumber		varchar(64),
	@BillingDateID			int,
	@TotalAmount			float(3),
	@MRC					float(3),
	@OCC					float(3)

AS

BEGIN TRANSACTION

INSERT INTO PinnacleAccount(AccountNumber, BillingDateID, TotalAmount, MRC, OCC) 
	VALUES (@AccountNumber, @BillingDateID, @TotalAmount, @MRC, @OCC)


IF (@@ERROR <> 0)
  BEGIN
	PRINT 'ERROR OCCURRED WHILE ATTEMPTING TO INSERT INTO PinnacleAccount'
	ROLLBACK TRANSACTION
	RETURN -10001
  END

COMMIT TRANSACTION

RETURN







GO



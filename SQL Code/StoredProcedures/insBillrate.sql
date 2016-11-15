USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[insBillrate]    Script Date: 5/8/2016 2:21:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insBillrate]

	@RateID			int,
	@Rate			float(3),
	@Charge			float(3),
	@BillingCode		varchar(64)

AS

BEGIN TRANSACTION

INSERT INTO BillRate(RateID, Rate, Charge, BillingCode) 
	VALUES (@RateID, @Rate, @Charge, @BillingCode)

IF (@@ERROR <> 0)
  BEGIN
	PRINT 'ERROR OCCURRED WHILE ATTEMPTING TO INSERT INTO BillRate'
	ROLLBACK TRANSACTION
	RETURN -10001
  END

COMMIT TRANSACTION

RETURN






GO



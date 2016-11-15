USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[insBillingDates]    Script Date: 5/8/2016 2:20:58 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insBillingDates]

	@BillingDate		date,
	@TotalAmount		float(3),
	@MRC				float(3),
	@OCC				float(3),
	@Quantity		int,
	@RateID			int
AS

BEGIN TRANSACTION

INSERT INTO BillingDates(BillingDate, TotalAmount, MRC, OCC, Quantity, RateID) 
	VALUES (@BillingDate, @TotalAmount, @MRC, @OCC, @Quantity, @RateID)

IF (@@ERROR <> 0)
  BEGIN
	PRINT 'ERROR OCCURRED WHILE ATTEMPTING TO INSERT INTO BillingDates'
	ROLLBACK TRANSACTION
	RETURN -10001
  END

COMMIT TRANSACTION

RETURN






GO



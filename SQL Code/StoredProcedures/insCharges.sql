USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[insCharges]    Script Date: 5/8/2016 2:27:05 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[insCharges]

	@ChargesID		varchar(64),
	@Recurring		bit,
	@ItemCode		varchar(64),
	@ServiceType		varchar(64),
	@BillName		varchar(64),
	@BillingCode		varchar(64)

AS

BEGIN TRANSACTION

INSERT INTO Charges (ChargesID, Recurring, ItemCode, ServiceType, BillName, BillingCode) 
	VALUES (@ChargesID, @Recurring, @ItemCode, @ServiceType, @BillName, @BillingCode)

IF (@@ERROR <> 0)
  BEGIN
	PRINT 'ERROR OCCURRED WHILE ATTEMPTING TO INSERT INTO Charges'
	ROLLBACK TRANSACTION
	RETURN -10001
  END

COMMIT TRANSACTION

RETURN







GO



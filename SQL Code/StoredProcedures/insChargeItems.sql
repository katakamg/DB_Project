USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[insChargeItems]    Script Date: 5/8/2016 2:26:45 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insChargeItems]

	@ItemCode		varchar(64),
	@Description	varchar(64)

AS

BEGIN TRANSACTION

INSERT INTO ChargeItems (ItemCode, Description) 
	VALUES (@ItemCode, @Description)

IF (@@ERROR <> 0)
  BEGIN
	PRINT 'ERROR OCCURRED WHILE ATTEMPTING TO INSERT INTO ChargeItems'
	ROLLBACK TRANSACTION
	RETURN -10001
  END

COMMIT TRANSACTION

RETURN






GO



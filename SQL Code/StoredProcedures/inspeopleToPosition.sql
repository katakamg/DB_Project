USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[inspeopleToPosition]    Script Date: 5/8/2016 2:28:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[inspeopleToPosition]

	@NetID			CHAR(10),
	@isActive		BIT,
	@positionID		SMALLINT
AS

BEGIN TRANSACTION

INSERT INTO peopleToPosition (NetID, isActive, positionID) 
	VALUES (@NetID, @isActive, @positionID)

IF (@@ERROR <> 0)
  BEGIN
	PRINT 'ERROR OCCURRED WHILE ATTEMPTING TO INSERT INTO peopleToPosition'
	ROLLBACK TRANSACTION
	RETURN -10001
  END

COMMIT TRANSACTION

RETURN







GO



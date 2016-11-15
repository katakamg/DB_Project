USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[updPositionTitle]    Script Date: 5/8/2016 2:35:56 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[updPositionTitle]
	
	@title varchar(32),
	@lastName VARCHAR(64)

AS

BEGIN TRANSACTION

UPDATE PO SET PO.titleName = @title 
FROM people AS P INNER JOIN peopleToPosition AS PP 
ON P.NetID = PP.NetID INNER JOIN position AS PO ON PP.positionID = PO.positionID WHERE P.lastName = @lastName

IF (@@ERROR <> 0)
  BEGIN
	PRINT 'ERROR OCCURRED WHILE ATTEMPTING TO UPDATE DATA IN position'
	ROLLBACK TRANSACTION
	RETURN -10001
  END

COMMIT TRANSACTION

RETURN


GO



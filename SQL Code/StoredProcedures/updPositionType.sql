USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[updPositionType]    Script Date: 5/8/2016 2:36:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[updPositionType]
	
	@positionType VARCHAR(32),
	@positionID smallint

AS

BEGIN TRANSACTION

UPDATE position SET positionType = @positionType WHERE positionID = @positionID


IF (@@ERROR <> 0)
  BEGIN
	PRINT 'ERROR OCCURRED WHILE ATTEMPTING TO UPDATE DATA IN position'
	ROLLBACK TRANSACTION
	RETURN -10001
  END

COMMIT TRANSACTION

RETURN

GO



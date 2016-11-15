USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[insposition]    Script Date: 5/8/2016 2:29:31 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[insposition]

	@NetID		CHAR(10),
	@titleName		VARCHAR(32),
	@gradeLevel		VARCHAR(5),
	@programID		CHAR(4),
	@positionType	VARCHAR(32)
AS

BEGIN TRANSACTION

INSERT INTO position (NetID, titleName, gradeLevel, programID, positionType) 
	VALUES (@NetID, @titleName, @gradeLevel, @programID, @positionType)

IF (@@ERROR <> 0)
  BEGIN
	PRINT 'ERROR OCCURRED WHILE ATTEMPTING TO INSERT INTO position'
	ROLLBACK TRANSACTION
	RETURN -10001
  END

COMMIT TRANSACTION

RETURN







GO



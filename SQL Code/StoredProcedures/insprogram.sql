USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[insprogram]    Script Date: 5/8/2016 2:29:52 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[insprogram]

	@programID		CHAR(4),
	@name			VARCHAR(64),
	@website			VARCHAR(1024),
	@description	VARCHAR(128),
	@divisionID		CHAR(5),
	@programRank		CHAR(4)			NULL,
	@programphone	varchar(12)		NULL
	
AS

BEGIN TRANSACTION

INSERT INTO program(programID, name, website, description, divisionID, programRank, programphone ) 
	VALUES ( @programID, @name, @website, @description, @divisionID, @programRank, @programphone)

IF (@@ERROR <> 0)
  BEGIN
	PRINT 'ERROR OCCURRED WHILE ATTEMPTING TO INSERT INTO program'
	ROLLBACK TRANSACTION
	RETURN -10001
  END

COMMIT TRANSACTION

RETURN

GO



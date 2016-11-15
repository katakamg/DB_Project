USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[inspeoplePhone]    Script Date: 5/8/2016 2:28:16 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[inspeoplePhone]

	@lineNumber        VARCHAR(12),
	@NetID		      CHAR(10),
	@listInDirectory	  BIT				NULL
	
AS

BEGIN TRANSACTION

INSERT INTO peoplePhone(lineNumber,NetID,listInDirectory ) 
	VALUES ( @lineNumber,@NetID,@listInDirectory  )

IF (@@ERROR <> 0)
  BEGIN
	PRINT 'ERROR OCCURRED WHILE ATTEMPTING TO INSERT INTO peoplePhone'
	ROLLBACK TRANSACTION
	RETURN -10001
  END

COMMIT TRANSACTION

RETURN

GO



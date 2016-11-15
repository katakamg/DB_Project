USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[getProgramsEachDivision]    Script Date: 5/8/2016 2:20:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[getProgramsEachDivision]
	@divisionName VARCHAR(32)

AS

SELECT programName, programDescription, programphone FROM vwprograms
WHERE DivsionName = @divisionName;

RETURN

GO



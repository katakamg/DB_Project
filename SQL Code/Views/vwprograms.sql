USE [CDDPhone]
GO

/****** Object:  View [dbo].[vwprograms]    Script Date: 5/8/2016 2:50:37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vwprograms]
AS

SELECT P.name as programName, P.description as programDescription, P.programphone,D.name as DivsionName FROM 
program AS P INNER JOIN division AS D ON P.divisionID = D.divisionID


GO



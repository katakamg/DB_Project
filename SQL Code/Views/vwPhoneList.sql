USE [CDDPhone]
GO

/****** Object:  View [dbo].[vwPhoneList]    Script Date: 5/8/2016 2:49:44 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[vwPhoneList]
AS
SELECT P.firstName, P.lastName, Ph.lineNumber, Ph.divisionID, P.office
FROM phone as Ph 
INNER JOIN division as D ON Ph.divisionID = D.divisionID
INNER JOIN people as P ON D.divisionID = P.divisionID



GO



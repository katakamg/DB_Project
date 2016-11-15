USE [CDDPhone]
GO

/****** Object:  View [dbo].[vwDivisionPhones]    Script Date: 5/8/2016 2:48:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vwDivisionPhones]
AS
SELECT D.divisionID, D.name, Ph.lineNumber, D.description
FROM division as D INNER JOIN phone as Ph ON D.divisionID = Ph.divisionID

GO



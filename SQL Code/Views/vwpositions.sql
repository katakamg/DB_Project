USE [CDDPhone]
GO

/****** Object:  View [dbo].[vwpositions]    Script Date: 5/8/2016 2:50:05 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vwpositions]
AS
SELECT firstName, lastName, EmailID, titleName, PO.positionID, programID
FROM people AS P INNER JOIN peopleToPosition AS PP ON P.NetID = PP.NetID
INNER JOIN position AS PO ON PP.positionID = PO.positionID

GO



USE [CDDPhone]
GO

/****** Object:  View [dbo].[vwTitle]    Script Date: 5/8/2016 2:51:20 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vwTitle]

AS

SELECT P.firstName, P.lastName, titleName FROM people AS P INNER JOIN peopleToPosition AS PP 
ON P.NetID = PP.NetID INNER JOIN position AS PO ON PP.positionID = PO.positionID

GO



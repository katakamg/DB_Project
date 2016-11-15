USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[getActivePeopleLineNumber]    Script Date: 5/8/2016 2:16:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[getActivePeopleLineNumber]

@input BIT

AS
SELECT ptp.NetID, lineNumber
FROM peoplePhone AS pp INNER JOIN people AS p ON pp.NetID = p.NetID
INNER JOIN peopleToPosition AS ptp ON p.NetID = ptp.NetID
WHERE isActive = @input

GO



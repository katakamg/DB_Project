USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[getPositionsOfEachProgram]    Script Date: 5/8/2016 2:19:42 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[getPositionsOfEachProgram]

@division CHAR(5)

AS
SELECT positionID, NetID, titleName, pr.programID
FROM position AS po INNER JOIN program AS pr ON po.positionID = pr.programID
WHERE divisionID = @division

GO



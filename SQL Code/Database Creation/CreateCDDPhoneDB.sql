USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[CreateCDDPhoneDB]    Script Date: 5/8/2016 2:12:25 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateCDDPhoneDB]

AS

BEGIN

EXEC CreateTables;
EXEC CreateRelationships;

END


GO



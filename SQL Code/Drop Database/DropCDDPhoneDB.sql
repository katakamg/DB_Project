USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[DropCDDPhoneDB]    Script Date: 5/8/2016 2:15:01 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[DropCDDPhoneDB]

AS

BEGIN

EXEC DropRelationships;
EXEC DeleteData;
EXEC DropTables;

END



GO



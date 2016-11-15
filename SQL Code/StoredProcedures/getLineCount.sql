USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[getLineCount]    Script Date: 5/8/2016 2:19:03 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE Procedure [dbo].[getLineCount]
@voiceMail BIT
AS 
SELECT Count(Ph.lineNumber) AS LineCount
FROM phone as Ph
where voiceMail = @voiceMail;


GO



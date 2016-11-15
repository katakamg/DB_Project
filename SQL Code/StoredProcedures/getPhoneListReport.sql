USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[getPhoneListReport]    Script Date: 5/8/2016 2:19:23 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[getPhoneListReport] 
	
	@AccountNumber VARCHAR(64)

AS
BEGIN 

Select   P.lastName, P.firstName, Ph.lineNumber, Ph.voiceMail,Pa.TotalAmount
FROM phone as Ph INNER JOIN people as P ON Ph.divisionID = P.divisionID
INNER JOIN PinnacleAccount as Pa ON Ph.accountNumber = Pa.AccountNumber
Where Pa.AccountNumber =@AccountNumber;

END



GO



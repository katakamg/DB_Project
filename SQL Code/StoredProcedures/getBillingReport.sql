USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[getBillingReport]    Script Date: 5/8/2016 2:18:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE Procedure [dbo].[getBillingReport]

@AccountNumber VARCHAR(64)

AS

BEGIN

SELECT Pa.AccountNumber, Bd.BillingDate, Bn.BillingCode, Bn.BillingName
FROM PinnacleAccount as Pa INNER JOIN BillingDates as Bd ON Pa.BillingDateID = Bd.BillingDateID
INNER JOIN BillingCodes as Bc ON Pa.AccountNumber = Bc.AccountNumber
INNER JOIN BillingNames as Bn ON Bc.BillingCode = Bn.BillingCode
WHERE Pa.AccountNumber= @AccountNumber

END



GO



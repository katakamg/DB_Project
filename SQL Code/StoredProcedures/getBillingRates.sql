USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[getBillingRates]    Script Date: 5/8/2016 2:17:52 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[getBillingRates]

@BillingDate date
	
AS

SELECT BD.BillingDate, BD.TotalAmount, BR.Rate, BR.Charge FROM 
BillingDates AS BD INNER JOIN BillRate AS BR ON
BD.RateID = BR.RateID
WHERE BD.BillingDate = @BillingDate

RETURN



GO



USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[DeleteData]    Script Date: 5/8/2016 2:16:31 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteData]

AS

BEGIN

DELETE FROM BillingCodes;
DELETE FROM BillingDates;
DELETE FROM BillingNames;
DELETE FROM BillRate;
DELETE FROM ChargeItems;
DELETE FROM Charges;
DELETE FROM division;
DELETE FROM people;
DELETE FROM peoplePhone;
DELETE FROM peopleToPosition;
DELETE FROM phone;
DELETE FROM PinnacleAccount;
DELETE FROM position;
DELETE FROM program;

END


GO



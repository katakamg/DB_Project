USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[DropTables]    Script Date: 5/8/2016 2:16:01 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DropTables]

AS

BEGIN

DROP TABLE BillingCodes;
DROP TABLE BillingDates;
DROP TABLE BillingNames;
DROP TABLE BillRate;
DROP TABLE ChargeItems;
DROP TABLE Charges;
DROP TABLE division;
DROP TABLE people;
DROP TABLE peoplePhone;
DROP TABLE peopleToPosition;
DROP TABLE phone;
DROP TABLE PinnacleAccount;
DROP TABLE position;
DROP TABLE program;

END


GO



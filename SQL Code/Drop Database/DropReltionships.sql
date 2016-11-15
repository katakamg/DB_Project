USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[DropRelationships]    Script Date: 5/8/2016 2:15:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[DropRelationships]

AS

BEGIN

ALTER TABLE people
	DROP CONSTRAINT FK_people ;

ALTER TABLE peoplePhone
	DROP CONSTRAINT FK_peoplePhone;

ALTER TABLE peoplePhone
	DROP CONSTRAINT FK_peoplePhone1;

ALTER TABLE peopleToPosition
	DROP CONSTRAINT FK_PTP;

ALTER TABLE peopleToPosition
	DROP CONSTRAINT FK_PTP1;

ALTER TABLE program
	DROP CONSTRAINT FK_program;

ALTER TABLE position
	DROP CONSTRAINT FK_position;

ALTER TABLE phone
	DROP CONSTRAINT FK_phone1;

ALTER TABLE BillingCodes
	DROP CONSTRAINT FK_BillingCodes;

ALTER TABLE BillingNames
	DROP CONSTRAINT FK_BillingNames;



ALTER TABLE Charges
	DROP CONSTRAINT FK_Charges;

ALTER TABLE phone
	DROP CONSTRAINT FK_phone2;

ALTER TABLE PinnacleAccount
	DROP CONSTRAINT FK_PinnacleAccount;

ALTER TABLE BillingDates 
	DROP CONSTRAINT FK_BillingDates;

ALTER TABLE Charges
	DROP CONSTRAINT FK_Charges11;



END




GO



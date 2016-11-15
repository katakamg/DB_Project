USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[CreateRelationships]    Script Date: 5/8/2016 2:14:29 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[CreateRelationships]

AS

BEGIN

ALTER TABLE people
	ADD CONSTRAINT FK_people FOREIGN KEY (divisionID) REFERENCES division(divisionID);

ALTER TABLE peoplePhone
	ADD CONSTRAINT FK_peoplePhone	FOREIGN KEY (NetID) REFERENCES people(NetID);

ALTER TABLE peoplePhone
	ADD CONSTRAINT FK_peoplePhone1	FOREIGN KEY (lineNumber) REFERENCES phone(lineNumber);

ALTER TABLE peopleToPosition
	ADD CONSTRAINT FK_PTP	FOREIGN KEY (NetID) REFERENCES people (NetID);

ALTER TABLE peopleToPosition
	ADD CONSTRAINT FK_PTP1	FOREIGN KEY (positionID) REFERENCES position (positionID);

ALTER TABLE program
	ADD CONSTRAINT FK_program FOREIGN KEY (divisionID) REFERENCES division (divisionID);

ALTER TABLE position
	ADD CONSTRAINT FK_position FOREIGN KEY (programID) REFERENCES program (programID);

ALTER TABLE phone
	ADD CONSTRAINT FK_phone1 FOREIGN KEY (divisionID) REFERENCES division (divisionID);

ALTER TABLE BillingCodes
	ADD CONSTRAINT FK_BillingCodes FOREIGN KEY (AccountNumber) REFERENCES PinnacleAccount (AccountNumber);

ALTER TABLE BillingNames
	ADD CONSTRAINT FK_BillingNames FOREIGN KEY (BillingCode) REFERENCES BillingCodes (BillingCode);



ALTER TABLE Charges
	ADD CONSTRAINT FK_Charges FOREIGN KEY (ItemCode) REFERENCES ChargeItems (ItemCode);

ALTER TABLE phone
	ADD CONSTRAINT FK_phone2 FOREIGN KEY (accountNumber) REFERENCES PinnacleAccount (AccountNumber);

ALTER TABLE PinnacleAccount
	ADD CONSTRAINT FK_PinnacleAccount FOREIGN KEY (BillingDateID) REFERENCES BillingDates (BillingDateID);

ALTER TABLE BillingDates 
	ADD CONSTRAINT FK_BillingDates FOREIGN KEY (RateID) REFERENCES BillRate (RateID);

ALTER TABLE Charges
	ADD CONSTRAINT FK_Charges11 FOREIGN KEY (BillingCode) REFERENCES BillingNames (BillingCode);

END








GO



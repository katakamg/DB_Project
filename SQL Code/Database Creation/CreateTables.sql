USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[CreateTables]    Script Date: 5/8/2016 1:29:29 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[CreateTables]

AS 

BEGIN

CREATE TABLE people(
	
	NetID		CHAR(10)		NOT NULL,
	firstName	VARCHAR(64)		NOT NULL,
	lastName	VARCHAR(64)		NOT NULL,
	EmailID		VARCHAR(64)		NOT NULL,
	divisionID	CHAR(5)			NOT NULL,
	office		VARCHAR(64)		NULL,

	CONSTRAINT PK_people PRIMARY KEY (NetID)
);

CREATE TABLE peoplePhone(

	lineNumber        VARCHAR(12)		NOT NULL,
	NetID		      CHAR(10)		    NOT NULL,
	listInDirectory	  BIT				NULL,

	CONSTRAINT PK_peoplePhone PRIMARY KEY (lineNumber)
);

CREATE TABLE program(

	programID		CHAR(4)			NOT NULL,
	name			VARCHAR(64)		NOT NULL,
	website			VARCHAR(1024)	NOT NULL,
	[description]	VARCHAR(128)	NOT NULL,
	divisionID		CHAR(5)			NOT NULL,
	programRank		CHAR(4)			NULL,
	programphone	varchar(12)		NULL,
	
	CONSTRAINT PK_program PRIMARY KEY (programID)

	);


CREATE TABLE division(

	divisionID		CHAR(5)			NOT NULL,
	name			VARCHAR(32)		NOT NULL,
	[description]	VARCHAR(128)	NOT NULL,

	CONSTRAINT PK_division PRIMARY KEY (divisionID)
);

CREATE TABLE peopleToPosition(

	NetID			CHAR(10)		NOT NULL,
	isActive		BIT				NOT NULL,
	positionID		SMALLINT		NOT NULL,

	CONSTRAINT PK_PTP PRIMARY KEY (NetID)
);

CREATE TABLE position(

	positionID		SMALLINT		IDENTITY(1,1) NOT NULL,
	NetID			CHAR(10)		NOT NULL,
	titleName		VARCHAR(32)		NOT NULL,
	gradeLevel		VARCHAR(5)		NULL,
	programID		CHAR(4)			NOT NULL,
	positionType	VARCHAR(32)		NOT NULL,

	CONSTRAINT PK_position PRIMARY KEY (positionID)

);

CREATE TABLE phone(

	lineNumber		VARCHAR(12)		NOT NULL,
	accountNumber	VARCHAR(64)		NOT NULL,
	roomNumber		VARCHAR(6)		NOT NULL,
	startDate		DATE			NOT NULL,
	endDate			DATE			NOT NULL,
	voiceMail		BIT				NOT NULL,
	phoneType		VARCHAR(24)		NOT NULL,
	divisionID		CHAR(5)			NOT NULL,

	CONSTRAINT PK_phone PRIMARY KEY (lineNumber)

);

CREATE TABLE BillingCodes(

	BillingCode		VARCHAR(64)		NOT NULL,
	AccountNumber	VARCHAR(64)		NOT NULL,

	CONSTRAINT PK_BillingCodes PRIMARY KEY (BillingCode)
);


CREATE TABLE BillingNames(
	
	BillingCode		VARCHAR(64)		NOT NULL,
	BillingName		VARCHAR(64)		NOT NULL,

	CONSTRAINT PK_BillingNames PRIMARY KEY (BillingCode)
);

CREATE TABLE BillingDates(
	
	BillingDateID	int				IDENTITY(1000,1)		NOT NULL,
	BillingDate     date			NOT NULL,
	TotalAmount		float(3)		NOT NULL,
	MRC				float(3)		NOT NULL,
	OCC				float(3)	 	NOT NULL,
	Quantity		int				NOT NULL,
	RateID			int				NOT NULL,

	CONSTRAINT PK_BillingDates PRIMARY KEY (BillingDateID)
);

CREATE TABLE PinnacleAccount(

	AccountNumber		varchar(64)		NOT NULL,
	BillingDateID		int				NOT NULL,
	TotalAmount			float(3)		NOT NULL,
	MRC					float(3)		NOT NULL,
	OCC					float(3)		NOT NULL,

	CONSTRAINT PK_PinnacleAccount PRIMARY KEY (AccountNumber)
);

CREATE TABLE BillRate(
	
	RateID			int				NOT NULL,
	Rate			float(3)		NOT NULL,
	Charge			float(3)		NOT NULL,
	BillingCode		varchar(64)		NOT NULL,

	CONSTRAINT PK_BillRate PRIMARY KEY (RateID)
);

CREATE TABLE ChargeItems(
	
	ItemCode		varchar(64) 	NOT NULL,
	[Description]	varchar(64) 	NOT NULL,

	CONSTRAINT PK_ChargeItems PRIMARY KEY (ItemCode)
);

CREATE TABLE Charges(

	ChargesID		varchar(64)		NOT NULL,
	Recurring		bit				NOT NULL,
	ItemCode		varchar(64)		NOT NULL,
	ServiceType		varchar(64)		NOT NULL,
	BillName		varchar(64) 	NOT NULL,
	BillingCode		varchar(64) 	NOT NULL,

	CONSTRAINT PK_Charges PRIMARY KEY (ChargesID)
);

END





GO



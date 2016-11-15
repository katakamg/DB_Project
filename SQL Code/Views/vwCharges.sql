USE [CDDPhone]
GO

/****** Object:  View [dbo].[vwCharges]    Script Date: 5/8/2016 2:47:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[vwCharges]
AS
SELECT C.ChargesID, C.ServiceType, C.BillName, C.BillCode, C.ItemCode, Ci.[Description]
FROM Charges as C INNER JOIN ChargeItems as Ci ON C.ItemCode = Ci.ItemCode




GO



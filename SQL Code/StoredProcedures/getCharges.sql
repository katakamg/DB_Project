USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[getCharges]    Script Date: 5/8/2016 2:18:37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[getCharges]

@BillName VARCHAR(64)

AS
SELECT C.ItemCode, C.Description, Ch.ServiceType
FROM ChargeItems AS C INNER JOIN Charges AS Ch ON C.ItemCode = Ch.ChargesID
WHERE BillName = @BillName



GO



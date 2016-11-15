USE [CDDPhone]
GO

/****** Object:  StoredProcedure [dbo].[updBillRate]    Script Date: 5/8/2016 2:33:31 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE Procedure [dbo].[updBillRate]

	@RateID int,
	@Rate	float(3),
	@Charge	float(3)

AS
Update BillRate 
SET Rate = @Rate, Charge = @Charge
Where RateID = @RateID


GO



USE [Addidas]
GO

/****** Object:  StoredProcedure [dbo].[Usp_CheckEmailAvailibility]    Script Date: 07/21/2015 00:07:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Akshay>
-- Create date: <Create Date,,20/07/2015>
-- Description:	<Description,,Check username-email availability>
-- =============================================
CREATE PROCEDURE [dbo].[Usp_CheckEmailAvailibility]
	-- Add the parameters for the stored procedure here
	@Email varchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT COUNT(UserRegisterationID) 
	FROM tbl_UserRegisteration WHERE Email=@Email;
END

GO



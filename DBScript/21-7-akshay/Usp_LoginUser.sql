USE [Addidas]
GO

/****** Object:  StoredProcedure [dbo].[Usp_LoginUser]    Script Date: 07/21/2015 00:08:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Akshay>
-- Create date: <Create Date,,20/07/2015>
-- Description:	<Description,,Sp for checking Login>
-- EXEC Usp_LoginUser 'akshay@hotmail.com','UMvUf3ZeY+hkdes'
-- =============================================
CREATE PROCEDURE [dbo].[Usp_LoginUser]
	-- Add the parameters for the stored procedure here
	@Email varchar(50),
	@Password varchar(15)
	
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT COUNT(UserRegisterationID) FROM tbl_UserRegisteration
	WHERE Email=@Email AND Password=@Password;
END

GO



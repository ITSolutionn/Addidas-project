-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================

-- =============================================
CREATE PROCEDURE Usp_InsertUser
@Name varchar(50),
@Email varchar(50),
@Password varchar(15),
@Address varchar(250),
@Country varchar(10),
@ContactNo INT,
@IsActive BIT,
@IsDelete BIT   
	
AS
BEGIN
	Insert into tbl_UserRegisteration (Name,Email,Password,Country,ContactNo,IsActive,IsDelete,CreatedDate)
	 values(@Name,@Email,@Password,@Country,@ContactNo,@IsActive,@IsDelete,GETDATE())	

END


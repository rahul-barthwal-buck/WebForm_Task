/*Author: Rahul Barthwal*/
/*Designation: Junior .NET Developer*/
/*Date: 06-01-2022*/
/*Objective: Creation of Stored Procedure*/

USE [WebFormPractice]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertCustomer]    Script Date: 1/6/2022 5:33:01 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_InsertCustomer]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertCustomer]    Script Date: 1/6/2022 5:33:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_InsertCustomer]
@Name NVARCHAR(30),
@Mobile INT,
@Email NVARCHAR(30),
@Password NVARCHAR(16),
@Age INT
AS
BEGIN
	INSERT INTO Customer(Name,Mobile,Email,Password,Age,CreatedDate) VALUES(@Name,@Mobile,@Email,@Password,@Age,GETDATE())
END


GO

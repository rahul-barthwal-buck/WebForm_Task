/*Author: Rahul Barthwal*/
/*Designation: Junior .NET Developer*/
/*Date: 06-01-2022*/
/*Objective: Creation of Stored Procedure*/

USE [WebFormPractice]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertCustomer]    Script Date: 1/7/2022 1:31:25 AM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_InsertCustomer]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertCustomer]    Script Date: 1/7/2022 1:31:25 AM ******/
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
	INSERT INTO Customers(Name,Mobile,Email,Password,Age,CreatedDate) VALUES(@Name,@Mobile,@Email,@Password,@Age,GETDATE())
END
GO


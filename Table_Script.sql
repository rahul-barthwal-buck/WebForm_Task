/*Author: Rahul Barthwal*/
/*Designation: Junior .NET Developer*/
/*Date: 06-01-2022*/
/*Objective: Creation of Table*/

USE [WebFormPractice]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 1/6/2022 5:30:21 PM ******/
DROP TABLE IF EXISTS [dbo].[Customer]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 1/6/2022 5:30:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[Mobile] [nvarchar](10) NOT NULL,
	[Email] [nvarchar](30) NOT NULL,
	[Password] [nvarchar](16) NOT NULL,
	[Age] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

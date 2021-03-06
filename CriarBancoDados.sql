CREATE DATABASE ATELIWARE
GO

USE ATELIWARE
GO

CREATE TABLE [dbo].[GitHub](
	[CodigoGitHub] [uniqueidentifier] NOT NULL,
	[CodigoOwner] [uniqueidentifier] NULL,
	[Id] [int] NULL,
	[Node_Id] [varchar](100) NULL,
	[Name] [varchar](100) NULL,
	[Full_Name] [varchar](100) NULL,
	[Description] [varchar](100) NULL,
	[Pushed_At] [varchar](100) NULL,
	[Created_At] [varchar](100) NULL,
	[Updated_At] [varchar](100) NULL,
	[Html_Url] [varchar](100) NULL,
	[Language] [varchar](100) NULL,
 CONSTRAINT [PK_GitHub] PRIMARY KEY CLUSTERED 
(
	[CodigoGitHub] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owner](
	[CodigoOwner] [uniqueidentifier] NOT NULL,
	[Login] [varchar](100) NULL,
	[Id] [int] NULL,
	[Node_Id] [varchar](100) NULL,
	[Avatar_Url] [varchar](100) NULL,
	[Type] [varchar](100) NULL,
	[Url] [varchar](100) NULL,
 CONSTRAINT [PK_Owner] PRIMARY KEY CLUSTERED 
(
	[CodigoOwner] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GitHub]  WITH CHECK ADD  CONSTRAINT [FK_GitHub_Owner] FOREIGN KEY([CodigoOwner])
REFERENCES [dbo].[Owner] ([CodigoOwner])
GO
ALTER TABLE [dbo].[GitHub] CHECK CONSTRAINT [FK_GitHub_Owner]
GO

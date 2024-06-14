USE [Credit_card]
GO

/****** Object:  Table [dbo].[credit_card_transacation]    Script Date: 6/14/2024 8:07:09 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[credit_card_transacation](
	[index] [smallint] NOT NULL,
	[city] [nvarchar](50) NOT NULL,
	[Date] [date] NOT NULL,
	[card_type] [nvarchar](50) NOT NULL,
	[exp_type] [nvarchar](50) NOT NULL,
	[gender] [nvarchar](50) NOT NULL,
	[amount] [bigint] NOT NULL
) ON [PRIMARY]
GO


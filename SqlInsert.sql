USE [Credit_card]
GO

INSERT INTO [dbo].[credit_card_transacation]
           ([index]
           ,[city]
           ,[Date]
           ,[card_type]
           ,[exp_type]
           ,[gender]
           ,[amount])
     VALUES
           (<index, smallint,>
           ,<city, nvarchar(50),>
           ,<Date, date,>
           ,<card_type, nvarchar(50),>
           ,<exp_type, nvarchar(50),>
           ,<gender, nvarchar(50),>
           ,<amount, bigint,>)
GO


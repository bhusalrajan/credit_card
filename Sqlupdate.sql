USE [Credit_card]
GO

UPDATE [dbo].[credit_card_transacation]
   SET [index] = <index, smallint,>
      ,[city] = <city, nvarchar(50),>
      ,[Date] = <Date, date,>
      ,[card_type] = <card_type, nvarchar(50),>
      ,[exp_type] = <exp_type, nvarchar(50),>
      ,[gender] = <gender, nvarchar(50),>
      ,[amount] = <amount, bigint,>
 WHERE <Search Conditions,,>
GO


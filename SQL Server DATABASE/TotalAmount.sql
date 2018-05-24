CREATE TABLE [dbo].[TotalAmount]
(
	[TotalAmountId] INT NOT NULL PRIMARY KEY, 
    [Amount] MONEY NOT NULL DEFAULT 0, 
    [rowguid] UNIQUEIDENTIFIER NOT NULL
)

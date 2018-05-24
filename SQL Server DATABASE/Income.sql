CREATE TABLE [dbo].[Income]
(
	[IncomeId] INT NOT NULL PRIMARY KEY, 
    [IncomeTypeId] INT NOT NULL, 
    [Amount] MONEY NOT NULL, 
    [IncomeDate] DATETIME NOT NULL, 
    [IncomeMonth] NVARCHAR(20) NULL, 
    [rowguid] NCHAR(10) NULL, 
    CONSTRAINT [FK_Income_IncomeType] FOREIGN KEY ([IncomeTypeId]) REFERENCES [IncomeType]([IncomeTypeId])
)

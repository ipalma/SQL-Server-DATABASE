CREATE TABLE [dbo].[IncomeType]
(
	[IncomeTypeId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [IncomeDescription] NVARCHAR(150) NOT NULL, 
    [rowguid] UNIQUEIDENTIFIER NOT NULL, 
    [ModifiedDate] DATETIME NOT NULL
)

CREATE TABLE [dbo].[PredefinedOutgoins]
(
	[PredefinedOutgoingId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Description] NVARCHAR(150) NOT NULL, 
    [OutgoingAmount] MONEY NOT NULL, 
    [rowguid] UNIQUEIDENTIFIER NOT NULL, 
    [ModifiedDate] DATETIME NOT NULL
)

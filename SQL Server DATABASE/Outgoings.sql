CREATE TABLE [dbo].[Outgoings]
(
	[OutgoingId] INT NOT NULL PRIMARY KEY, 
    [Description] NVARCHAR(150) NOT NULL,
	[OutgoingType] INT,
    [Amount] MONEY NOT NULL, 
    [OutgoingDate] DATETIME NOT NULL, 
    [rowguid] UNIQUEIDENTIFIER NOT NULL, 
    [ModifiedDate] DATETIME NOT NULL, 
    CONSTRAINT [FK_Outgoings_OutgoingType] FOREIGN KEY ([OutgoingType]) REFERENCES [OutgoingType]([OutgoingTypeId])
)

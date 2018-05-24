CREATE TABLE [dbo].[OutgoingType]
(
	[OutgoingTypeId] INT NOT NULL PRIMARY KEY, 
    [Description] NCHAR(10) NOT NULL, 
    [rowguid] UNIQUEIDENTIFIER NOT NULL, 
    [ModifiedDate] DATETIME NOT NULL
)

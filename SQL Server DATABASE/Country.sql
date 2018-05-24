CREATE TABLE [dbo].[Country]
(
	[CountryId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [CountryName] NVARCHAR(50) NOT NULL, 
    [CountryCode] CHAR(2) NOT NULL, 
    [rowguid] UNIQUEIDENTIFIER NOT NULL, 
    [ModifiedDate] DATETIME NOT NULL
)

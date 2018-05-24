CREATE TABLE [dbo].[Address]
(
	[AddressId] INT NOT NULL PRIMARY KEY IDENTITY(1, 20), 
    [AddressLine1] NVARCHAR(150) NOT NULL, 
    [AddressLine2] NVARCHAR(150) NULL, 
    [City] INT NOT NULL, 
    [PostalCode] NVARCHAR(15) NOT NULL, 
    [rowguid] UNIQUEIDENTIFIER NOT NULL, 
    [ModifiedDate] DATETIME NOT NULL, 
    CONSTRAINT [FK_Address_City] FOREIGN KEY ([City]) REFERENCES [City]([CityId])
)

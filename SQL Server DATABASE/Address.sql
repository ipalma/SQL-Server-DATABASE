CREATE TABLE [dbo].[Address]
(
	[AddressId] INT NOT NULL PRIMARY KEY IDENTITY(1, 20), 
    [AddressLine1] NVARCHAR(150) NOT NULL,
	[NumberLine1] NVARCHAR(10) NULL,
	[FloorLine1] NVARCHAR(10) NULL,
	[DoorLine1] NVARCHAR(10) NULL,
	[StairLine1] NVARCHAR(10) NULL,
    [AddressLine2] NVARCHAR(150) NULL, 
	[NumberLine2] NVARCHAR(10) NULL,
	[FloorLine2] NVARCHAR(10) NULL,
	[DoorLine2] NVARCHAR(10) NULL,
	[StairLine2] NVARCHAR(10) NULL,
    [City] INT NOT NULL, 
    [PostalCode] NVARCHAR(15) NOT NULL, 
    [rowguid] UNIQUEIDENTIFIER NOT NULL, 
    [ModifiedDate] DATETIME NOT NULL, 
    CONSTRAINT [FK_Address_City] FOREIGN KEY ([City]) REFERENCES [City]([CityId])
)

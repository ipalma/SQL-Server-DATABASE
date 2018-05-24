CREATE TABLE [dbo].[City]
(
	[CityId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [ProvinceId] INT NOT NULL, 
    [CityName] INT NOT NULL, 
    [rowguid] UNIQUEIDENTIFIER NOT NULL, 
    [ModifiedDate] DATETIME NOT NULL, 
    CONSTRAINT [FK_City_Province] FOREIGN KEY ([ProvinceId]) REFERENCES [Province]([ProvinceId])
)

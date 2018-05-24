CREATE TABLE [dbo].[Province]
(
	[ProvinceId] INT NOT NULL PRIMARY KEY, 
    [RegionId] INT NOT NULL, 
    [ProvinceName] NVARCHAR(50) NOT NULL, 
    [rowguid] UNIQUEIDENTIFIER NOT NULL, 
    [ModifiedDate] DATETIME NOT NULL, 
    CONSTRAINT [FK_Province_Region] FOREIGN KEY ([RegionId]) REFERENCES [Region]([RegionId])
)

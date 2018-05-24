CREATE TABLE [dbo].[Region]
(
	[RegionId] INT NOT NULL PRIMARY KEY, 
    [RegionName] NVARCHAR(50) NOT NULL, 
    [rowguid] UNIQUEIDENTIFIER NOT NULL, 
    [ModifiedDate] DATETIME NOT NULL
)

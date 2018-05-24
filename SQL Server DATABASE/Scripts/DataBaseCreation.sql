CREATE TABLE [dbo].[Country]
(
	[CountryId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [CountryName] NVARCHAR(50) NOT NULL, 
    [CountryCode] CHAR(2) NOT NULL, 
    [rowguid] UNIQUEIDENTIFIER NOT NULL, 
    [ModifiedDate] DATETIME NOT NULL
)

CREATE TABLE [dbo].[Region]
(
	[RegionId] INT NOT NULL PRIMARY KEY, 
    [RegionName] NVARCHAR(50) NOT NULL, 
    [rowguid] UNIQUEIDENTIFIER NOT NULL, 
    [ModifiedDate] DATETIME NOT NULL
)

CREATE TABLE [dbo].[Province]
(
	[ProvinceId] INT NOT NULL PRIMARY KEY, 
    [RegionId] INT NOT NULL, 
    [ProvinceName] NVARCHAR(50) NOT NULL, 
    [rowguid] UNIQUEIDENTIFIER NOT NULL, 
    [ModifiedDate] DATETIME NOT NULL, 
    CONSTRAINT [FK_Province_Region] FOREIGN KEY ([RegionId]) REFERENCES [Region]([RegionId])
)

CREATE TABLE [dbo].[City]
(
	[CityId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [ProvinceId] INT NOT NULL, 
    [CityName] INT NOT NULL, 
    [rowguid] UNIQUEIDENTIFIER NOT NULL, 
    [ModifiedDate] DATETIME NOT NULL, 
    CONSTRAINT [FK_City_Province] FOREIGN KEY ([ProvinceId]) REFERENCES [Province]([ProvinceId])
)

CREATE TABLE [dbo].[IncomeType]
(
	[IncomeTypeId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [IncomeDescription] NVARCHAR(150) NOT NULL, 
    [rowguid] UNIQUEIDENTIFIER NOT NULL, 
    [ModifiedDate] DATETIME NOT NULL
)

CREATE TABLE [dbo].[User]
(
	[UserId] INT NOT NULL PRIMARY KEY IDENTITY(1, 20), 
    [User] NVARCHAR(150) NOT NULL, 
    [Password] NVARCHAR(64) NULL, 
    [FirstName] NVARCHAR(150) NOT NULL, 
    [MiddleName] NVARCHAR(150) NULL, 
    [LastName] NVARCHAR(150) NOT NULL, 
    [SecondLastName] NVARCHAR(150) NULL, 
    [IdentityNumber] NVARCHAR(10) NOT NULL, 
    [BirthDate] DATETIME NOT NULL, 
    [Email] NVARCHAR(150) NOT NULL, 
    [rowguid] UNIQUEIDENTIFIER NOT NULL, 
    [Nationality] INT NOT NULL, 
    [CreateDate] DATETIME NOT NULL, 
    [ModifiedDate] DATETIME NOT NULL, 
    CONSTRAINT [FK_User_Country] FOREIGN KEY ([Nationality]) REFERENCES [Country]([CountryId])
)

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

CREATE TABLE [dbo].[UserAddress]
(
	[UserId] INT NOT NULL , 
    [AddressId] INT NOT NULL, 
    [rowguid] UNIQUEIDENTIFIER NOT NULL, 
    [ModifiedDate] DATETIME NOT NULL, 
    CONSTRAINT [PK_UserAddress] PRIMARY KEY ([UserId], [AddressId]), 
    CONSTRAINT [FK_UserAddress_User] FOREIGN KEY ([UserId]) REFERENCES [User]([UserId]), 
    CONSTRAINT [FK_UserAddress_Address] FOREIGN KEY ([AddressId]) REFERENCES [Address]([AddressId])
)

CREATE TABLE [dbo].[Income]
(
	[IncomeId] INT NOT NULL PRIMARY KEY, 
    [IncomeTypeId] INT NOT NULL, 
    [Amount] MONEY NOT NULL, 
    [IncomeDate] DATETIME NOT NULL, 
    [IncomeMonth] NVARCHAR(20) NULL, 
    [rowguid] NCHAR(10) NULL, 
    CONSTRAINT [FK_Income_IncomeType] FOREIGN KEY ([IncomeTypeId]) REFERENCES [IncomeType]([IncomeTypeId])
)

CREATE TABLE [dbo].[TotalAmount]
(
	[TotalAmountId] INT NOT NULL PRIMARY KEY, 
    [Amount] MONEY NOT NULL DEFAULT 0, 
    [rowguid] UNIQUEIDENTIFIER NOT NULL
)

CREATE TABLE [dbo].[OutgoingType]
(
	[OutgoingTypeId] INT NOT NULL PRIMARY KEY, 
    [Description] NCHAR(10) NOT NULL, 
    [rowguid] UNIQUEIDENTIFIER NOT NULL, 
    [ModifiedDate] DATETIME NOT NULL
)

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

CREATE TABLE [dbo].[PredefinedOutgoins]
(
	[PredefinedOutgoingId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Description] NVARCHAR(150) NOT NULL, 
    [OutgoingAmount] MONEY NOT NULL, 
    [rowguid] UNIQUEIDENTIFIER NOT NULL, 
    [ModifiedDate] DATETIME NOT NULL
)
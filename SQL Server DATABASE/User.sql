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

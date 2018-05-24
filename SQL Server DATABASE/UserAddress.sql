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

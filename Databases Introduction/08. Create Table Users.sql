CREATE TABLE [Users](
	[Id] INT PRIMARY KEY,
	[Username] VARCHAR(30) NOT NULL UNIQUE,
	[Password] VARCHAR(26) NOT NULL,
	[ProfilePicture] VARBINARY(MAX),
	CHECK (DATALENGTH([ProfilePicture]) <= 921600),
	[LastLoginTime] DATETIME2,
	[IsDeleted] CHAR(4)
)

INSERT INTO [Users] 
([Id], [Username], [Password], [ProfilePicture], 
[LastLoginTime], [IsDeleted])
VALUES 
(1, 'hristo04', 'hristo1', NULL, NULL, NULL),
(2, 'hristo05', 'hristo1', NULL, NULL, NULL),
(3, 'hristo06', 'hristo1', NULL, NULL, NULL),
(4, 'hristo07', 'hristo1', NULL, NULL, NULL),
(5, 'hristo08', 'hristo1', NULL, NULL, NULL)
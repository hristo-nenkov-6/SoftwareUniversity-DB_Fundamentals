CREATE TABLE [People](
	[Id] INT PRIMARY KEY,
	[Name] NVARCHAR(200) NOT NULL,
	[Picture] VARBINARY(MAX),
	CHECK (DATALENGTH([Picture]) <= 2000000),
	[Height] DECIMAL(3, 2),
	[Weight] DECIMAL(5, 2),
	[Gender] CHAR(1) NOT NULL,
	CHECK ([Gender] = 'm' OR [Gender] = 'f'),
	[Birthdate] DATE NOT NULL,
	[Biography] NVARCHAR(MAX)
)

INSERT INTO [People] 
([Id], [Name], [Picture], [Height], 
[Weight], [Gender], [Birthdate], [Biography])
VALUES 
(1, 'Hristo', NULL, 1.75, 110.22, 'm', '2021-12-01', NULL),
(2, 'Ivan', NULL, 1.75, 110.22, 'm', '2021-12-01', NULL),
(3, 'Momchil', NULL, 1.75, 110.22, 'm', '2021-12-01', NULL),
(4, 'Alex', NULL, 1.75, 110.22, 'm', '2021-12-01', NULL),
(5, 'Petko', NULL, 1.75, 110.22, 'f', '2021-12-01', NULL)
CREATE TABLE Models(
	ModelID INT NOT NULL
	,[Name] CHAR(20)
	,ManifacturerID INT
)

CREATE TABLE Manufacturers(
	ManufacturerID INT NOT NULL
	,[Name] CHAR(20)
	,EstablishedOn DATE
)

INSERT INTO Models(ModelID, [Name], ManifacturerID)
VALUES
(101, 'X1', 1),
(102, 'X6', 1),
(103, 'Model S', 2),
(104, 'Model X', 2),
(105, 'Model 3', 2),
(106, 'Nova', 3)

INSERT INTO Manufacturers(ManufacturerID, [Name], EstablishedOn)
VALUES
(1, 'BMW', '1916-03-07'),
(2, 'Tesla', '2003-01-01'),
(3, 'Lada', '1966-05-01')

ALTER TABLE Models
ADD PRIMARY KEY (ModelID)

ALTER TABLE Manufacturers
ADD PRIMARY KEY (ManufacturerID)

ALTER TABLE Models
ADD FOREIGN KEY (ManifacturerID) REFERENCES Manufacturers(ManufacturerID)

CREATE TABLE OrderItems(
	OrderID INT NOT NULL,
	ItemID INT NOT NULL
)

CREATE TABLE Orders(
	OrderID INT NOT NULL,
	CustomerID INT
)

CREATE TABLE Items(
	ItemID INT NOT NULL,
	[Name] VARCHAR(50),
	ItemTypeID INT NOT NULL
)

CREATE TABLE Customers(
	CustomerID INT NOT NULL,
	[Name] VARCHAR(50),
	Birthday DATE,
	CityID INT
)

CREATE TABLE ItemTypes(
	ItemTypeID INT NOT NULL,
	[Name] VARCHAR(50)
)

CREATE TABLE Cities(
	CityID INT NOT NULL,
	[Name] VARCHAR(50)
)

ALTER TABLE OrderItems
ADD CONSTRAINT PK_OrderID_ItemID PRIMARY KEY(OrderID, ItemID)

ALTER TABLE Orders
ADD PRIMARY KEY(OrderID)

ALTER TABLE Items
ADD PRIMARY KEY(ItemID)

ALTER TABLE Customers
ADD PRIMARY KEY(CustomerID)

ALTER TABLE ItemTypes
ADD PRIMARY KEY(ItemTypeID)

ALTER TABLE Cities
ADD PRIMARY KEY(CityID)

ALTER TABLE OrderItems
ADD 
CONSTRAINT FK_OrderID_Orders
FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
CONSTRAINT FK_ItemID_Items
FOREIGN KEY (ItemID) REFERENCES Items(ItemID)

ALTER TABLE Items
ADD 
CONSTRAINT FK_ItemTypeID_ItemTypes 
FOREIGN KEY (ItemTypeID) REFERENCES ItemTypes(ItemTypeID)

ALTER TABLE Orders
ADD 
CONSTRAINT FK_OrderID_Customers
FOREIGN KEY (OrderID) REFERENCES Customers(CustomerID)

ALTER TABLE Customers
ADD 
CONSTRAINT FK_CityID_Cities
FOREIGN KEY (CityID) REFERENCES Cities(CityID)
CREATE TABLE Products (
	ID INT PRIMARY KEY,
	"Name" TEXT
);

INSERT INTO Products
VALUES
	(1, 'Casio FX-82ES Plus'),
	(2, 'A4Tech V7'),
	(3, 'AKG Lyra');

CREATE TABLE Categories (
	ID INT PRIMARY KEY,
	"Name" TEXT
);

INSERT INTO Categories
VALUES
	(1, 'Calculator'),
	(2, 'Mouse'),
	(3, 'Microphone');

CREATE TABLE ProductCategories (
	ProductID INT FOREIGN KEY REFERENCES Products(ID),
	CategoryID INT FOREIGN KEY REFERENCES Categories(ID),
	PRIMARY KEY (ProductID, CategoryID)
);

INSERT INTO ProductCategories
VALUES
	(1, 1),
	(2, 2),
	(3, 3);

SELECT P."Name", C."Name"
FROM Products P
LEFT JOIN ProductCategories PC
	ON P.ID = PC.ProductID
LEFT JOIN Categories C
	ON PC.CategoryID = C.ID;
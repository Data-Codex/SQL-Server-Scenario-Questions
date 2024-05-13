
---------------------------------------------------------------------------------------------------

--TABLE CREATION SCRIPT & INSERT STATEMENTS FOR Products TABLE

---------------------------------------------------------------------------------------------------

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255),
    CategoryID INT,
	InventoryQuantity INT,
    CONSTRAINT FK_CategoryID FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);


-- Insert queries for Products table

INSERT INTO Products (ProductID, ProductName, CategoryID, InventoryQuantity) VALUES (1, 'Laptop', 1, 50);
INSERT INTO Products (ProductID, ProductName, CategoryID, InventoryQuantity) VALUES (2, 'Smartphone', 1, 100);
INSERT INTO Products (ProductID, ProductName, CategoryID, InventoryQuantity) VALUES (3, 'T-Shirt', 2, 200);
INSERT INTO Products (ProductID, ProductName, CategoryID, InventoryQuantity) VALUES (4, 'Jeans', 2, 150);
INSERT INTO Products (ProductID, ProductName, CategoryID, InventoryQuantity) VALUES (5, 'Refrigerator', 3, 30);
INSERT INTO Products (ProductID, ProductName, CategoryID, InventoryQuantity) VALUES (6, 'Microwave Oven', 3, 40);
INSERT INTO Products (ProductID, ProductName, CategoryID, InventoryQuantity) VALUES (7, 'Fiction Book', 4, 100);
INSERT INTO Products (ProductID, ProductName, CategoryID, InventoryQuantity) VALUES (8, 'Cookbook', 4, 80);
INSERT INTO Products (ProductID, ProductName, CategoryID, InventoryQuantity) VALUES (9, 'Football', 5, 75);
INSERT INTO Products (ProductID, ProductName, CategoryID, InventoryQuantity) VALUES (10, 'Tennis Racket', 5, 60);


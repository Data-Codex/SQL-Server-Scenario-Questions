
---------------------------------------------------------------------------------------------------

--TABLE CREATION SCRIPT & INSERT STATEMENTS FOR Products TABLE

---------------------------------------------------------------------------------------------------

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255),
    CategoryID INT,
    CONSTRAINT FK_CategoryID FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);


-- Insert queries for Products table
INSERT INTO Products (ProductID, ProductName, CategoryID) VALUES (1, 'Laptop', 1);
INSERT INTO Products (ProductID, ProductName, CategoryID) VALUES (2, 'Smartphone', 1);
INSERT INTO Products (ProductID, ProductName, CategoryID) VALUES (3, 'T-Shirt', 2);
INSERT INTO Products (ProductID, ProductName, CategoryID) VALUES (4, 'Jeans', 2);
INSERT INTO Products (ProductID, ProductName, CategoryID) VALUES (5, 'Refrigerator', 3);
INSERT INTO Products (ProductID, ProductName, CategoryID) VALUES (6, 'Microwave Oven', 3);
INSERT INTO Products (ProductID, ProductName, CategoryID) VALUES (7, 'Fiction Book', 4);
INSERT INTO Products (ProductID, ProductName, CategoryID) VALUES (8, 'Cookbook', 4);
INSERT INTO Products (ProductID, ProductName, CategoryID) VALUES (9, 'Football', 5);
INSERT INTO Products (ProductID, ProductName, CategoryID) VALUES (10, 'Tennis Racket', 5);

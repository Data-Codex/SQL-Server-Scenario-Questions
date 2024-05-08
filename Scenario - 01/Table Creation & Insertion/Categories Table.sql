
---------------------------------------------------------------------------------------------------

--TABLE CREATION SCRIPT & INSERT STATEMENTS FOR Categories TABLE

---------------------------------------------------------------------------------------------------

CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(255)
);

-- Insert queries for Categories table
INSERT INTO Categories (CategoryID, CategoryName) VALUES (1, 'Electronics');
INSERT INTO Categories (CategoryID, CategoryName) VALUES (2, 'Clothing');
INSERT INTO Categories (CategoryID, CategoryName) VALUES (3, 'Home Appliances');
INSERT INTO Categories (CategoryID, CategoryName) VALUES (4, 'Books');
INSERT INTO Categories (CategoryID, CategoryName) VALUES (5, 'Sports Equipment');
INSERT INTO Categories (CategoryID, CategoryName) VALUES (6, 'Beauty and Personal Care');
INSERT INTO Categories (CategoryID, CategoryName) VALUES (7, 'Toys and Games');

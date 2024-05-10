
---------------------------------------------------------------------------------------------------

--TABLE CREATION SCRIPT & INSERT STATEMENTS FOR SalesTransactions TABLE

---------------------------------------------------------------------------------------------------


CREATE TABLE SalesTransactions (
    TransactionID INT PRIMARY KEY,
    ProductID INT,
    CustomerID INT,
    RegionID INT,
    SaleDate DATE,
    Quantity INT,
    UnitPrice DECIMAL(10, 2),
    CostPrice DECIMAL(10, 2),
    CONSTRAINT FK_ProductID FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    CONSTRAINT FK_CustomerID FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    CONSTRAINT FK_RegionID FOREIGN KEY (RegionID) REFERENCES Regions(RegionID)
);



-- Insert queries for SalesTransactions table
INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (1, 1, 1, 1, '2023-01-05', 2, 1200.00, 800.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (2, 2, 2, 2, '2023-02-10', 3, 800.00, 500.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (3, 3, 3, 3, '2023-03-15', 1, 25.00, 15.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (4, 4, 4, 4, '2023-04-20', 2, 50.00, 30.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (5, 5, 5, 5, '2023-05-25', 1, 1200.00, 800.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (6, 6, 6, 6, '2023-06-30', 3, 200.00, 150.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (7, 7, 7, 1, '2023-07-05', 1, 15.00, 10.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (8, 8, 8, 2, '2023-08-10', 2, 30.00, 20.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (9, 9, 9, 3, '2023-09-15', 1, 40.00, 25.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (10, 10, 10, 4, '2023-10-20', 2, 100.00, 70.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (11, 1, 11, 5, '2023-11-25', 1, 1200.00, 800.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (12, 2, 12, 6, '2023-12-30', 3, 800.00, 500.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (13, 3, 13, 1, '2024-01-05', 1, 25.00, 15.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (14, 4, 14, 2, '2024-02-10', 2, 50.00, 30.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (15, 5, 15, 3, '2024-03-15', 1, 1200.00, 800.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (16, 6, 16, 4, '2024-04-20', 3, 200.00, 150.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (17, 7, 17, 5, '2024-05-25', 1, 15.00, 10.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (18, 8, 18, 6, '2024-06-30', 2, 30.00, 20.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (19, 9, 19, 1, '2024-07-05', 1, 40.00, 25.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (20, 10, 20, 2, '2024-08-10', 2, 100.00, 70.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (21, 1, 1, 1, '2024-09-15', 2, 1200.00, 800.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (22, 2, 2, 2, '2024-10-20', 3, 800.00, 500.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (23, 3, 3, 3, '2024-11-25', 1, 25.00, 15.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (24, 4, 4, 4, '2024-12-30', 2, 50.00, 30.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (25, 5, 5, 5, '2025-01-05', 1, 1200.00, 800.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (26, 6, 6, 6, '2025-02-10', 3, 200.00, 150.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (27, 7, 7, 1, '2025-03-15', 1, 15.00, 10.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (28, 8, 8, 2, '2025-04-20', 2, 30.00, 20.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (29, 9, 9, 3, '2025-05-25', 1, 40.00, 25.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (30, 10, 10, 4, '2025-06-30', 2, 100.00, 70.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (31, 1, 11, 5, '2025-07-05', 1, 1200.00, 800.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (32, 2, 12, 6, '2025-08-10', 3, 800.00, 500.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (33, 3, 13, 1, '2025-09-15', 1, 25.00, 15.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (34, 4, 14, 2, '2025-10-20', 2, 50.00, 30.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (35, 5, 15, 3, '2025-11-25', 1, 1200.00, 800.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (36, 6, 16, 4, '2025-12-30', 3, 200.00, 150.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (37, 7, 17, 5, '2026-01-05', 1, 15.00, 10.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (38, 8, 18, 6, '2026-02-10', 2, 30.00, 20.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (39, 9, 19, 1, '2026-03-15', 1, 40.00, 25.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES (40, 10, 20, 2, '2026-04-20', 2, 100.00, 70.00);


INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES
    (1001, 1, 1, 1, '2024-05-01', 2, 25.00, 20.00), 
    (1002, 4, 1, 1, '2024-05-05', 1, 35.00, 30.00),
    (1003, 7, 1, 2, '2024-05-10', 3, 20.00, 15.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES
    (1004, 2, 2, 1, '2024-05-02', 1, 40.00, 35.00),
    (1005, 5, 2, 2, '2024-05-06', 2, 30.00, 25.00), 
    (1006, 8, 2, 3, '2024-05-11', 1, 15.00, 12.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES
    (1007, 3, 3, 2, '2024-05-03', 3, 30.00, 25.00), 
    (1008, 6, 3, 3, '2024-05-07', 1, 25.00, 20.00), 
    (1009, 9, 3, 1, '2024-05-12', 2, 18.00, 15.00);

INSERT INTO SalesTransactions (TransactionID, ProductID, CustomerID, RegionID, SaleDate, Quantity, UnitPrice, CostPrice)
VALUES
    (1010, 4, 4, 1, '2024-05-04', 1, 35.00, 30.00),  
    (1011, 7, 4, 2, '2024-05-08', 2, 20.00, 15.00),  
    (1012, 10, 4, 3, '2024-05-13', 1, 40.00, 35.00); 

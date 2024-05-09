
---------------------------------------------------------------------------------------------------

--TABLE CREATION SCRIPT & INSERT STATEMENTS FOR Regions TABLE

---------------------------------------------------------------------------------------------------

CREATE TABLE Regions (
    RegionID INT PRIMARY KEY,
    RegionName VARCHAR(255),
    Country VARCHAR(255)
);

-- Insert queries for Regions table
INSERT INTO Regions (RegionID, RegionName, Country) VALUES (1, 'North America', 'United States');
INSERT INTO Regions (RegionID, RegionName, Country) VALUES (2, 'Europe', 'United Kingdom');
INSERT INTO Regions (RegionID, RegionName, Country) VALUES (3, 'Asia', 'Japan');
INSERT INTO Regions (RegionID, RegionName, Country) VALUES (4, 'South America', 'Brazil');
INSERT INTO Regions (RegionID, RegionName, Country) VALUES (5, 'Africa', 'South Africa');
INSERT INTO Regions (RegionID, RegionName, Country) VALUES (6, 'Oceania', 'Australia');

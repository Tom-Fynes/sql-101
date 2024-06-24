-- Create database if not exists
CREATE DATABASE IF NOT EXISTS SQL101;

-- Use the database
USE SQL101;

-- Create tables
CREATE TABLE AddressType (
    AddressTypeID INT PRIMARY KEY,
    AddressType VARCHAR(50)
);


CREATE TABLE Address (
    AddressID INT PRIMARY KEY,
    AddressLine1 VARCHAR(100),
    AddressLine2 VARCHAR(100),
    City VARCHAR(50),
    County VARCHAR(50),
    PostCode VARCHAR(10)
    AddressTypeID INT,
    FOREIGN KEY (AddressTypeID) REFERENCES AddressType (AddressTypeID)
);


CREATE TABLE LocationType (
    LocationTypeID INT PRIMARY KEY,
    LocationType VARCHAR(50)
);


CREATE TABLE Location (
    LocationID INT PRIMARY KEY,
    LocationName VARCHAR(100),
    LocationTypeID INT,
    AddressID INT,
    FOREIGN KEY (LocationTypeID) REFERENCES LocationType (LocationTypeID),
    FOREIGN KEY (AddressID) REFERENCES Address (AddressID)
);


CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100),
    LocationID VARCHAR(100),
    FOREIGN KEY (LocationID) REFERENCES Location (LocationID)
);


CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    AddressID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    Salary DECIMAL(10, 2),
    ContractStartDate DATE,
    ContractEndDate DATE,
    FOREIGN KEY (AddressID) REFERENCES Address (AddressID),
    FOREIGN KEY (DepartmentID) REFERENCES Departments (DepartmentID)
);


CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    AddressID INT,
    FOREIGN KEY (AddressID) REFERENCES Address (AddressID)
);


CREATE TABLE ProductCategories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50)
);


CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    CategoryID INT,
    Price DECIMAL(10, 2)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers (CustomerID)
);


CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders (OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products (ProductID)
);

-- Insert Data

INSERT INTO AddressType (AddressTypeID, AddressType)
VALUES
    (1, 'Emplyee'),
    (2, 'Customer'),
    (3, 'Supplier'),
    (4, 'Internal');


INSERT INTO Address (AddressID, AddressLine1, AddressLine2, City, County, PostCode, AddressTypeID)
VALUES 
    (1, '123 Main Street', 'Apt 1', 'London', 'Greater London', 'SW1A 1AA', 1),
    (2, '456 High Street', NULL, 'Manchester', 'Greater Manchester', 'M1 1AA', 1),
    (3, '789 Park Avenue', 'Suite 100', 'Birmingham', 'West Midlands', 'B1 1AA', 1),
    (4, '101 Oxford Street', NULL, 'Liverpool', 'Merseyside', 'L1 1AA', 1),
    (5, '202 Regent Street', 'Floor 2', 'Leeds', 'West Yorkshire', 'LS1 1AA', 1),
    (6, '303 Bond Street', NULL, 'Sheffield', 'South Yorkshire', 'S1 1AA', 1),
    (7, '404 Baker Street', 'Flat 3', 'Bristol', 'Bristol', 'BS1 1AA', 1),
    (8, '505 King Street', NULL, 'Coventry', 'West Midlands', 'CV1 1AA', 1),
    (9, '606 Queen Street', 'Unit 5', 'Nottingham', 'Nottinghamshire', 'NG1 1AA', 1),
    (10, '707 Prince Street', NULL, 'Newcastle', 'Tyne and Wear', 'NE1 1AA', 1),
    (11, '808 Duke Street', 'Suite 200', 'Leicester', 'Leicestershire', 'LE1 1AA', 1),
    (12, '909 Earl Street', NULL, 'Southampton', 'Hampshire', 'SO1 1AA', 2),
    (13, '111 King Street', 'Apt 2', 'Brighton', 'East Sussex', 'BN1 1AA', 1),
    (14, '222 Queen Street', NULL, 'Oxford', 'Oxfordshire', 'OX1 1AA', 2),
    (15, '333 Prince Street', 'Floor 3', 'Cambridge', 'Cambridgeshire', 'CB1 1AA', 1),
    (16, '444 Duke Street', NULL, 'York', 'North Yorkshire', 'YO1 1AA', 1),
    (17, '555 Earl Street', 'Flat 4', 'Cardiff', 'South Glamorgan', 'CF1 1AA', 1),
    (18, '666 King Street', NULL, 'Edinburgh', 'Midlothian', 'EH1 1AA', 2),
    (19, '777 Queen Street', 'Unit 6', 'Glasgow', 'Lanarkshire', 'G1 1AA', 3),
    (20, '888 Prince Street', NULL, 'Belfast', 'County Antrim', 'BT1 1AA', 4);


INSERT INTO LocationType (LocationTypeID, LocationType)
VALUES
    (1, 'Office'),
    (2, 'Warehouse'),
    (3, 'Store');


INSERT INTO Location (LocationID, LocationName, LocationTypeID, AddressID)
VALUES
    (1, 'Head Office', 1, 1),
    (2, 'Branch Office', 1, 2),
    (3, 'Main Warehouse', 2, 3),
    (4, 'Retail Store', 3, 4),
    (5, 'Distribution Center', 2, 5),
    (6, 'Regional Office', 1, 6),
    (7, 'Factory', 2, 7),
    (8, 'Showroom', 3, 8),
    (9, 'Service Center', 1, 9),
    (10, 'Call Center', 1, 10),
    (11, 'Training Center', 1, 11),
    (12, 'Regional Warehouse', 2, 12),
    (13, 'Outlet Store', 3, 13),
    (14, 'Repair Center', 1, 14),
    (15, 'Distribution Hub', 2, 15),
    (16, 'Service Point', 1, 16),
    (17, 'Collection Point', 1, 17),
    (18, 'Regional Store', 3, 18),
    (19, 'Service Station', 1, 19),
    (20, 'Regional Distribution Center', 2, 20);

 
INSERT INTO Departments (DepartmentID, DepartmentName, LocationID)
VALUES
    (1, 'HR', 1),
    (2, 'Finance', 2),
    (3, 'Marketing', 3),
    (4, 'Sales', 4),
    (5, 'IT', 5),
    (6, 'Operations', 6),
    (7, 'Customer Service', 7),
    (8, 'Logistics', 8),
    (9, 'Procurement', 9),
    (10, 'Quality Assurance', 10);


INSERT INTO Employees (EmployeeID, AddressID, FirstName, LastName, DepartmentID, Salary, ContractStartDate, ContractEndDate)
VALUES
    (1, 1, 'Alice', 'Johnson', 1, 50000.00, '2023-01-01', NULL),
    (2, 2, 'Bob', 'Smith', 2, 60000.00, '2023-02-01', NULL),
    (3, 3, 'Charlie', 'Williams', 3, 70000.00, '2023-03-01', NULL),
    (4, 4, 'David', 'Jones', 4, 80000.00, '2023-04-01', NULL),
    (5, 5, 'Eve', 'Brown', 5, 90000.00, '2023-05-01', NULL),
    (6, 6, 'Frank', 'Davis', 6, 100000.00, '2023-06-01', NULL),
    (7, 7, 'Grace', 'Miller', 7, 110000.00, '2023-07-01', NULL),
    (8, 8, 'Henry', 'Wilson', 8, 120000.00, '2023-08-01', NULL),
    (9, 9, 'Ivy', 'Moore', 9, 130000.00, '2023-09-01', NULL),
    (10, 10, 'Jack', 'Taylor', 10, 140000.00, '2023-10-01', NULL),
    (11, 11, 'Kate', 'Anderson', 1, 50000.00, '2023-01-01', NULL),
    (12, 12, 'Leo', 'Clark', 2, 60000.00, '2023-02-01', NULL),
    (13, 13, 'Mia', 'Evans', 3, 70000.00, '2023-03-01', NULL),
    (14, 14, 'Noah', 'Green', 4, 80000.00, '2023-04-01', NULL),
    (15, 15, 'Olivia', 'Hill', 5, 90000.00, '2023-05-01', NULL),
    (16, 16, 'Peter', 'King', 6, 100000.00, '2023-06-01', NULL),
    (17, 17, 'Quinn', 'Lee', 7, 110000.00, '2023-07-01', NULL),
    (18, 18, 'Ryan', 'Martin', 8, 120000.00, '2023-08-01', NULL),
    (19, 19, 'Sophia', 'Nelson', 9, 130000.00, '2023-09-01', NULL),
    (20, 20, 'Thomas', 'Owen', 10, 140000.00, '2023-10-01', NULL),
    (21, 1, 'Alice', 'Johnson', 1, 50000.00, '2023-01-01', NULL),
    (22, 2, 'Bob', 'Smith', 2, 60000.00, '2023-02-01', NULL),
    (23, 3, 'Charlie', 'Williams', 3, 70000.00, '2023-03-01', NULL),
    (24, 4, 'David', 'Jones', 4, 80000.00, '2023-04-01', NULL),
    (25, 5, 'Eve', 'Brown', 5, 90000.00, '2023-05-01', NULL),
    (26, 6, 'Frank', 'Davis', 6, 100000.00, '2023-06-01', NULL),
    (27, 7, 'Grace', 'Miller', 7, 110000.00, '2023-07-01', NULL),
    (28, 8, 'Henry', 'Wilson', 8, 120000.00, '2023-08-01', '2023-08-14'),
    (29, 9, 'Ivy', 'Moore', 9, 130000.00, '2023-09-01', NULL),
    (30, 10, 'Jack', 'Taylor', 10, 140000.00, '2023-10-01', NULL),
    (31, 11, 'Kate', 'Anderson', 1, 50000.00, '2023-01-01', NULL),
    (32, 12, 'Leo', 'Clark', 2, 60000.00, '2023-02-01', NULL),
    (33, 13, 'Mia', 'Evans', 3, 70000.00, '2023-03-01', NULL),
    (34, 14, 'Noah', 'Green', 4, 80000.00, '2023-04-01', NULL),
    (35, 15, 'Olivia', 'Hill', 5, 90000.00, '2023-05-01', NULL),
    (36, 16, 'Peter', 'King', 6, 100000.00, '2023-06-01', NULL),
    (37, 17, 'Quinn', 'Lee', 7, 110000.00, '2023-07-01', NULL),
    (38, 18, 'Ryan', 'Martin', 8, 120000.00, '2023-08-01', NULL),
    (39, 19, 'Sophia', 'Nelson', 9, 130000.00, '2023-09-01', NULL),
    (40, 20, 'Thomas', 'Owen', 10, 140000.00, '2023-10-01', NULL),
    (41, 1, 'Alice', 'Johnson', 1, 50000.00, '2023-01-01', NULL),
    (42, 2, 'Bob', 'Smith', 2, 60000.00, '2023-02-01', NULL),
    (43, 3, 'Charlie', 'Williams', 3, 70000.00, '2023-03-01', '2025-06-01'),
    (44, 4, 'David', 'Jones', 4, 80000.00, '2023-04-01', NULL),
    (45, 5, 'Eve', 'Brown', 5, 90000.00, '2023-05-01', NULL),
    (46, 6, 'Frank', 'Davis', 6, 100000.00, '2023-06-01', NULL),
    (47, 7, 'Grace', 'Miller', 7, 110000.00, '2023-07-01', NULL),
    (48, 8, 'Henry', 'Wilson', 8, 120000.00, '2023-08-01', NULL),
    (49, 9, 'Ivy', 'Moore', 9, 130000.00, '2023-09-01', NULL),
    (50, 10, 'Jack', 'Taylor', 10, 140000.00, '2023-10-01', NULL);



INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, AddressID)
VALUES
    (101, 'Alice', 'Johnson', 'sample@sample.com', '00000000000', 12),
    (102, 'Bob', 'Smith', 'sample@sample.com', '00000000000', 13)


INSERT INTO ProductCategories (CategoryID, CategoryName)
VALUES
    (1, 'Electronics'),
    (2, 'Clothing'),
    (3, 'Books'),
    (4, 'Toys'),
    (5, 'Furniture');


INSERT INTO Products (ProductID, ProductName, CategoryID, Price)
VALUES
    (1, 'Smartphone', 1, 500.00),
    (2, 'Laptop', 1, 1000.00),
    (3, 'Tablet', 1, 300.00),
    (4, 'Smartwatch', 1, 200.00),
    (5, 'T-shirt', 2, 20.00),
    (6, 'Jeans', 2, 50.00),
    (7, 'Dress', 2, 40.00),
    (8, 'Shoes', 2, 30.00),
    (9, 'Novel', 3, 10.00),
    (10, 'Textbook', 3, 50.00),
    (11, 'Children''s Book', 3, 15.00),
    (12, 'Action Figure', 4, 15.00),
    (13, 'Doll', 4, 20.00),
    (14, 'Board Game', 4, 30.00),
    (15, 'Sofa', 5, 500.00),
    (16, 'Bed', 5, 300.00),
    (17, 'Dining Table', 5, 400.00),
    (18, 'Wardrobe', 5, 200.00);


INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
    (1001, 101, '2023-01-01', 100.00),
    (1002, 101, '2023-02-01', 200.00),
    (1003, 101, '2023-03-01', 300.00),
    (1004, 101, '2023-04-01', 400.00),
    (1005, 101, '2023-05-01', 500.00),
    (1006, 102, '2023-06-01', 600.00),
    (1007, 102, '2023-07-01', 700.00),
    (1008, 102, '2023-08-01', 800.00),
    (1009, 102, '2023-09-01', 900.00),
    (1010, 102, '2023-10-01', 1000.00);


INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity, UnitPrice)
VALUES
    (1, 1001, 1, 1, 500.00),
    (2, 1001, 2, 1, 1000.00),
    (3, 1002, 3, 2, 300.00),
    (4, 1002, 4, 1, 200.00),
    (5, 1003, 5, 3, 20.00),
    (6, 1003, 6, 1, 50.00),
    (7, 1004, 7, 2, 40.00),
    (8, 1004, 8, 1, 30.00),
    (9, 1005, 9, 5, 10.00),
    (10, 1005, 10, 1, 50.00),
    (11, 1006, 11, 3, 15.00),
    (12, 1006, 12, 1, 15.00),
    (13, 1007, 13, 2, 20.00),
    (14, 1007, 14, 1, 30.00),
    (15, 1008, 15, 1, 500.00),
    (16, 1008, 16, 1, 300.00),
    (17, 1009, 17, 1, 400.00),
    (18, 1009, 18, 1, 200.00);
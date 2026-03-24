CREATE DATABASE Poultry_1

Create Table Dim_Date (
DateID INT PRIMARY KEY,
FullDate Date,
Day int,
Month int,
Year int
)

CREATE TABLE Dim_Customer (
CustomerID INT PRIMARY KEY ,
CustomerName varchar(50),
Contact varchar(50),
City varchar(50)
)

Create Table Dim_Product (
	ProductID INT PRIMARY KEY,
	ProductName varchar(100),
	Category varchar(100),
	Price DECIMAL(10,2)
	)

	CREATE TABLE Dim_Supplier (
	SupplierID INT PRIMARY KEY,
	SupplierName varchar(100),
	FarmLocation varchar(100)
	)

	CREATE TABLE Poultry_Sales_Fact (
	SaleID INT PRIMARY KEY,
	DateID INT,
	CustomerID INT,
	ProductID INT,
	SupplierID INT,
	LocationID INT,
	Quantity INT,
	TotalAmount DECIMAL(10,2),
	
	
	FOREIGN KEY (DateID) REFERENCES Dim_Date(DateID),
	FOREIGN KEY (CustomerID) REFERENCES Dim_Customer(CustomerID),
	FOREIGN KEY (ProductID) REFERENCES Dim_Product(ProductID),
	FOREIGN KEY (SupplierID) REFERENCES Dim_Supplier(SupplierID)
	);

	INSERT INTO Dim_Product VALUES
	(1, 'Chicken', 'Meat', 80),
	(2, 'Eggs' , 'Dairy' ,65),
	(3, 'Turkey', 'Meat', 120.00),
    (4, 'Duck', 'Meat', 95.00),
    (5, 'Quail Eggs', 'Dairy', 60.00),
    (6, 'Chicken Wings', 'Meat', 70.00),
    (7, 'Chicken Breast', 'Meat', 85.00),
     (9, 'Brown Eggs', 'Dairy', 55.00),
    (10, 'Organic Chicken', 'Meat', 110.00);
	

	INSERT INTO Dim_Customer VALUES
	(1, 'Simone Thore', '078564888', 'CapeTown'),
	(2, 'Sarah Smith', '987654321', 'Johannesburg'),
     (3, 'Michael Brown', '456123789', 'Durban'),
    (4, 'Emily Davis', '321654987', 'Pretoria'),
    (5, 'David Wilson', '654987321', 'Port Elizabeth'),
    (6, 'Linda Johnson', '741258963', 'Bloemfontein'),
    (7, 'Chris Evans', '852369741', 'Polokwane'),
    (8, 'Jessica Taylor', '159357486', 'Nelspruit'),
    (9, 'Daniel Anderson', '753159852', 'Kimberley'),
    (10, 'Sophia Martinez', '951753486', 'East London');
	 
	 INSERT INTO Dim_Date VALUES
	 (1, '2026-03-18', 18, 3, 2026),
	 (2, '2026-03-21', 21, 3, 2026),
     (3, '2026-03-22', 22, 3, 2026),
     (4, '2026-03-23', 23, 3, 2026),
     (5, '2026-03-24', 24, 3, 2026),
     (6, '2026-03-25', 25, 3, 2026),
     (7, '2026-03-26', 26, 3, 2026),
     (8, '2026-03-27', 27, 3, 2026),
     (9, '2026-03-28', 28, 3, 2026),
    (10, '2026-03-29', 29, 3, 2026);

	 INSERT INTO Dim_Supplier VALUES
	 (1, 'Happy Farm', 'Western Cape'),
	 (2, 'Green Valley Farm', 'Gauteng'),
     (3, 'Sunrise Poultry', 'KwaZulu-Natal'),
     (4, 'Golden Eggs Farm', 'Eastern Cape'),
     (5, 'Fresh Birds Ltd', 'Western Cape'),
      (6, 'Farm Fresh Co.', 'Free State'),
     (7, 'Premium Poultry', 'Limpopo'),
     (8, 'Eco Farms', 'Mpumalanga'),
     (9, 'Healthy Chickens Ltd', 'Northern Cape'),
     (10, 'Best Poultry Suppliers', 'North West');

	 INSERT INTO Poultry_Sales_Fact VALUES
	 (1, 1, 12, 2, 45, 32, 16, 4500.450),
	 (2, 2, 2, 2, 2, 2, 20, 1000.00),
     (3, 3, 3, 3, 3, 3, 5, 600.00),
     (4, 4, 4, 4, 4, 4, 8, 760.00),
      (5, 5, 5, 5, 5, 5, 12, 720.00),
      (6, 6, 6, 6, 6, 6, 15, 1050.00),
     (7, 7, 7, 7, 7, 7, 9, 765.00),
     (8, 8, 8, 8, 8, 8, 11, 990.00),
     (9, 9, 9, 9, 9, 9, 25, 1375.00),
    (10, 10, 10, 10, 10, 10, 7, 770.00);

	 
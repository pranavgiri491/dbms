CREATE DATABASE Pharmacy;
drop database student;

USE Pharmacy;

CREATE TABLE Drug(
    DrugID INT PRIMARY KEY,
    Name VARCHAR(100),
    Form VARCHAR(50),
    Quantity INT,
    UnitPrice DECIMAL(10, 2)
);

CREATE TABLE Customer(
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Address VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100)
);

CREATE TABLE SalesRep(
    SalesRepID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Position VARCHAR(50),
    CommissionRate DECIMAL(5, 2)
);

CREATE TABLE Pharmacy(
    PharmacyID INT PRIMARY KEY,
    Name VARCHAR(100),
    Address VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100)
);

CREATE TABLE Sale(
    SaleID INT PRIMARY KEY,
    CustomerID INT,
    SalesRepID INT,
    PharmacyID INT,
    DrugID INT,
    SaleDate DATE,
    Quantity INT,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (SalesRepID) REFERENCES SalesRep(SalesRepID),
    FOREIGN KEY (PharmacyID) REFERENCES Pharmacy(PharmacyID),
    FOREIGN KEY (DrugID) REFERENCES Drug(DrugID)
);
INSERT INTO Pharmacy (PharmacyID, Name, Address, PhoneNumber, Email)
VALUES (1, 'Pharmacy One', '123 Main St', '123-456-7890', 'pharmacyone@email.com');

INSERT INTO Pharmacy (PharmacyID, Name, Address, PhoneNumber, Email)
VALUES (2, 'Pharmacy Two', '456 Market St', '456-789-0123', 'pharmacytwo@email.com');

INSERT INTO Pharmacy (PharmacyID, Name, Address, PhoneNumber, Email)
VALUES (3, 'Pharmacy Three', '678 Main St', '122-456-7891', 'pharmacythree@email.com');

INSERT INTO Pharmacy (PharmacyID, Name, Address, PhoneNumber, Email)
VALUES (4, 'Pharmacy four', '679 Market St', '466-889-0123', 'pharmacyfour@email.com');

INSERT INTO Pharmacy (PharmacyID, Name, Address, PhoneNumber, Email)
VALUES (5, 'Pharmacy five', '775 Main St', '113-456-7890', 'pharmacyfive@email.com');

INSERT INTO Pharmacy (PharmacyID, Name, Address, PhoneNumber, Email)
VALUES (6, 'Pharmacy six', '846 Market St', '996-789-0123', 'pharmacysix@email.com');

INSERT INTO Pharmacy (PharmacyID, Name, Address, PhoneNumber, Email)
VALUES (7, 'Pharmacy seven', '946 Market St', '995-789-0123', 'pharmacyseven@email.com');



INSERT INTO SalesRep (SalesRepID, FirstName, LastName, Position, CommissionRate)
VALUES (1, 'John', 'Doe', 'Sales Representative', 10.00);

INSERT INTO SalesRep (SalesRepID, FirstName, LastName, Position, CommissionRate)
VALUES (2, 'Jane', 'Smith', 'Sales Manager', 15.00);

INSERT INTO SalesRep (SalesRepID, FirstName, LastName, Position, CommissionRate)
VALUES (3, 'Ram', 'Raghuvanshi', 'Sales Representative', 50.00);

INSERT INTO SalesRep (SalesRepID, FirstName, LastName, Position, CommissionRate)
VALUES (4, 'parshu', 'khadgave', 'Sales Manager', 15.00);

INSERT INTO SalesRep (SalesRepID, FirstName, LastName, Position, CommissionRate)
VALUES (5, 'laxshiman', 'giri', 'Sales Representative', 20.00);

INSERT INTO SalesRep (SalesRepID, FirstName, LastName, Position, CommissionRate)
VALUES (6, 'krishna', 'shinde', 'Sales Manager', 15.00);


INSERT INTO Customer (CustomerID, FirstName, LastName, Address, PhoneNumber, Email)
VALUES (1, 'John', 'Doe', '123 Main St', '123-456-7890', 'johndoe@email.com');

INSERT INTO Customer (CustomerID, FirstName, LastName, Address, PhoneNumber, Email)
VALUES (2, 'Jane', 'Smith', '456 Market St', '456-789-0123', 'janesmith@email.com');

INSERT INTO Customer (CustomerID, FirstName, LastName, Address, PhoneNumber, Email)
VALUES (3, 'Ram', 'raghuvanshi', '789 Main St', '153-456-7990', 'johndoe@email.com');

INSERT INTO Customer (CustomerID, FirstName, LastName, Address, PhoneNumber, Email)
VALUES (4, 'Parshu', 'khadagve', '897 Market St', '446-789-1123', 'janesmith@email.com');

INSERT INTO Customer (CustomerID, FirstName, LastName, Address, PhoneNumber, Email)
VALUES (5, 'laxshiman', 'giri', '152 Main St', '128-459-7890', 'johndoe@email.com');

INSERT INTO Customer (CustomerID, FirstName, LastName, Address, PhoneNumber, Email)
VALUES (6, 'krishna', 'yadav', '456 Market St', '456-789-0123', 'janesmith@email.com');


INSERT INTO Drug (DrugID, Name, Form, Quantity, UnitPrice)
VALUES (1, 'Abilify ', 'Tablet', 100, 1.00);

INSERT INTO Drug (DrugID, Name, Form, Quantity, UnitPrice)
VALUES (2, 'Acetaminophen', 'Capsule', 150, 2.00);

INSERT INTO Drug (DrugID, Name, Form, Quantity, UnitPrice)
VALUES (3, 'Abiraterone', 'Tablet', 12, 1.50);

INSERT INTO Drug (DrugID, Name, Form, Quantity, UnitPrice)
VALUES (4, 'Paracetamol', 'Capsule', 500, 2.00);

INSERT INTO Drug (DrugID, Name, Form, Quantity, UnitPrice)
VALUES (5, 'Zebeta', 'Tablet', 1000, 5.00);

INSERT INTO Drug (DrugID, Name, Form, Quantity, UnitPrice)
VALUES (6, 'Azee', 'Capsule', 200, 500);



INSERT INTO Sale (SaleID, CustomerID, SalesRepID, PharmacyID, DrugID, SaleDate, Quantity, TotalAmount)
VALUES (1, 1, 1, 1, 1, '2022-01-01', 5, 5.00);

INSERT INTO Sale (SaleID, CustomerID, SalesRepID, PharmacyID, DrugID, SaleDate, Quantity, TotalAmount)
VALUES (2, 2, 2, 2, 2, '2022-01-02', 10, 20.00);

INSERT INTO Sale (SaleID, CustomerID, SalesRepID, PharmacyID, DrugID, SaleDate, Quantity, TotalAmount)
VALUES (3, 3, 3, 3, 3, '2022-01-03', 15, 5.00);

INSERT INTO Sale (SaleID, CustomerID, SalesRepID, PharmacyID, DrugID, SaleDate, Quantity, TotalAmount)
VALUES (4, 4, 4, 4, 4, '2022-01-04', 20, 25.00);










 
CREATE DATABASE IF NOT EXISTS Bookstore;
USE Bookstore;

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    Fname VARCHAR(255),
    LName VARCHAR(255),
    DOB DATE,
    Salary INT,
    Email VARCHAR(255),
    PhoneNo VARCHAR(20),
    JoiningDate DATE
);

CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    Fname VARCHAR(255),
    LName VARCHAR(255),
    PhoneNo VARCHAR(20),
    Email VARCHAR(255)
);

CREATE TABLE CustomerAddress (
    CustomerID INT,
    AddressLine1 VARCHAR(255),
    AddressLine2 VARCHAR(255),
    City VARCHAR(255),
    State VARCHAR(255),
    ZipCode VARCHAR(20),  
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

CREATE TABLE Shop (
    ShopID INT PRIMARY KEY,
    Name VARCHAR(255),
    Manager VARCHAR(255),
    DateOpened DATE,
    AddressLine1 VARCHAR(255),
    AddressLine2 VARCHAR(255),  
    City VARCHAR(255),
    State VARCHAR(255),
    ZipCode VARCHAR(255)
);

CREATE TABLE Book (
    ISBN VARCHAR(255) PRIMARY KEY,
    Title VARCHAR(255),
    Authors VARCHAR(255),
    Publisher INT,
    PublicationDate DATE,
    NumPages INT
);

CREATE TABLE Author (
    AuthorID INT PRIMARY KEY,
    Name VARCHAR(255)
);

CREATE TABLE Publisher (
    CompanyID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255),
    PhoneNo VARCHAR(20)
);

CREATE TABLE Supplier (
    SupplierID INT PRIMARY KEY,
    Name VARCHAR(255),
    PhoneNo VARCHAR(20),
    Email VARCHAR(255)
);

CREATE TABLE RestockOrder (
    OrderID INT PRIMARY KEY,  
    PlacedByID INT,
    BookISBN VARCHAR(255),
    Quantity INT,
    DatePlacedOn DATE,
    DeliveryDate DATE,
    Status VARCHAR(255),
    ShippingCost VARCHAR(20),
    Taxes VARCHAR(20),
    TotalCost VARCHAR(20),  -- Removed unnecessary space
    FOREIGN KEY (PlacedByID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (BookISBN) REFERENCES Book(ISBN)
);

CREATE TABLE Stock (
    BookISBN VARCHAR(255) PRIMARY KEY,
    BookName VARCHAR(255),
    NoInStock INT,
    UnitPrice REAL
);

CREATE TABLE OnlinePurchase (
    PurchaseID INT PRIMARY KEY,
    CustomerID INT,
    Date DATE,
    Time TIME,
    BasePrice REAL,
    Tax REAL,
    Discount REAL,
    TotalPrice REAL,
    ShippingDate DATE,
    Status VARCHAR(255),
    PaymentMethod INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (PaymentMethod) REFERENCES PaymentMethod(PaymentMethod)
);

CREATE TABLE OfflinePurchase (
    PurchaseID INT PRIMARY KEY,
    CustomerID INT,
    ShopID INT,
    Date DATE,
    Time TIME,
    BasePrice VARCHAR(20),
    Tax REAL,
    Discount REAL,
    TotalPrice REAL,
    PaymentMethod INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (PaymentMethod) REFERENCES PaymentMethod(PaymentMethod),
    FOREIGN KEY (ShopID) REFERENCES Shop(ShopID)
);

CREATE TABLE PaymentMethod (
    PaymentMethod INT PRIMARY KEY,
    Name VARCHAR(255)
);

CREATE TABLE DiscountOffer (
    OfferID INT PRIMARY KEY,
    BookISBN VARCHAR(255),
    DiscountPercentage REAL, 
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (BookISBN) REFERENCES Book(ISBN)
);

CREATE TABLE BooksReturn (
    ReturnID INT PRIMARY KEY,
    CustomerID INT,
    BookISBN VARCHAR(255),
    Date DATE,
    Reason VARCHAR(255),
    Status VARCHAR(255),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (BookISBN) REFERENCES Book(ISBN)
);

CREATE TABLE EmployeeSchedule (
    ScheduleID INT PRIMARY KEY,
    EmployeeID INT,
    Date DATE,
    ShiftStart TIME,
    ShiftEnd TIME,
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

CREATE TABLE Recommendation (
    RecommendationID INT PRIMARY KEY,
    CustomerID INT,
    Date DATE,
    RecommendedBookISBN1 VARCHAR(255),  
    RecommendedBookISBN2 VARCHAR(255),
    RecommendedBookISBN3 VARCHAR(255),
    RecommendedBookISBN4 VARCHAR(255),
    RecommendedBookISBN5 VARCHAR(255),
    FOREIGN KEY (RecommendedBookISBN1) REFERENCES Book(ISBN),
    FOREIGN KEY (RecommendedBookISBN2) REFERENCES Book(ISBN),
    FOREIGN KEY (RecommendedBookISBN3) REFERENCES Book(ISBN),
    FOREIGN KEY (RecommendedBookISBN4) REFERENCES Book(ISBN),
    FOREIGN KEY (RecommendedBookISBN5) REFERENCES Book(ISBN)
);

CREATE TABLE BookAuthor (
    BookISBN INT,
    Author VARCHAR(255),
    PRIMARY KEY (BookISBN, Author)
);



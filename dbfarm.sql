create database DBfarm

CREATE TABLE Users (
    UserID INT PRIMARY KEY IDENTITY,
    Username VARCHAR(50) UNIQUE NOT NULL,
    Password VARCHAR(255) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    
);

   
CREATE TABLE Crops(
    Crop_No INT PRIMARY KEY,
    Crop_Name VARCHAR(255) NOT NULL,
    Crop_Description TEXT,
    Crop_Type VARCHAR(50)
);

select * from Farmers_Details

CREATE TABLE Farmers_Details (
    Farmer_id INT PRIMARY KEY,
    Farmer_Name VARCHAR(50) NOT NULL,
    Farmer_Address VARCHAR(25),
    Farmer_ContactNo VARCHAR(15)
);

CREATE TABLE Farming_Tips (
    Tip_ID INT PRIMARY KEY,
    Tip_Description TEXT,
    Tip_Category VARCHAR(255),
    Tip_Source VARCHAR(255)
);



CREATE TABLE Suppliers_Details (
    Supplier_id INT PRIMARY KEY,
    Supplier_Name VARCHAR(255) NOT NULL,
    Supplier_Address VARCHAR(255),
    Supplier_ContactNo VARCHAR(15)
);

CREATE TABLE Post_Advertisement (
    post_id INT PRIMARY KEY,
    Crop_Name VARCHAR(255) NOT NULL,
    Crop_Description TEXT,
   
);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Address VARCHAR(255)
);

CREATE TABLE Sell_Crop_Details (
    sell_id INT PRIMARY KEY,
    Crop_Name VARCHAR(255) NOT NULL,
    Crop_Quantity INT,
);

CREATE TABLE Farmer_Complaints (
    complaint_id INT PRIMARY KEY,
    Farmer_id INT,
    Complaint_Details TEXT,
    FOREIGN KEY (Farmer_id) REFERENCES Farmers_Details(Farmer_id)
);

CREATE TABLE WeatherData (
    DataID INT PRIMARY KEY,
    Date DATE,
    Temperature DECIMAL(5, 2),
    Rainfall DECIMAL(8, 2),
    Humidity DECIMAL(5, 2),
    WindSpeed DECIMAL(6, 2)
);

CREATE TABLE PestsAndDiseases (
    IssueID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Description TEXT,
    Lifecycle TEXT,
    ControlMethods TEXT,
    TreatmentPlan TEXT
);

CREATE TABLE FinancialRecords (
    TransactionID INT PRIMARY KEY,
    Date DATE,
    TransactionType VARCHAR(100) NOT NULL,
    Amount DECIMAL(12, 2),
    Description TEXT
);
CREATE TABLE RegulatoryCompliance (
    ComplianceID INT PRIMARY KEY,
    Requirement VARCHAR(255) NOT NULL,
    Deadline DATE,
    Status VARCHAR(50),
    Description TEXT
);


CREATE TABLE TrainingPrograms (
    ProgramID INT PRIMARY KEY,
    ProgramName VARCHAR(100) NOT NULL,
    Description TEXT,
    StartDate DATE,
    EndDate DATE,
    Location VARCHAR(100)
);






CREATE TABLE FarmingEquipment (
    EquipmentID INT PRIMARY KEY,
    EquipmentName VARCHAR(100) NOT NULL,
    Description TEXT,
    Manufacturer VARCHAR(100),
    Model VARCHAR(50),
    YearOfManufacture INT,
    PurchaseDate DATE,
    Location VARCHAR(100),
    Availability BIT
);

CREATE TABLE HarvestingTools (
    ToolID INT PRIMARY KEY,
    ToolName VARCHAR(100) NOT NULL,
    Description TEXT,
    Manufacturer VARCHAR(100),
    Model VARCHAR(50),
    Location VARCHAR(100),
    Availability BIT
);


select * from FarmingEquipment



create database DBfarm

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





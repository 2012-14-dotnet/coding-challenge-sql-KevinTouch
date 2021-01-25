CREATE DATABASE EmployeeDB;
CREATE TABLE Department
(
	ID INT PRIMARY KEY,
	Name VARCHAR(10),
	Location VARCHAR(10),
);

CREATE TABLE Employee
(
	ID INT PRIMARY KEY,
	FirstName VARCHAR(10),
	LastName VARCHAR(10),
	SSN INT,
	DeptID INT
		FOREIGN KEY REFERENCES Department(ID)
);

CREATE TABLE EmpDetails
(
	ID INT PRIMARY KEY,
	EmployeeID INT
		FOREIGN KEY REFERENCES Employee(ID),
	Salary INT,
	Address_1 VARCHAR(10),
	City VARCHAR(10),
	State VARCHAR(10),
	Country VARCHAR(10),
);

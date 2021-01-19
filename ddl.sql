CREATE DATABASE EmployeeDB;
CREATE TABLE Department
(
	ID INT(5),
	Name VARCHAR(5),
	Location VARCHAR(10)
);

CREATE TABLE Employee
(
	ID INT(3),
	FirstName VARCHAR(5),
	LastName VARCHAR(10),
	SSN INT(9),
	DeptID INT(5)
);

CREATE TABLE EmpDetails
(
	ID INT(3),
	EmployeeID INT(3),
	Salary INT(5),
	Address_1 INT(3),
	City VARCHAR(10),
	State VARCHAR(10),
	Country VARCHAR(10)
);

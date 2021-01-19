INSERT INTO Department
VALUES
	(1, "Tech", "Texas");
INSERT INTO Department
VALUES
	(2, "HR", "San Francisco");
INSERT INTO Department
VALUES
	(3, "Marketing", "Florida");


INSERT INTO Employee
VALUES
	(1, "Tina", "Smith", 123456789, 2);

INSERT INTO Employee
VALUES
	(2, "Kevin", "Touch", 123456789, 1);

INSERT INTO Employee
VALUES
	(3, "John", "Doe", 123456789, 3);

INSERT INTO EmpDetails
VALUES
	(1, 1, 50000, "12345 Fake St.", "12345 Fake2 St.", "NY", "New York", "United States" );

INSERT INTO EmpDetails
VALUES
	(2, 2, 70000, "12345 Fake4 St.", "12345 Fake5 St.", "CA", "San Diego", "United States" );


INSERT INTO EmpDetails
VALUES
	(3, 3, 60000, "12345 Fake6 St.", "12345 Fake7 St.", "TX", "Austin", "United States" );

SELECT *
FROM Department
	INNER JOIN Employee
	ON Department.ID = Employee.ID
HAVING Department.Name = "Marketing";

SELECT SUM(EmpDetails.Salary)
FROM Department
	INNER JOIN Employee
	ON Department.ID = Employee.ID
	INNER JOIN EmpDetails
	ON  Department.ID = EmpDetails.ID
HAVING Department.Name = "Marketing";

SELECT COUNT(*)
FROM Department
	INNER JOIN Employee
	ON Department.ID = Employee.ID
GROUP BY Department;

UPDATE EmpDetails SET Salary = 90000
WHERE FirstName = "Tina" and LastName = "Smith";




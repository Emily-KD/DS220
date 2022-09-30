SELECT COUNT(*)
FROM PROJECT;

SELECT MIN(MaxHours) AS MinimumHours,
MAX(MaxHours) AS MaximumHours,
AVG(MaxHours) AS AverageHours
FROM PROJECT

SELECT COUNT(*)
FROM PROJECT
WHERE MaxHours < 130;

SELECT AVG(MaxHours)
FROM PROJECT;

SELECT *
FROM PROJECT
WHERE MaxHours < (SELECT AVG(MaxHours) FROM PROJECT);

SELECT EmployeeNumber, SUM(HoursWorked)
FROM ASSIGNMENT
GROUP BY EmployeeNumber;
SELECT EmployeeNumber, SUM(HoursWorked)
FROM ASSIGNMENT
GROUP BY EmployeeNumber
HAVING SUM(HoursWorked) > 100;
SELECT EmployeeNumber, SUM(HoursWorked)
FROM ASSIGNMENT
GROUP BY EmployeeNumber
HAVING EmployeeNumber < 5;
SELECT EmployeeNumber, SUM(HoursWorked)
FROM ASSIGNMENT
WHERE EmployeeNumber < 5
GROUP BY EmployeeNumber;

CREATE TABLE SailorsInstance(
	sid Int NOT NULL PRIMARY KEY,
	sname Char(10) NOT NULL,
	rating Int NOT NULL,
	age Numeric(3,1) NOT NULL
);

INSERT INTO SailorsInstance VALUES(22, 'dustin', 7, 45.0);
INSERT INTO SailorsInstance VALUES(29, 'brutus', 1, 33.0);
INSERT INTO SailorsInstance VALUES(31, 'lubber', 8, 55.5);
INSERT INTO SailorsInstance VALUES(32, 'andy', 8, 25.5);
INSERT INTO SailorsInstance VALUES(58, 'rusty', 10, 35.0);
INSERT INTO SailorsInstance VALUES(64, 'horatio', 7, 35.0);
INSERT INTO SailorsInstance VALUES(71, 'zorba', 10, 16.0);
INSERT INTO SailorsInstance VALUES(74, 'horatio', 9, 35.0);
INSERT INTO SailorsInstance VALUES(85, 'art', 3, 25.5);
INSERT INTO SailorsInstance VALUES(95, 'bob', 3, 63.5);
INSERT INTO SailorsInstance VALUES(96, 'frodo', 3, 25.5);

SELECT S.rating, MIN(S.age) AS minage
FROM SailorsInstance AS S
WHERE S.age >= 18 
GROUP BY S.rating 
HAVING COUNT(*) > 1;
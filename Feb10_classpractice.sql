SELECT *
FROM DEPARTMENT;
SELECT Phone
FROM DEPARTMENT 
WHERE DepartmentName = 'Accounting';
SELECT FirstName, LastName
FROM EMPLOYEE
WHERE FirstName = 'Mary' AND LastName LIKE 'A%';

SELECT COUNT(*)
FROM EMPLOYEE 
WHERE FirstName = 'George';
SELECT SUM(HoursWorked)
FROM ASSIGNMENT
WHERE ProjectID = 1200;
SELECT ProjectID
FROM PROJECT
WHERE MaxHours = (SELECT MIN(MaxHours) FROM PROJECT);

SELECT Department, COUNT(*) AS NumberofProjects
FROM PROJECT
GROUP BY Department;
SELECT Department, COUNT(*) AS NumberofProjects
FROM PROJECT
GROUP BY Department
HAVING COUNT(*) > 1;

SELECT *
FROM EMPLOYEE
WHERE Phone IS NULL;

SELECT *
FROM PROPERTY
WHERE PropertyName LIKE 'P%' AND State <> 'NY';

SELECT *
FROM SERVICE
WHERE HoursWorked > 3 
ORDER BY ServiceDate ASC;

SELECT COUNT(*)
FROM OWNER
WHERE OwnerEmail IS NOT NULL;

SELECT S.EmployeeID, SUM(S.HoursWorked) AS hour
FROM SERVICE AS S
GROUP BY S.EmployeeID;

SELECT EmployeeID, SUM(HoursWorked) AS hour
FROM SERVICE
GROUP BY EmployeeID;

SELECT S.EmployeeID
FROM SERVICE AS S
GROUP BY S.EmployeeID
HAVING COUNT(S.EmployeeID) > 1;

SELECT OwnerType, COUNT(*) AS OwnerType_count
FROM OWNER
GROUP BY OwnerType
ORDER BY OwnerType_count DESC;

/* Q1, Q2, Q3 */
SELECT *
FROM DEPARTMENT;
SELECT Phone
FROM DEPARTMENT
WHERE DepartmentName = 'Accounting';
SELECT FirstName, LastName
FROM EMPLOYEE
WHERE FirstName LIKE 'Mary' AND LastName LIKE 'A%';

/* Q4, Q5, Q6 */
SELECT COUNT(*)
FROM EMPLOYEE
WHERE FirstName = 'George';
SELECT SUM(HoursWorked)
FROM ASSIGNMENT
WHERE ProjectID = 1200;
SELECT ProjectID
FROM PROJECT
WHERE MaxHours = (SELECT MIN(MaxHours) FROM PROJECT);

/* Q7, Q8 */
SELECT Department, COUNT(*) AS NumberOfEmployee
FROM EMPLOYEE
GROUP BY Department;
SELECT Department, COUNT(*) AS NumberOfProject
FROM PROJECT
GROUP BY Department;
SELECT Department, COUNT(*) AS NumberOfProject
FROM PROJECT
GROUP BY Department
HAVING COUNT(*) > 1;

/* Q9 */
SELECT *
FROM EMPLOYEE
WHERE Phone IS NULL;

/*Q10*/
SELECT *
FROM PROPERTY
WHERE PropertyName LIKE 'P%' AND State <> 'NY';
/*Q11*/
SELECT *
FROM SERVICE
WHERE HoursWorked > 3
ORDER BY ServiceDate ASC;
/*Q14*/
SELECT COUNT(*)
FROM OWNER
WHERE OwnerEmail IS NOT NULL;
/*Q23*/
SELECT S.EmployeeID, SUM(S.HoursWorked) AS hour
FROM SERVICE AS S
GROUP BY S.EmployeeID;

/*Q25*/
SELECT S.EmployeeID
FROM SERVICE AS S
GROUP BY S.EmployeeID
HAVING COUNT(S.EmployeeID) > 1; 
/*Q15*/
SELECT OwnerType, COUNT(*) AS count
FROM OWNER
GROUP BY OwnerType
ORDER BY count DESC;

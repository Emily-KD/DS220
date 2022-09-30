SELECT *
FROM PROJECT;
SELECT ProjectName, Department, MaxHours
FROM PROJECT;

SELECT  Department
FROM EMPLOYEE;

SELECT  DISTINCT Department
FROM EMPLOYEE;

SELECT FirstName, LastName
FROM EMPLOYEE;
SELECT DISTINCT FirstName
FROM EMPLOYEE;

SELECT *
FROM PROJECT
WHERE Department = 'Finance';
SELECT *
FROM PROJECT
WHERE MaxHours > 135;

SELECT *
FROM PROJECT
WHERE Department = 'Finance' AND MaxHours > 135;
SELECT *
FROM PROJECT
WHERE Department = 'Finance' OR MaxHours > 135;

SELECT * 
FROM EMPLOYEE
WHERE FirstName = 'Mary' OR Department = 'Accounting';
SELECT * 
FROM EMPLOYEE
WHERE Department = 'Finance' or Department = 'Accounting' or Department = 'Marketing';

SELECT FirstName, LastName, Department
FROM EMPLOYEE
WHERE Department IN ('Finance', 'Accounting', 'Marketing');

SELECT    FirstName, LastName, Department
FROM      EMPLOYEE
WHERE     Department NOT IN ('Accounting', 'Finance', 'Marketing');

SELECT *
FROM       EMPLOYEE
WHERE   LastName LIKE 'J%';
SELECT   *
FROM       EMPLOYEE
WHERE LastName LIKE 'J____';

SELECT *
FROM EMPLOYEE
WHERE FirstName LIKE '___y';
SELECT *
FROM EMPLOYEE
WHERE FirstName LIKE 'R%d';
SELECT * 
FROM EMPLOYEE
WHERE FirstName LIKE '__a%r';

SELECT FirstName, LastName, Phone, Department
FROM EMPLOYEE
WHERE Phone IS NULL;

SELECT *
FROM EMPLOYEE
ORDER BY  LastName;

SELECT *
FROM EMPLOYEE
ORDER BY LastName DESC, FirstName ASC;
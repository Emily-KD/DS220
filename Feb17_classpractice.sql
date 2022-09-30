SELECT PropertyName
FROM PROPERTY
WHERE PropertyID NOT IN 
(SELECT PropertyID FROM SERVICE);

SELECT DISTINCT FirstName, LastName
FROM GG_EMPLOYEE AS G, PROPERTY AS P, SERVICE AS S
WHERE G.EmployeeID = S.EmployeeID
AND S.PropertyID = P.PropertyID
AND P.State <> 'WA';

SELECT P.PropertyName
FROM PROPERTY AS P, SERVICE AS S
WHERE P.PropertyID = S.PropertyID
GROUP BY P.PropertyName
HAVING SUM(S.HoursWorked) > 5.0;

SELECT FirstName, LastName
FROM GG_EMPLOYEE
WHERE EmployeeID NOT IN(
	SELECT EmployeeID FROM SERVICE);

SELECT O.OwnerType, SUM(S.HoursWorked)
FROM SERVICE AS S, PROPERTY AS P, OWNER AS O
WHERE O.OwnerID = P.OwnerID AND P.PropertyID = S.PropertyID
GROUP BY O.OwnerType;
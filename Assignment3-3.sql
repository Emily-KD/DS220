SELECT OwnerName, OwnerEmail
FROM OWNER
WHERE OwnerID IN
	(SELECT OwnerID FROM PROPERTY WHERE PropertyName = 'Private Residence');

SELECT O.OwnerName, O.OwnerEmail
FROM OWNER AS O INNER JOIN PROPERTY AS P
ON O.OwnerId=P.OwnerId WHERE P.PropertyName = 'Private Residence';

SELECT E.FirstName,E.LastName FROM GG_EMPLOYEE AS E WHERE E.EmployeeID IN         (SELECT S.EmployeeId FROM SERVICE AS S WHERE S.PropertyID IN             (SELECT P.PropertyID FROM PROPERTY AS P WHERE P.City = 'New York'));

SELECT E.FirstName,E.LastName FROM GG_EMPLOYEE AS E INNER JOIN SERVICE AS S  ON S.EmployeeId = E.EmployeeID INNER JOIN PROPERTY AS P  ON S.PropertyID = P.PropertyID  WHERE P.City = 'New York';  SELECT E.FirstName,E.LastName,P.PropertyName,S.ServiceDate FROM GG_EMPLOYEE AS E INNER JOIN SERVICE AS S  ON S.EmployeeId = E.EmployeeID INNER JOIN PROPERTY AS P  ON S.PropertyID = P.PropertyID WHERE P.City = 'New York';  SELECT E.FirstName,E.LastName FROM GG_EMPLOYEE as E WHERE E.EmployeeID IN 	(SELECT S.EmployeeId FROM SERVICE As S WHERE S.PropertyID IN 		(SELECT P.PropertyID FROM PROPERTY As P WHERE P.OwnerID IN 			(SELECT O.OwnerID FROM OWNER AS O WHERE O.OwnerType='Corporation'));  SELECT E.FirstName,E.LastName FROM GG_EMPLOYEE AS E INNER JOIN SERVICE AS S ON E.EmployeeID = S.EmployeeId INNER JOIN PROPERTY AS P ON P.PropertyID=S.PropertyID INNER JOIN OWNER AS O ON O.OwnerID = P.OwnerID 
WHERE O.OwnerType='Corporation';

SELECT E.FirstName,E.LastName, SUM(S.HoursWorked) AS total_hours_of_their_service FROM GG_EMPLOYEE AS E INNER JOIN SERVICE S ON E.EmployeeID=S.EmployeeID  GROUP BY S.EmployeeID ORDER BY total_hours_of_their_service;

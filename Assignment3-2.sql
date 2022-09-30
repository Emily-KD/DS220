CREATE  TABLE OWNER(
OwnerID Int NOT NULL IDENTITY (1, 1) PRIMARY KEY, 
OwnerName Char(25) NOT NULL,
OwnerEmail VarChar(100) NULL UNIQUE,
OwnerType Char(20) NOT NULL
);
CREATE  TABLE PROPERTY(
PropertyID Int NOT NULL IDENTITY (1, 1)  PRIMARY KEY,
PropertyName Char(25) NOT NULL,
Street VarChar(25) NOT NULL,
City Char(15) NOT NULL,
State Char(2) NULL,
Zip VarChar(100) NOT NULL UNIQUE,
OwnerID Int NOT NULL,
CONSTRAINT PROPERTY_OWNER_FK FOREIGN KEY(OwnerID)
REFERENCES OWNER(OwnerID)
ON UPDATE NO ACTION
ON DELETE NO ACTION
);
CREATE  TABLE GG_EMPLOYEE(
EmployeeID Int NOT NULL IDENTITY (1, 1) PRIMARY KEY,
LastName Char(25) NOT NULL,
FirstName Char(25) NOT NULL,
CellPhone VarChar(12) NULL,
ExperienceLevel Char(5) NOT NULL,
);
CREATE  TABLE SERVICE(
PropertyID Int NOT NULL,
EmployeeID Int NOT NULL,
ServiceDate DateTime NULL,
HoursWorked Decimal(10,2) NOT NULL,
CONSTRAINT SERVICE_PK PRIMARY KEY (PropertyID, EmployeeID),
CONSTRAINT SERVICE_PROPERTY_FK FOREIGN KEY(PropertyID)
REFERENCES PROPERTY(PropertyID)
ON UPDATE NO ACTION
ON DELETE NO ACTION,
CONSTRAINT SERVICE_GG_EMPLOYEE_FK FOREIGN KEY(EmployeeID)
REFERENCES GG_EMPLOYEE(EmployeeID)
ON UPDATE NO ACTION
ON DELETE NO ACTION
);

INSERT INTO OWNER VALUES(1, 'Mary Jones', 'Mary.Jones@somewhere.com', 'Indivisual');
INSERT INTO OWNER VALUES(2, 'DT Enterprises', 'DTE@dte.com', 'Corporation');
INSERT INTO OWNER VALUES(3, 'Sam Douglas', NULL, 'Indivisual');
INSERT INTO OWNER VALUES(4, 'UNY Enterprises', 'UNYE@unye.com', 'Corporation');
INSERT INTO OWNER VALUES(5, 'Doug Samuels', 'Doug.Samuels@somewhere.com', 'Indivisual');

INSERT INTO PROPERTY VALUES(1, 'Eastlake', '123 Eastlake', 'Seattle', 'WA', 98119, 2);
INSERT INTO PROPERTY VALUES(2, 'Elm St Apts', '4 East Elm', 'Lynwood', 'WA', 98223, 1);
INSERT INTO PROPERTY VALUES(3, 'Jefferson Hill', '42 West 7th St', 'Bellevue', 'WA', 98007, 2);
INSERT INTO PROPERTY VALUES(4, 'Lake View Apts', '1265 32nd Avenue', 'Redmond', 'WA', 98052, 3);
INSERT INTO PROPERTY VALUES(5, 'Kodak Heights Apts', '65 32nd Avenue', 'Rochester', 'NY', 14604, 4);
INSERT INTO PROPERTY VALUES(6, 'Private Residece', '1465 48th St', 'Bellevue', 'WA', 98007, 1);
INSERT INTO PROPERTY VALUES(7, 'Private Residece', '1567 51st St', 'Bellevue', 'WA', 98007, 3);
INSERT INTO PROPERTY VALUES(8, 'Private Residece', '718 151st St', 'Rochester', 'NY', 14604, 5);

INSERT INTO GG_EMPLOYEE VALUES(1, 'Smith', 'Sam', '206-254-1234', 'Master');
INSERT INTO GG_EMPLOYEE VALUES(2, 'Evanston', 'John', '206-254-2345', 'Senior');
INSERT INTO GG_EMPLOYEE VALUES(3, 'Murray', 'Dale', '206-254-3456', 'Junior');
INSERT INTO GG_EMPLOYEE VALUES(4, 'Murphy', 'Jerry', '585-545-8765', 'Master');
INSERT INTO GG_EMPLOYEE VALUES(5, 'Fontaine', 'Joan', '206-254-4567', 'Senior');

INSERT INTO SERVICE VALUES(1, 1, '2015-05-05', 4.50);
INSERT INTO SERVICE VALUES(2, 2, '2015-05-08', 2.75);
INSERT INTO SERVICE VALUES(3, 3, '2015-05-08', 4.50);
INSERT INTO SERVICE VALUES(4, 1, '2015-05-19', 3.00);
INSERT INTO SERVICE VALUES(5, 4, '2015-05-12', 7.50);
INSERT INTO SERVICE VALUES(6, 5, '2015-05-10', 2.50);
INSERT INTO SERVICE VALUES(7, 2, '2015-05-19', 2.50);
INSERT INTO SERVICE VALUES(8, 4, '2015-05-15', 2.75);

/* delete tables */
DROP TABLE SERVICE;
DROP TABLE GG_EMPLOYEE;
DROP TABLE PROPERTY;
DROP TABLE OWNER;

CREATE TABLE OWNER(
	OwnerID			Int				NOT NULL IDENTITY(1,1),
	OwnerName		Char(50)		NOT NULL,
	OwnerEmail		VarChar(100)	NULL,
	OwnerType		Char(12)		NULL,
	CONSTRAINT		OWNER_PK		PRIMARY KEY(OwnerID)
	);

CREATE TABLE PROPERTY(
	PropertyID		Int				NOT NULL IDENTITY(1,1),
	PropertyName	Char(50)		NOT NULL,
	Street			Char(35)		NOT NULL,
	City			Char(35)		NOT NULL,
	[State]			Char(2)			NOT NULL,
	ZIP				Char(10)		NOT NULL,
	OwnerID			Int				NOT NULL,
	CONSTRAINT		PROPERTY_PK	PRIMARY KEY(PropertyID),
	CONSTRAINT		PROP_OWNER_FK	FOREIGN KEY (OwnerID)
							REFERENCES OWNER(OwnerID)
									ON DELETE NO ACTION
	);

CREATE TABLE GG_EMPLOYEE(
	EmployeeID		Int				NOT NULL IDENTITY(1,1),
	LastName		Char(25)		NOT NULL,
	FirstName		Char(25)		NOT NULL,
	CellPhone		Char(12)		NOT NULL,
	ExperienceLevel	Char(15)		NOT NULL,
	CONSTRAINT		EMPLOYEE_PK		PRIMARY KEY(EmployeeID)
	);

CREATE TABLE SERVICE(
	PropertyID		Int				NOT NULL,
	EmployeeID		Int				NOT NULL,
	ServiceDate		DateTime		NOT NULL,
	HoursWorked		Numeric (4,2)	NULL,
	CONSTRAINT		SERVICE_PK 		
							PRIMARY KEY(PropertyID, EmployeeID, ServiceDate),
	CONSTRAINT		SERVICE_PROP_FK FOREIGN KEY (PropertyID)
							REFERENCES PROPERTY(PropertyID)
									ON DELETE NO ACTION,
	CONSTRAINT		SERVICE_EMP_FK FOREIGN KEY (EmployeeID)
							REFERENCES GG_EMPLOYEE(EmployeeID)
									ON DELETE NO ACTION
									ON UPDATE CASCADE
	);

/********************************************************************************/
/*****   OWNER DATA   ***********************************************************/

INSERT INTO OWNER VALUES(
	'Mary Jones', 'Mary.Jones@somewhere.com', 'Individual');
INSERT INTO OWNER VALUES(
	'DT Enterprises', 'DTE@dte.com', 'Corporation');
INSERT INTO OWNER (OwnerName, OwnerType) VALUES(
	'Sam Douglas', 'Individual');
INSERT INTO OWNER VALUES(
	'UNY Enterprises', 'UNYE@unye.com', 'Corporation');
INSERT INTO OWNER VALUES(
	'Doug Samuels', 'Doug.Samuels@somewhere.com', 'Individual');

/*****   GG_EMPLOYEE   *************************************************************/

INSERT INTO GG_EMPLOYEE VALUES(
	'Smith', 'Sam', '206-254-1234', 'Master');
INSERT INTO GG_EMPLOYEE VALUES(
	'Evanston', 'John','206-254-2345', 'Senior');
INSERT INTO GG_EMPLOYEE VALUES(
	'Murray', 'Dale', '206-254-3456', 'Junior');
INSERT INTO GG_EMPLOYEE VALUES(
	'Murphy', 'Jerry', '585-545-8765', 'Master');
INSERT INTO GG_EMPLOYEE VALUES(
	'Fontaine', 'Joan', '206-254-4567', 'Senior');

/*****   PROPERTY   *************************************************************/

INSERT INTO [PROPERTY] VALUES(
	'Eastlake Building', '123 Eastlake', 'Seattle', 'WA', '98119', 2);
INSERT INTO [PROPERTY] VALUES(
	'Elm St Apts', '4 East Elm', 'Lynwood', 'WA', '98223', 1);
INSERT INTO [PROPERTY] VALUES(
	'Jefferson Hill', '42 West 7th St', 'Bellevue', 'WA', '98007', 2);
INSERT INTO [PROPERTY] VALUES(
	'Lake View Apts', '1265 32nd Avenue', 'Redmond', 'WA', '98052', 3);
INSERT INTO [PROPERTY] VALUES(
	'Kodak Heights Apts', '65 32nd Avenue', 'Rochester', 'NY', '14604', 4);
INSERT INTO [PROPERTY] VALUES(
	'Private Residence','1456 48th St', 'Bellevue', 'WA', '98007', 1);
INSERT INTO [PROPERTY] VALUES(
	'Private Residence', '1567 51st St', 'Bellevue', 'WA', '98007', 3);
INSERT INTO [PROPERTY] VALUES(
	'Private Residence', '718 151st St', 'Rochester', 'NY', '14604', 5);

/*****   SERVICE   **************************************************************/

INSERT INTO [SERVICE] VALUES(1, 1, '05-MAY-15', 4.50);
INSERT INTO [SERVICE] VALUES(3, 3, '08-MAY-15', 4.50);
INSERT INTO [SERVICE] VALUES(2, 2, '08-MAY-15', 2.75);
INSERT INTO [SERVICE] VALUES(6, 5, '10-MAY-15', 2.50);
INSERT INTO [SERVICE] VALUES(5, 4, '12-MAY-15', 7.50);
INSERT INTO [SERVICE] VALUES(8, 4, '15-MAY-15', 2.75);
INSERT INTO [SERVICE] VALUES(4, 1, '19-MAY-15', 3.00);
INSERT INTO [SERVICE] VALUES(7, 2, '19-MAY-15', 2.50);

/****************************************************************************************/


SELECT *
FROM OWNER;

SELECT PropertyID, ServiceDate
FROM SERVICE
WHERE HoursWorked > 4;

SELECT PropertyID, ServiceDate
FROM SERVICE
WHERE HoursWorked > 4 AND HoursWorked < 6;

SELECT COUNT(*)
FROM SERVICE
WHERE HoursWorked > 4;

SELECT COUNT(DISTINCT(ExperienceLevel))
FROM GG_EMPLOYEE;

SELECT EmployeeID, ServiceDate
FROM SERVICE
WHERE HoursWorked = (SELECT MAX(HoursWorked) FROM SERVICE);

SELECT *
FROM GG_EMPLOYEE
WHERE CellPhone LIKE '*254*' AND LOWER(ExperienceLevel) = 'Senior';

SELECT *
FROM PROPERTY
WHERE City NOT IN ('Seattle', 'Bellevue');

SELECT * 
FROM SERVICE 
ORDER BY HoursWorked DESC;

SELECT *
FROM OWNER
WHERE OwnerEmail IS NULL;

SELECT SUM(HoursWorked)
FROM SERVICE;

SELECT EmployeeID, SUM(HoursWorked)
FROM SERVICE;

SELECT EmployeeID
FROM SERVICE
WHERE SUM(HoursWorked) > 7;
INSERT INTO DEPARTMENT VALUES('Administration', 'BC-100-10', 'BLDG01-300', '360-285-8100');

INSERT INTO DEPARTMENT VALUES('Legal', 'BC-200-10', 'BLDG01-200', '360-285-8200');
INSERT INTO DEPARTMENT VALUES('Accounting', 'BC-300-10', 'BLDG01-100', '360-285-8300');
INSERT INTO DEPARTMENT VALUES('Finance', 'BC-400-10', 'BLDG01-140', '360-285-8400');
INSERT INTO DEPARTMENT VALUES('Human Resources', 'BC-500-10', 'BLDG01-180', '360-285-8500');
INSERT INTO DEPARTMENT VALUES('Production', 'BC-600-10', 'BLDG02-100', '360-287-8600');
INSERT INTO DEPARTMENT VALUES('Marketing', 'BC-700-10', 'BLDG02-200', '360-287-8700');
INSERT INTO DEPARTMENT VALUES('InfoSystems', 'BC-800-10', 'BLDG02-270', '360-287-8800');

INSERT INTO EMPLOYEE VALUES('Mary', 'Jacobs', 'Administration', '360-285-8110', 'Mary.Jacobs@WPC.com');

INSERT INTO EMPLOYEE(FirstName, LastName, Department, Email) VALUES('James', 'Nestor', 'InfoSystems', 'James.Nestor@WPC.com');

INSERT INTO EMPLOYEE VALUES('Rosalie', 'Jackson', 'Administration', '360-285-8120', 'Rosalie.Jackson@WPC.com');
INSERT INTO EMPLOYEE VALUES('Richard', 'Bandalone', 'Legal', '360-285-8210', 'Richard.Bandalone@WPC.com');
INSERT INTO EMPLOYEE VALUES('Tom', 'Caruthers', 'Accounting', '360-285-8310', 'Tom.Caruthers@WPC.com');
INSERT INTO EMPLOYEE VALUES('Heather', 'Jones', 'Accounting', '360-285-8320', 'Heather.Jones@WPC.com');
INSERT INTO EMPLOYEE VALUES('Mary', 'Abernathy', 'Finance', '360-285-8410', 'Mary.Abernathy@WPC.com');
INSERT INTO EMPLOYEE VALUES('George', 'Smith', 'Human Resources', '360-285-8510', 'George.Smith@WPC.com');
INSERT INTO EMPLOYEE VALUES('Tom', 'Jackson', 'Production', '360-287-8610', 'Tom.Jackson@WPC.com');
INSERT INTO EMPLOYEE VALUES('George', 'Jones', 'Production', '360-287-8620', 'George.Jones@WPC.com');
INSERT INTO EMPLOYEE VALUES('Ken', 'Numoto', 'Marketing', '360-287-8710', 'Ken.Mumoto@WPC.com');
INSERT INTO EMPLOYEE VALUES('Rick', 'Brown', 'InfoSystems', '360-287-8820', 'Rick.Brown@WPC.com');

INSERT INTO PROJECT VALUES('2010 Q3 Product Plan', 'Marketing', 135.00, '10-May-10', '15-Jun-10');
INSERT INTO PROJECT VALUES('2010 Q4 Portfolio Analysis', 'Finance', 140.00, '5-Oct-10', NULL);


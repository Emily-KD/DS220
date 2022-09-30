create table CUSTOMER(
customerID	    int not null identity(1,1) primary key,
customerName    char(50) not null,
customerAddress char(50) not null, 
Email			char(25) not null unique,
Phone			char(30) not null,
);

create table DEPARTMENT(
departmentID		int not null identity(1,1) primary key,
departmentName		char(50) not null
);

create table ITEM(
itemID			int not null identity(1,1) primary key,
itemName		char(100) not null,
itemPrice		float not null,
departmentID	int not null,
				constraint dept_itemFK foreign key(departmentID)
				references DEPARTMENT(departmentID)
				on update cascade
				on delete no action
);
create table PURCHASE(
purchaseID		int not null identity(1,1) primary key,
purchaseDate    datetime not null,
customerID		int not null,
itemID			int not null,
				constraint purchase_customerFK foreign key(customerID)
				references CUSTOMER(customerID)
				on update cascade
				on delete no action,

				constraint purchase_itemFK foreign key(itemID)
				references ITEM(itemID)
				on update cascade
				on delete no action
);

create table RETURNING(
returnID		int not null identity(1,1) primary key,
returnDate		datetime not null,
customerID		int not null,
itemID			int not null,
				constraint returning_customerFK foreign key(customerID)
				references CUSTOMER(customerID)
				on update cascade
				on delete no action,

				constraint returning_itemFK foreign key(itemID)
				references ITEM(itemID)
				on update cascade
				on delete no action
);




insert into CUSTOMER values('Jimmy Green', '305 Main St, Eastville, NY', 'J.Green@gmail.com', '(123)321-5342');
insert into CUSTOMER values('Tim Jones', '211 5th St, North Town, PA', 'Timothy.J99@gmail.com', '(421)214-7596');
insert into CUSTOMER values('Abby Kim', '38 Kirby Rd, Centerton, PA', 'Kim_Abbigail@hotmail.com', '(272)819-3326');
insert into CUSTOMER values('Will White', '542 Maple Ln, South Lake, NY', 'WWW9999@psu.edu', '(740)259-4151');
insert into CUSTOMER values('Kim Roberts', '12 Kirby Rd, Westburg, PA', 'Kim.G.Roberts@gmail.com', '(420)394-1284');

insert into DEPARTMENT values('Foodstuffs');
insert into DEPARTMENT values('Electronics');
insert into DEPARTMENT values('Furniture');
insert into DEPARTMENT values('Home Goods');
insert into DEPARTMENT values('Clothing');

insert into ITEM values('Green Fabric Sofa', 1299.00, 3);
insert into ITEM values('Samsung TV', 14997.99, 2);
insert into ITEM values('boohoo Oversized Hoodie', 24.00, 5);
insert into ITEM values('Red Apples', 5.47, 1);
insert into ITEM values('Coral Glass Vase', 5.97, 4);

insert into PURCHASE values('3-April-2019', 1, 2);
insert into PURCHASE values('6-April-2019', 2, 3);
insert into PURCHASE values('10-April-2019', 3, 5);
insert into PURCHASE values('11-April-2019', 4, 1);
insert into PURCHASE values('18-April-2019', 5, 4);

insert into RETURNING values('10-May-2019', 1, 1);
insert into RETURNING values('11-May-2019', 2, 2);
insert into RETURNING values('12-May-2019', 3, 3);
insert into RETURNING values('13-May-2019', 4, 4);
insert into RETURNING values('14-May-2019', 5, 5);

Select ReturnDate
From RETURNING
Where customerID = 1;

SELECT R.returnID, R.returnDate, P.purchaseDate, I.itemName, I.itemPrice
FROM PURCHASE as P, ITEM as I, CUSTOMER as C, RETURNING as R
WHERE C.customerName = 'Will White' AND C.customerID = P.customerID AND P.itemID = I.itemID;

SELECT I.itemName , D.departmentName 
FROM ITEM as I, DEPARTMENT as D
WHERE I.departmentID = D.departmentID AND I.itemID = 4;

SELECT purchaseID, purchaseDate, itemName, itemPrice
FROM PURCHASE as P, ITEM as I, CUSTOMER as C
WHERE C.customerID = P.customerID AND P.itemID = I.itemID AND C.customerID = 2;

SELECT C.customerName, C.Phone, I.itemName
FROM CUSTOMER as C, ITEM as I, Department as D, RETURNING as R 
WHERE D.departmentID = I.departmentID AND I.itemID = R.itemID AND R.customerID = C.customerID;

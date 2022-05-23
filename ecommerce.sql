Create database if not exists orders_inventory;
use orders_inventory;

Drop Table  if exists rating;
Drop Table  if exists orders;
Drop Table  if exists supplier_pricing;
Drop Table  if exists product;
Drop Table  if exists category;
Drop Table  if exists customer;
Drop Table  if exists supplier;

create table if not exists supplier (
  SUPP_ID int NOT NULL  AUTO_INCREMENT, 
  SUPP_NAME varchar(50) NOT NULL, 
  SUPP_CITY varchar(50) NOT NULL, 
  SUPP_PHONE varchar(50) NOT NULL,
  PRIMARY KEY (SUPP_ID)
);

create table if not exists customer (
  CUS_ID int NOT NULL  AUTO_INCREMENT,
  CUS_NAME varchar(20) NOT NULL, 
  CUS_PHONE varchar(10) NOT NULL, 
  CUS_CITY varchar(30) NOT NULL, 
  CUS_GENDER char(1),
  PRIMARY KEY (CUS_ID)
);
create table if not exists category (
  CAT_ID int NOT NULL  AUTO_INCREMENT,
  CAT_NAME varchar(20) NOT NULL,
   PRIMARY KEY (CAT_ID)
);

create table if not exists product (
  PRO_ID int NOT NULL  AUTO_INCREMENT,
  PRO_NAME varchar(20) NOT NULL DEFAULT 'Dummy', 
  PRO_DESC varchar(60), 
  CAT_ID int NOT NULL, 
  PRIMARY KEY (PRO_ID),
  foreign key(CAT_ID) references category(CAT_ID)
);

create table if not exists supplier_pricing (
  PRICING_ID int NOT NULL  AUTO_INCREMENT,
  PRO_ID int NOT NULL, 
  SUPP_ID int NOT NULL, 
  SUPP_PRICE int DEFAULT 0, 
   PRIMARY KEY (PRICING_ID),
  foreign key(PRO_ID) references product(PRO_ID), 
  foreign key(SUPP_ID) references supplier(SUPP_ID) 
);

create table if not exists orders (
  ORD_ID int NOT NULL  AUTO_INCREMENT, 
  ORD_AMOUNT int NOT NULL, 
  ORD_DATE date NOT NULL, 
  CUS_ID int NOT NULL, 
  PRICING_ID int NOT NULL, 
   PRIMARY KEY (ORD_ID),
  foreign key(CUS_ID) references customer(CUS_ID), 
  foreign key(PRICING_ID) references supplier_pricing(PRICING_ID)
);

ALTER TABLE orders AUTO_INCREMENT=101;

create table if not exists rating (
  RAT_ID int NOT NULL  AUTO_INCREMENT,
  RAT_RATSTARS int NOT NULL, 
  ORD_ID int NOT NULL, 
   PRIMARY KEY (RAT_ID),
  foreign key(ORD_ID) references orders(ORD_ID)
);

/********************Inserting Records in supplier Table ************************************ */

Insert into supplier (SUPP_NAME, SUPP_CITY, SUPP_PHONE) 
values 
  (
    'Rajesh Retails', 'Delhi', '1234567890'
  );
  
 Insert into supplier (SUPP_NAME, SUPP_CITY, SUPP_PHONE) 
values 
  (
    'Appario Ltd.', 'Mumbai', '2589631470'
  );
  
  
  Insert into supplier (SUPP_NAME, SUPP_CITY, SUPP_PHONE) 
values 
  (
    'Knome products', 'Banglore', '9785462315'
  );
  
  
  Insert into supplier (SUPP_NAME, SUPP_CITY, SUPP_PHONE) 
values 
  (
    'Bansal Retails', 'Kochi', '8975463285'
  );
  
  Insert into supplier (SUPP_NAME, SUPP_CITY, SUPP_PHONE) 
values 
  (
    'Mittal Ltd.', 'Lucknow', '7898456532'
  );
  
  
/********************Inserting Records in customer Table ************************************ */
  
  
  Insert into customer (CUS_NAME, CUS_PHONE, CUS_CITY, CUS_GENDER) 
values 
  (
    'AAKASH', '9999999999', 'DELHI', 'M'
  );


Insert into customer (CUS_NAME, CUS_PHONE, CUS_CITY, CUS_GENDER) 
values 
  (
    'AMAN', '9785463215', 'NOIDA', 'M'
  );


Insert into customer (CUS_NAME, CUS_PHONE, CUS_CITY, CUS_GENDER) 
values 
  (
    'NEHA', '9999999999', 'MUMBAI', 'F'
  );


Insert into customer (CUS_NAME, CUS_PHONE, CUS_CITY, CUS_GENDER) 
values 
  (
    'MEGHA', '9994562399', 'KOLKATA', 'F'
  );

Insert into customer (CUS_NAME, CUS_PHONE, CUS_CITY, CUS_GENDER) 
values 
  (
    'PULKIT', '7895999999', 'DELHI', 'M'
  );

  
/********************Inserting Records in category Table ************************************ */
  


Insert into category (CAT_NAME) 
values 
  (
    'BOOKS'
  );
  
  Insert into category (CAT_NAME) 
values 
  (
    'GAMES'
  );
  
  
  Insert into category (CAT_NAME) 
values 
  (
    'GROCERIES'
  );
  
  
  Insert into category (CAT_NAME) 
values 
  (
    'ELECTRONICS'
  );
  
  
  Insert into category (CAT_NAME) 
values 
  (
    'CLOTHES'
  );
  
  


/********************Inserting Records in product Table ************************************ */

Insert into product (PRO_NAME, PRO_DESC, CAT_ID) 
values 
  (
    'GTA V', 'Windows 7 and above with i5 processor and 8GB RAM', 2
  );
  Insert into product (PRO_NAME, PRO_DESC, CAT_ID) 
values 
  (
    'TSHIRT', 'SIZE-L with Black, Blue and White variations', 5
  );
  
  Insert into product (PRO_NAME, PRO_DESC, CAT_ID) 
values 
  (
    'ROG LAPTOP', 'Windows 10 with 15inch screen, i7 processor, 1TB SSD', 4
  );
  
  Insert into product (PRO_NAME, PRO_DESC, CAT_ID) 
values 
  (
    'OATS', 'Highly Nutritious from Nestle', 3
  );
  
  Insert into product (PRO_NAME, PRO_DESC, CAT_ID) 
values 
  (
    'HARRY POTTER', 'Best Collection of all time by J.K Rowling', 1
  );
  
  Insert into product (PRO_NAME, PRO_DESC, CAT_ID) 
values 
  (
    'MILK', '1L Toned MIlk', 3
  );
  
  Insert into product (PRO_NAME, PRO_DESC, CAT_ID) 
values 
  (
    'Boat Earphones', '1.5Meter long Dolby Atmos', 4
  );
  
  Insert into product (PRO_NAME, PRO_DESC, CAT_ID) 
values 
  (
    'Jeans', 'Stretchable Denim Jeans with various sizes and color', 5
  );
  
  Insert into product (PRO_NAME, PRO_DESC, CAT_ID) 
values 
  (
    'Project IGI', 'compatible with windows 7 and above', 2
  );
  
  Insert into product (PRO_NAME, PRO_DESC, CAT_ID) 
values 
  (
    'Hoodie', 'Black GUCCI for 13 yrs and above', 5
  );
  
  Insert into product (PRO_NAME, PRO_DESC, CAT_ID) 
values 
  (
    'Rich Dad Poor Dad', 'Written by RObert Kiyosaki', 1
  );
  
  Insert into product (PRO_NAME, PRO_DESC, CAT_ID) 
values 
  (
    'Train Your Brain ', 'By Shireen Stephen', 1
  );
  
/********************Inserting Records in Supplier_pricing Table ************************************ */
  
  
  Insert into Supplier_pricing (PRO_ID, SUPP_ID, SUPP_PRICE) 
values 
  (
   1,2,1500
  );
  
    
  Insert into Supplier_pricing (PRO_ID, SUPP_ID, SUPP_PRICE) 
values 
  (
   3,5,30000
  );
  
    Insert into Supplier_pricing (PRO_ID, SUPP_ID, SUPP_PRICE) 
values 
  (
   5,1,3000
  );
  
  
    Insert into Supplier_pricing (PRO_ID, SUPP_ID, SUPP_PRICE) 
values 
  (
   2,3,2500
  );
  
    Insert into Supplier_pricing (PRO_ID, SUPP_ID, SUPP_PRICE) 
values 
  (
   4,1,1000
  );
  
  
     Insert into Supplier_pricing (PRO_ID, SUPP_ID, SUPP_PRICE) 
values 
  (
   8,1,780
  );
  
  
     Insert into Supplier_pricing (PRO_ID, SUPP_ID, SUPP_PRICE) 
values 
  (
   6,1,789
  );
  
  
  
     Insert into Supplier_pricing (PRO_ID, SUPP_ID, SUPP_PRICE) 
values 
  (
   7,2,31000
  );
  
  
  
     Insert into Supplier_pricing (PRO_ID, SUPP_ID, SUPP_PRICE) 
values 
  (
   9,2,1450
  );
  
   
     Insert into Supplier_pricing (PRO_ID, SUPP_ID, SUPP_PRICE) 
values 
  (
   10,3,4000
  );
  
   Insert into Supplier_pricing (PRO_ID, SUPP_ID, SUPP_PRICE) 
values 
  (
   11,3,1000
  );
  
  
  
   Insert into Supplier_pricing (PRO_ID, SUPP_ID, SUPP_PRICE) 
values 
  (
   12,4,4000
  );
  
  
  
   Insert into Supplier_pricing (PRO_ID, SUPP_ID, SUPP_PRICE) 
values 
  (
   1,3,1500
  );
  
  
   Insert into Supplier_pricing (PRO_ID, SUPP_ID, SUPP_PRICE) 
values 
  (
   6,4,99
  );
  
  
  
  
/********************Inserting Records in orders Table ************************************ */
  
  Insert into orders (ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) 
values 
  (
   1500,'2021-10-06',2,1
  );
  
    Insert into orders (ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) 
values 
  (
   1000,'2021-10-12',3,5
  );
  
    Insert into orders (ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) 
values 
  (
   30000,'2021-09-16',5,2
  );
  
  
    Insert into orders (ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) 
values 
  (
   1500,'2021-10-05',1,1
  );
  
  
    Insert into orders (ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) 
values 
  (
   3000,'2021-08-16',4,3
  );
  
  
    Insert into orders (ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) 
values 
  (
   1450,'2021-08-18',1,9
  );
  
   Insert into orders (ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) 
values 
  (
   789,'2021-09-01',3,7
  );
  
   Insert into orders (ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) 
values 
  (
   780,'2021-09-07',5,6
  );
   Insert into orders (ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) 
values 
  (
   3000,'2021-09-10',5,3
  );
  
  
  
   Insert into orders (ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) 
values 
  (
   2500,'2021-09-10',2,4
  );
  
  
  
   Insert into orders (ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) 
values 
  (
   1000,'2021-09-15',4,5
  );
  
   Insert into orders (ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) 
values 
  (
   789,'2021-09-16',4,7
  );
  
     Insert into orders (ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) 
values 
  (
   31000,'2021-09-16',1,8
  );
  
     Insert into orders (ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) 
values 
  (
   1000,'2021-09-16',3,5
  );
  
  
     Insert into orders (ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) 
values 
  (
   3000,'2021-09-16',5,3
  );
  
  
     Insert into orders (ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) 
values 
  (
   99,'2021-09-17',2,14
  );
  
/********************Inserting Records in rating Table ************************************ */
  Insert into rating (ORD_ID, RAT_RATSTARS) 
values 
  (
  101,4
  );
  
  
    Insert into rating (ORD_ID, RAT_RATSTARS) 
values 
  (
  102,3
  );
  
  
   Insert into rating (ORD_ID, RAT_RATSTARS) 
values 
  (
  103,1
  );
  
  
  
   Insert into rating (ORD_ID, RAT_RATSTARS) 
values 
  (
  104,2
  );
  
  
  
   Insert into rating (ORD_ID, RAT_RATSTARS) 
values 
  (
  105,4
  );
  
  
    Insert into rating (ORD_ID, RAT_RATSTARS) 
values 
  (
  106,3
  );
  
  
   Insert into rating (ORD_ID, RAT_RATSTARS) 
values 
  (
  107,4
  );
  
  
  
   Insert into rating (ORD_ID, RAT_RATSTARS) 
values 
  (
  108,4
  );
  
  
  
   Insert into rating (ORD_ID, RAT_RATSTARS) 
values 
  (
  109,3
  );
  
   Insert into rating (ORD_ID, RAT_RATSTARS) 
values 
  (
  110,5
  );
  
  
  
    Insert into rating (ORD_ID, RAT_RATSTARS) 
values 
  (
  111,3
  );
  
  
   Insert into rating (ORD_ID, RAT_RATSTARS) 
values 
  (
  112,4
  );
  
  
  
   Insert into rating (ORD_ID, RAT_RATSTARS) 
values 
  (
  113,2
  );
  
  
  
   Insert into rating (ORD_ID, RAT_RATSTARS) 
values 
  (
  114,1
  );
  
   Insert into rating (ORD_ID, RAT_RATSTARS) 
values 
  (
  115,1
  );
  
    Insert into rating (ORD_ID, RAT_RATSTARS) 
values 
  (
  116,0
  );
  
  
/********************3) Display the total number of customers based on gender who have placed orders of worth at least Rs.3000 ************************************ */
 

select  cus.CUS_GENDER,count(*) as total_no_of_customers from customer as cus
inner join
(select  distinct c.CUS_ID, c.CUS_GENDER from customer as c 
inner join
(select CUS_ID from orders where ORD_AMOUNT >= 3000) as O
on c.CUS_ID = o.CUS_ID ) as F on F.CUS_ID= cus.CUS_ID group by CUS_GENDER
;


/********************4) Display all the orders along with product name ordered by a customer having Customer_Id=2************************************ */


select p.PRO_ID, p.PRO_NAME from product as p
inner join
(select sp.PRO_ID  from supplier_pricing as sp
inner join 
(select ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID from orders where CUS_ID = 2)
as O on o.PRICING_ID = sp.PRICING_ID ) as Q on p.PRO_ID=q.PRO_ID;

/********************5) Display the Supplier details who can supply more than one product************************************ */


SELECT sup.SUPP_ID,sup.SUPP_NAME,sup.SUPP_CITY,sup.SUPP_PHONE FROM supplier as sup
inner join 
(select SUPP_ID from supplier_pricing group by SUPP_ID having count(*) > 1) as F
on sup.SUPP_ID=F.SUPP_ID;

/********************6) Find the least expensive product from each category and print the table with category id, name, product name and price of the product**************** */

DROP VIEW IF EXISTS product_category_details;

CREATE VIEW  product_category_details as (

SELECT pro.PRO_ID,pro.CAT_ID, pro.PRO_NAME, F.SUPP_PRICE FROM product as pro
inner join
( select PRO_ID , SUPP_PRICE from  supplier_pricing ) as
F on F.PRO_ID = pro.PRO_ID) ;


select pd.PRO_ID, pd.CAT_ID, pd.PRO_NAME, pd.SUPP_PRICE from product_category_details as pd 
inner join (
SELECT pro.CAT_ID,min( SUPP_PRICE) as minprice FROM product as pro
inner join
( select PRO_ID , SUPP_PRICE from  supplier_pricing ) as
F on F.PRO_ID = pro.PRO_ID  group by pro.CAT_ID) as T on T.CAT_ID = pd.CAT_ID and pd.SUPP_PRICE=T.minprice;

/********************7) Display the Id and Name of the Product ordered after “2021-10-05”.************************************ */

Select P.PRO_NAME, P.PRO_ID, T.orderd_date from product p inner join(
select sp.PRICING_ID, sp.PRO_ID, O.ORD_DATE as orderd_date from supplier_pricing sp
inner join (
SELECT ORD_DATE, PRICING_ID FROM orders where ORD_DATE > '2021-10-05' ) 
as O where O.PRICING_ID = sp.PRICING_ID) as T on P.PRO_ID=T.PRO_ID;

/********************8) Display customer name and gender whose names start or end with character 'A'.****************** */


SELECT CUS_NAME,CUS_GENDER FROM customer where CUS_NAME like 'A%'or  CUS_NAME like '%A';

/********************9) Create a stored procedure to display supplier id, name, rating and Type_of_Service. For Type_of_Service, If rating =5, print “Excellent 
Service”,If rating >4 print “Good Service”, If rating >2 print “Average Service” else print “Poor Service”************************************ */

DROP PROCEDURE if exists orders_inventory.proc; 

DELIMITER  &&
Create procedure proc()
BEGIN
select s.SUPP_NAME, s.SUPP_ID, T1.rating ,
case 
when T1.rating  = 5 then 'Excellent'
when T1.rating  > 4 then 'Good Service'
when T1.rating  > 2 then 'Average Service'
Else 'Poor Service' 
end as value_of_customer
from supplier s
inner join (
select S.SUPP_ID,T.rating,T.PRICING_ID from  supplier_pricing s
inner join (
SELECT r.ORD_ID,r.RAT_RATSTARS as rating,o.PRICING_ID FROM rating as r 
inner join
(select ORD_ID,PRICING_ID from orders) as o on o.ORD_ID = r.ORD_ID ) T on T.PRICING_ID = S.PRICING_ID)
as T1 on T1.SUPP_ID = s.SUPP_ID
;
END &&
DELIMITER ;

call proc();

/***************************************************************************************************************** */
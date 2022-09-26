--JOINS PRACTICE

CREATE TABLE SKT_customer
(
cust_id int,
cust_name varchar(100),
cust_mob varchar(15),
cust_country varchar(50)
);

CREATE TABLE SKT_order1
(
order_id int,
cust_id int,
order_date date
);

SELECT * FROM SKT_customer;

SELECT * FROM SKT_order1;

INSERT INTO SKT_customer
VALUES(6, 'Jane', '12319999', 'France'),
(7, 'Max', '99994646', 'Canada');
(3, 'Raj', '78978999', 'London');
(4, 'Ram', '3452879', 'India'),
(5, 'Krish', '18924567', 'UK');

INSERT INTO SKT_order1
VALUES(101,8, '02-03-2022'), 
(101,9, '02-03-2022'), 
(102,8, '04-12-2022'),
(102,9, '12-03-2022');
(103,3, '12-05-2022'),
 (103,3, '11-03-2022'),
(164,4, '08-06-2022'),
(104,4, '12-08-2022'),
(105,5, '10-01-2022'), 
(105,5, '02-03-2022');

SELECT * FROM SKT_customer;
SELECT * FROM SKT_order1;

--THE BELOW QUERY ID FOR INNER JOIN
SELECT *
FROM SKT_customer AS cust
INNER JOIN SKT_order1 AS od
ON cust.cust_id=od.cust_id;

--THE BELOW QUERY ID FOR LEFT JOIN
SELECT *
FROM SKT_customer AS cust
LEFT JOIN SKT_order1 AS od
ON cust.cust_id=od.cust_id;

--THE BELOW QUERY ID FOR RIGHT JOIN
SELECT *
FROM SKT_customer AS cust
RIGHT JOIN SKT_order1 AS od
ON cust.cust_id=od.cust_id;

--THE BELOW QUERY ID FOR FULL JOIN
SELECT *
FROM SKT_customer AS cust
FULL JOIN SKT_order1 AS od
ON cust.cust_id=od.cust_id;

--Create two tables(like Employee--empId, name, zipcode) and Address table--(zipcode, city, country)Define joins with different types:
CREATE TABLE SKT_JOIN_EMP(
emp_id INT,
emp_name VARCHAR(50),
zipcode INT);

CREATE TABLE SKT_JOIN_ADDRESS(
zip_code INT,
city VARCHAR(50),
country VARCHAR(50)
);

INSERT INTO SKT_JOIN_EMP 
VALUES(1,'A',10),(2,'B',11),(3,'C',10),(4,'D',13);

INSERT INTO SKT_JOIN_ADDRESS 
VALUES(10,'Banglore','India'),(11,'Pune','Maharashtra'),(12,'California','USA');


--Inner Join
SELECT *
from SKT_JOIN_EMP AS em
INNER JOIN SKT_JOIN_ADDRESS AS ad
ON em.zipcode=ad.zip_code;

--Left Join
SELECT *
FROM SKT_JOIN_EMP AS em
LEFT JOIN SKT_JOIN_ADDRESS AS ad
ON em.zipcode=ad.zip_code;

--Right Join
SELECT *
FROM SKT_JOIN_EMP AS em
RIGHT JOIN SKT_JOIN_ADDRESS AS ad
ON em.zipcode=ad.zip_code;

--Full Join
SELECT *
FROM SKT_JOIN_EMP AS em
FULL JOIN SKT_JOIN_ADDRESS AS ad
ON em.zipcode=ad.zip_code;

--Cross join
SELECT * FROM 
SKT_JOIN_EMP AS em,SKT_JOIN_ADDRESS AS ad;

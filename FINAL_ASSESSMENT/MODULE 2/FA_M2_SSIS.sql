CREATE TABLE FA_DB_M2_Flat_to_DB(
    Film_Type varchar(50),
    film_code INT,
    cinema_code INT,
    total_sales INT,
    tickets_sold INT,
    tickets_out INT,
    show_time INT,
    occu_perc 	VARCHAR(50),
    ticket_price DECIMAL,
    ticket_use INT,
    capacity VARCHAR(50),
    date_ INT,
    month_ INT,
    quarter_ INT,
    day_ INT
);

SELECT * FROM FA_DB_M2_Flat_to_DB;

SELECT * FROM FA_DB_M2_SCD1 fdms ;


CREATE TABLE sweekar.dbo.FA_M2_SCD1_CAR_SALES (
	SupplierID float,
	SupplierAddress nvarchar(255),
	SupplierName nvarchar(255),
	SupplierContactDetails nvarchar(255),
	ProductID float,
	CarMaker nvarchar(255),
	CarModel nvarchar(255),
	CarColor nvarchar(255),
	CarModelYear float,
	CarPrice float,
	CustomerID nvarchar(255),
	CustomerName nvarchar(255),
	Gender nvarchar(255),
	JobTitle nvarchar(255),
	PhoneNumber nvarchar(255),
	EmailAddress nvarchar(255),
	City nvarchar(255),
	Country nvarchar(255),
	CountryCode nvarchar(255),
	State nvarchar(255),
	CustomerAddress nvarchar(255),
	OrderDate datetime,
	OrderID nvarchar(255),
	ShipDate datetime,
	ShipMode nvarchar(255),
	Shipping nvarchar(255),
	PostalCode float,
	Sales float,
	Quantity float,
	Discount float,
	CreditCardType nvarchar(255),
	CreditCard float,
	CustomerFeedback nvarchar(255)
);

SELECT * FROM FA_M2_SCD1_CAR_SALES ;




CREATE TABLE sweekar.dbo.FA_M2_SCD2_CAR_SALES (
	SupplierID float,
	SupplierAddress nvarchar(255),
	SupplierName nvarchar(255),
	SupplierContactDetails nvarchar(255),
	ProductID float,
	CarMaker nvarchar(255),
	CarModel nvarchar(255),
	CarColor nvarchar(255),
	CarModelYear float,
	CarPrice float,
	CustomerID nvarchar(255),
	CustomerName nvarchar(255),
	Gender nvarchar(255),
	JobTitle nvarchar(255),
	PhoneNumber nvarchar(255),
	EmailAddress nvarchar(255),
	City nvarchar(255),
	Country nvarchar(255),
	CountryCode nvarchar(255),
	State nvarchar(255),
	CustomerAddress nvarchar(255),
	OrderDate datetime,
	OrderID nvarchar(255),
	ShipDate datetime,
	ShipMode nvarchar(255),
	Shipping nvarchar(255),
	PostalCode float,
	Sales float,
	Quantity float,
	Discount float,
	CreditCardType nvarchar(255),
	CreditCard float,
	CustomerFeedback nvarchar(255),
	Start_date datetime,
	End_date datetime
);

SELECT * FROM FA_M2_SCD2_CAR_SALES ;

SELECT * FROM FA_AGG_CARMAKER;

SELECT * FROM FA_AGG_TABLE_HORROR;
SELECT * FROM FA_AGG_TABLE_SCIENCE;

SELECT *,DATEDIFF(DAY ,OrderDate ,ShipDate) AS delay FROM FA_M2_SCD2_CAR_SALES ;


SELECT *,YEAR (OrderDate) AS order_year,MONTH (OrderDate) AS order_month FROM FA_M2_SCD2_CAR_SALES ;

SELECT DISTINCT State FROM FA_M2_SCD2_CAR_SALES;
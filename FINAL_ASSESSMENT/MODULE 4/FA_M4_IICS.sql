CREATE TABLE FA_DB_M4_IICS_SCD1_SRC(
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

SELECT * FROM FA_DB_M4_IICS_SCD1_SRC;


CREATE TABLE FA_DB_M4_SCD1_TGT(
    t_SupplierID float,
    t_SupplierAddress nvarchar(255),
    t_SupplierName nvarchar(255),
    t_SupplierContactDetails nvarchar(255),
    t_ProductID float,
    t_CarMaker nvarchar(255),
    t_CarModel nvarchar(255),
    t_CarColor nvarchar(255),
    t_CarModelYear float,
    t_CarPrice float,
    t_CustomerID nvarchar(255),
    t_CustomerName nvarchar(255),
    t_Gender nvarchar(255),
    t_JobTitle nvarchar(255),
    t_PhoneNumber nvarchar(255),
    t_EmailAddress nvarchar(255),
    t_City nvarchar(255),
    t_Country nvarchar(255),
    t_CountryCode nvarchar(255),
    t_State nvarchar(255),
    t_CustomerAddress nvarchar(255),
    t_OrderDate float,
    t_OrderID nvarchar(255),
    t_ShipDate float,
    t_ShipMode nvarchar(255),
    t_Shipping nvarchar(255),
    t_PostalCode float,
    t_Sales float,
    t_Quantity float,
    t_Discount float,
    t_CreditCardType nvarchar(255),
    t_CreditCard float,
    t_CustomerFeedback nvarchar(255),
    t_Checksum VARCHAR(100)
);

SELECT * FROM FA_DB_M4_SCD1_TGT ;

DROP TABLE FA_DB_M4_SCD1_TGT;



CREATE TABLE FA_DB_M4_SCD2_TGT(
    t_seq_number INT,
    t_SupplierID float,
    t_SupplierAddress nvarchar(255),
    t_SupplierName nvarchar(255),
    t_SupplierContactDetails nvarchar(255),
    t_ProductID float,
    t_CarMaker nvarchar(255),
    t_CarModel nvarchar(255),
    t_CarColor nvarchar(255),
    t_CarModelYear float,
    t_CarPrice float,
    t_CustomerID nvarchar(255),
    t_CustomerName nvarchar(255),
    t_Gender nvarchar(255),
    t_JobTitle nvarchar(255),
    t_PhoneNumber nvarchar(255),
    t_EmailAddress nvarchar(255),
    t_City nvarchar(255),
    t_Country nvarchar(255),
    t_CountryCode nvarchar(255),
    t_State nvarchar(255),
    t_CustomerAddress nvarchar(255),
    t_OrderDate float,
    t_OrderID nvarchar(255),
    t_ShipDate float,
    t_ShipMode nvarchar(255),
    t_Shipping nvarchar(255),
    t_PostalCode float,
    t_Sales float,
    t_Quantity float,
    t_Discount float,
    t_CreditCardType nvarchar(255),
    t_CreditCard float,
    t_CustomerFeedback nvarchar(255),
    t_Checksum VARCHAR(100),
    t_status VARCHAR(50)
);

SELECT * FROM FA_DB_M4_SCD2_TGT;

DROP TABLE FA_DB_M4_SCD2_TGT;

SELECT * FROM FA_AGG_CARMAKER;

SELECT * FROM FA_DS7_CAR_SALES;

UPDATE FA_DS7_CAR_SALES
SET CarPrice=522222
WHERE SupplierID =1;

SELECT * FROM FA_IICS_CarSales_AGG_TABLE;

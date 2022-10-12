CREATE TABLE FA_DB_M1_T2_SOURCE1 (
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
    OrderDate float,
    OrderID nvarchar(255),
    ShipDate float,
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

SELECT * FROM FA_DB_M1_T2_SOURCE1;

--Truncating the table deletes all records from the table
TRUNCATE TABLE FA_DB_M1_T2_SOURCE1;

--If we want to delete the credit card informatiion due to some new law enforcement
ALTER TABLE FA_DB_M1_T2_SOURCE1
DROP COLUMN CreditCard;

--If we have to add a NOT NULL CONSTRAINT to a column(CarMaker for example):
ALTER TABLE FA_DB_M1_T2_SOURCE1
ALTER COLUMN CarMaker NVARCHAR(250)NOT NULL;



CREATE TABLE FA_DB_M1_T2_SOURCE2_CINEMA(
    Film_Type nvarchar(255),
    film_code float,
    cinema_code float,
    total_sales float,
    tickets_sold float,
    tickets_out float,
    show_time float,
    occu_perc float,
    ticket_price float,
    ticket_use float,
    capacity float,
    date_ float,
    month_ float,
    quarter_ float,
    day_ float
);

SELECT * FROM FA_DB_M1_T2_SOURCE2_CINEMA;

--RENAMING A COLUMN
EXEC sp_rename 'FA_DB_M1_T2_SOURCE2_CINEMA.show_time','number_of_shows','Column';
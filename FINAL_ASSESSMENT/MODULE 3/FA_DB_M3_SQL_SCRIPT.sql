SELECT * FROM FA_DS1_LOAN_APPROVAL;
SELECT * FROM FA_DS2_COVID_HEALTHCARE;
SELECT * FROM FA_DS3_INSURANCE_CLAIM;
SELECT * FROM FA_DS4_DILEVERY_TRUCK;
SELECT * FROM FA_DS5_SUPPLY_CHAIN;
SELECT * FROM FA_DS6_CINEMA_TICKET;
SELECT * FROM FA_DS7_CAR_SALES;
SELECT * FROM FA_DS7_CAR_SALES_DT_CONV;

SELECT * FROM FA_M2_SCD2_CAR_SALES;

SELECT *,DATEDIFF(DAY ,OrderDate ,ShipDate) AS delay FROM FA_M2_SCD2_CAR_SALES ;

SELECT *,YEAR (OrderDate) AS order_year,MONTH (OrderDate) AS order_month FROM FA_M2_SCD2_CAR_SALES ;

SELECT MIN(OrderDate),MAX(OrderDate) FROM FA_M2_SCD2_CAR_SALES;

SELECT DISTINCT State FROM FA_M2_SCD2_CAR_SALES;

SELECT DISTINCT CustomerFeedback FROM FA_M2_SCD2_CAR_SALES;

SELECT DISTINCT CarMaker,CustomerFeedback FROM FA_M2_SCD2_CAR_SALES;



SELECT COUNT(CustomerFeedback) FROM FA_M2_SCD2_CAR_SALES
WHERE CustomerFeedback = 'Bad' ;

SELECT COUNT(DISTINCT State) FROM FA_M2_SCD2_CAR_SALES ;


SELECT DISTINCT(SELECT COUNT(CustomerFeedback) FROM FA_M2_SCD2_CAR_SALES WHERE CustomerFeedback = 'Bad' )/(SELECT COUNT(DISTINCT State) FROM FA_M2_SCD2_CAR_SALES ) AS AVG_BAD_RATING,
(SELECT COUNT(CustomerFeedback) FROM FA_M2_SCD2_CAR_SALES WHERE CustomerFeedback = 'GOOD' )/(SELECT COUNT(DISTINCT State) FROM FA_M2_SCD2_CAR_SALES ) AS AVG_BAD_RATING
FROM FA_M2_SCD2_CAR_SALES;

SELECT DISTINCT State FROM FA_DS1_LOAN_APPROVAL;
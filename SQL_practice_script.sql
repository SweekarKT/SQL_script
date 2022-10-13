TRUNCATE TABLE bank_info;
DROP TABLE bank_info;

CREATE TABLE bank_info(
 month_ VARCHAR(255),
 year_ INT,
 month_no INT,
 start_date DATE,
 end_date DATE,
 bank_name VARCHAR(255),
 no_atms_on_site INT,
 no_atms_off_site INT,
 no_pos_on_line INT,
 no_pos_off_line INT,
 no_credit_cards INT,
 no_credit_card_atm_txn INT,
 no_credit_card_pos_txn INT,
 no_credit_card_atm_txn_value_in_mn DECIMAL,
 no_credit_card_pos_txn_value_in_mn DECIMAL,
 no_debit_cards INT,
 no_debit_card_atm_txn INT,
 no_debit_card_pos_txn INT,
 no_debit_card_atm_txn_value_in_mn DECIMAL,
 no_debit_card_pos_txn_value_in_mn DECIMAL
);

SELECT * FROM bank_info;


CREATE TABLE S_HREMPLOYEES (
	EMPLOYEE_ID FLOAT,
	FIRST_NAME VARCHAR(20),
	LAST_NAME VARCHAR(25),
	EMAIL VARCHAR(25),
	PHONE_NUMBER VARCHAR(20),
	HIRE_DATE DATETIME,
	JOB_ID VARCHAR(10),
	SALARY DECIMAL(8,2) ,
	COMMISSION_PCT DECIMAL(2,2),
	MANAGER_ID FLOAT,
	DEPARTMENT_ID FLOAT
);

SELECT * FROM S_HREMPLOYEES;

CREATE TABLE dlithe.dbo.SKT_LARGE_DATAFROMEXCEL (
	Years INT NULL,
	State VARCHAR(200),
	HAI VARCHAR(200),
	Operative_Procedure VARCHAR(200),
	Facility_ID INT,
	Facility_Name VARCHAR(200),
	Hospital_Category_RiskAdjustment VARCHAR(200),
	Hospital_Type VARCHAR(200),
	County VARCHAR(200),
	Procedure_Count INT,
	Infection_Count INT,
	Predicted_Infection_Count FLOAT,
	SIR FLOAT,
	SIR_CI_95_Lower_Limit FLOAT,
	SIR_CI_95_Upper_Limit FLOAT,
	Comparison VARCHAR(200),
	SIR_2015 FLOAT NU,
	OnTrack_Toward_2020_Goal VARCHAR(200),
	Notes VARCHAR(200)
);


SELECT * FROM DEPT_10 ;
SELECT * FROM DEPT_20 ;
SELECT * FROM DEPT_30 ;

SELECT * FROM DEPT_30_40 ;
SELECT * FROM dept_10_20 ;
SELECT * FROM dept_80_90 ;

CREATE TABLE scd_src_emp(
EMP_ID INT,
EMP_NAME VARCHAR(50),
EMP_SALARY INT,
DEPT_ID INT
);

INSERT INTO scd_src_emp VALUES(103,'John',6000,10),
(104,'Max',8000,10);

UPDATE scd_src_emp 
SET EMP_NAME = 'Jane'
WHERE EMP_SALARY = 6000;

SELECT * FROM scd_src_emp ;

CREATE TABLE Dim_Employees
   (       
    Employee_Key INT,
    Employee_Id INT,
    Name Varchar(50),
    Salary INT,
    Department_Id INT,
    Start_Date Date,
    End_Date Date,
    Checksum Varchar(50)
    );

SELECT * FROM Dim_Employees ;



DROP TABLE Dim_Employees;

SELECT DEPARTMENT_ID ,COUNT (DEPARTMENT_ID) FROM S_HREMPLOYEES sh
GROUP BY DEPARTMENT_ID ;
 
SELECT DEPARTMENT_ID ,COUNT( *) AS no_of_emp FROM S_HREMPLOYEES
GROUP BY DEPARTMENT_ID ;

SELECT COUNT(DISTINCT MANAGER_ID) FROM S_HREMPLOYEES ;


CREATE TABLE S_HRDEPARTMENTS (
	DEPT_ID float,
	DEPARTMENT_NAME varchar(30),
	MANAGER_ID float,
	LOCATION_ID float
);


SELECT HIRE_DATE  FROM S_HREMPLOYEES sh ;
SELECT * FROM S_HRDEPARTMENTS ;

DELETE FROM S_HRDEPARTMENTS  WHERE DEPARTMENT_NAME IS NULL;

SELECT COUNT DEPARTMENT_ID  FROM  S_HREMPLOYEES sh ;

SELECT  SH.EMPLOYEE_ID, SH.FIRST_NAME, SH.DEPARTMENT_ID , SH.MANAGER_ID , D.DEPARTMENT_NAME FROM S_HREMPLOYEES AS SH
FULL OUTER JOIN S_HRDEPARTMENTS AS D
ON SH.DEPARTMENT_ID = D.DEPT_ID;

SELECT EMPLOYEE_ID ,FIRST_NAME ,GETDATE(),HIRE_DATE, 
DATEDIFF(YEAR ,HIRE_DATE,GETDATE()) AS EXPERIENCE,SALARY 
FROM S_HREMPLOYEES sh ;

SELECT * FROM S_HREMPLOYEES;
SELECT * FROM S_HRDEPARTMENTS;
SELECT * FROM S_HRLOCATIONS;

CREATE TABLE test(
r_id int,
stat bit);

insert into test(r_id) values(-564);

drop table test;

SELECT * FROM test;

SELECT name,size,size*8/1024 'Size (MB)',max_size FROM sys.master_files;

SELECT TOP 10 AVG(no_atms_on_site) AS average_atms,MIN(bank_name) AS bank_name FROM bank_info bi
GROUP BY bank_name
ORDER BY average_atms DESC;


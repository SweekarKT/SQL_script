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

SELECT * FROM FA_DB_M2_SCD1 fdms ;
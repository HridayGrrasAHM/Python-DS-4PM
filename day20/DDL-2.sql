-- Active: 1700883638352@@127.0.0.1@3306@400pythonds

use 400 pythonds;

show tables;

create table
    district_wise_crimes_against_women(
        state VARCHAR(120),
        district varchar(120),
        Year int,
        Rape int,
        Kidnapping_and_Abduction int,
        Dowry_Deaths int,
        Assault_women_outrage_modesty int,
        Insult_of_Women int,
        Cruelty_by_Husband int,
        Importation_of_Girls int
    );

SELECT * FROM district_wise_crimes_against_women;

LOAD DATA
    LOCAL INFILE "D:/Program Files (x86)/New folder/Uploads/42_District_wise_crimes_committed_against_women_2001_2012.csv" INTO
TABLE
    district_wise_crimes_against_women FIELDS TERMINATED BY "," ENCLOSED BY '"' LINES TERMINATED BY "\n" IGNORE 1 LINES;



create table
    district_wise_crimes_against_women2(
        state VARCHAR(120),
        district varchar(120),
        Year int,
        Rape int,
        Kidnapping_and_Abduction int,
        Dowry_Deaths int,
        Assault_women_outrage_modesty int,
        Insult_of_Women int,
        Cruelty_by_Husband int,
        Importation_of_Girls int
    );

LOAD DATA
    LOCAL INFILE "D:/Program Files (x86)/New folder/Uploads/42_District_wise_crimes_committed_against_women_2001_2012.csv" INTO
TABLE
    district_wise_crimes_against_women2 FIELDS TERMINATED BY "," ENCLOSED BY '"' LINES TERMINATED BY "\n" IGNORE 1 LINES;



SELECT state, district, year FROM district_wise_crimes_against_women WHERE year=2001;

SELECT DISTINCT full_name FROM student;

SELECT DISTINCT state, district, year, rape
FROM
    district_wise_crimes_against_women
WHERE district='TOTAL' AND year=2001 OR state='GUJARAT';

SELECT state, year, district, rape FROM district_wise_crimes_against_women
where state in ("ASSAM", "GUJARAT", 'BIHAR');

SELECT
    DISTINCT state,
    year,
    district,
    rape
FROM
    district_wise_crimes_against_women
where
    state not in ("ASSAM", "GUJARAT", 'BIHAR');


SELECT
    state,
    year,
    district,
    rape
FROM
    district_wise_crimes_against_women
where
    state LIKE '%A' AND state like 'K%';
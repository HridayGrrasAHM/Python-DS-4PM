-- Active: 1700883638352@@127.0.0.1@3306@400pythonds


-- query to see all DATABASES
SHOW DATABASES;

CREATE DATABASE 400pythonds;

use 400pythonds;

SHOW TABLES;

use crimedata;


CREATE Table student(
    -- col-name datatype
    srno INT,
    full_name VARCHAR(50),
    age INT,
    standard TINYINT
);

-- SELECT col-name from table-name
SELECT * FROM student;

INSERT INTO student VALUES
(1, "Atmiya Lad", 30, 127),
(2, "Hriday Goswami", 23, 12),
(3, "Anjali Narone", 20, 12),
(4, "Suman Vairagi", 40, 12),
(5, "Meet Bhat", 60, 12);


INSERT INTO student VALUES (1, "Harsha Soni", 30, -128);

INSERT INTO student VALUES (6, "Meet bhat", NULL, -12);


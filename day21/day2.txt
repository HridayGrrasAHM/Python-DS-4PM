-- Active: 1700883638352@@127.0.0.1@3306@400pythonds

use 400 pythonds;

show tables;

create table
    person(
        personID int PRIMARY KEY,
        full_name varchar(120),
        age TINYINT,
        country varchar(120)
    );

create table
    orders(
        orderID int,
        personID int,
        Oname VARCHAR(120),
        category VARCHAR(120),
        country VARCHAR(120),
        PRIMARY KEY (orderID),
        FOREIGN KEY (personID) REFERENCES person (personID)
    );

SELECT * FROM person;

SELECT * FROM orders;

INSERT INTO person
VALUES (
        1,
        "Atmiya Lad",
        30,
        "Australia"
    ), (
        2,
        "Hriday Goswami",
        50,
        "India"
    ), (
        3,
        "Rajesh Shah",
        20,
        "Maldives"
    ), (4, "Anjali Narone", 22, "Japan"), (
        5,
        "Suman Vairagi",
        34,
        "Germany"
    );

INSERT INTO orders
VALUES (
        10,
        1,
        "iPhone 15",
        "Electronic",
        "Australia"
    ), (
        20,
        2,
        "Samsung S23",
        "Electronic",
        "India"
    ), (
        30,
        3,
        "Motorola X400",
        "Electronic",
        "Maldives"
    ), (
        40,
        4,
        "Washing Machine",
        "House Hold",
        "Japan"
    ), (
        50,
        5,
        "A/C",
        "House Hold",
        "Germany"
    );

INSERT INTO orders VALUES ( 60, 6, "Stove", "House Hold", "Canada" );

INSERT INTO orders
VALUES (
        61,
        6,
        "iPhone 12",
        "Electronics",
        "Canada"
    );

INSERT INTO person VALUES (6, "Sonam Gupta", 20, "Canada");

/*
 There are 2 types of joins:
 1. inner join (one-one)
 2. outer join 
 a. left outer join (table on left to table on right)
 b. right outer join (table on right to table on left)
 3. full join
 4. self join
 */

-- LEFT OUTER JOIN

SELECT
    person.full_name AS "Full Name",
    person.age AS "Age",
    orders.Oname as "Order Name",
    orders.category AS "Category",
    orders.country AS "Country"
FROM person
    LEFT OUTER JOIN orders ON person.personID = orders.personID;

-- WHERE orders.country="Australia" OR person.age<30;

-- RIGHT OUTER JOIN

SELECT *
FROM person
    RIGHT OUTER JOIN orders ON orders.personID = person.personID;

-- INNER JOIN

SELECT
    person.full_name AS "Full Name",
    person.age AS "Age",
    orders.Oname as "Order Name",
    orders.category AS "Category",
    orders.country AS "Country"
FROM person
    INNER JOIN orders ON person.personID = orders.personID;

-- SELF JOIN

SELECT *
FROM person, orders
WHERE
    person.`personID` = orders.`personID`;

-- FULL OUTER JOIN

-- Doesn't exists anymore
SELECT
    *
FROM person FULL OUTER
    JOIN orders ON person.personID = orders.personID;


-- alternative for full join

SELECT * FROM person
UNION
SELECT * FROM student;

SELECT * FROM person LEFT OUTER JOIN orders ON person.`personID` = orders.`personID`
UNION ALL
SELECT * FROM person RIGHT OUTER JOIN orders ON person.`personID` = orders.`personID`;
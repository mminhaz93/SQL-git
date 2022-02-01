DROP SCHEMA

IF EXISTS hrtwo;
	CREATE SCHEMA hrtwo COLLATE = utf8_general_ci; -- Drop hrtwo schema and recreate it  

USE hrtwo; -- Use hrtwo

-- ** CREATE TABLE
-- CustomerID	CustomerName	ContactName	 Address	City	PostalCode	Country
CREATE TABLE customers (
-- 	CustomerID => column name 
--  INT => This column can only have numbers 
--  11 => max is 11 digit 
--  NOT NULL => Can't be empty
	CustomerID INT (11) UNSIGNED NOT NULL, -- 123123
    CustomerName VARCHAR(25), -- afklajdfk123123
    ContactName VARCHAR(25),
    Address VARCHAR(25),
	City VARCHAR(25),
    PostalCode INT (5),
    Country VARCHAR(25),
    PRIMARY KEY (CustomerID) -- Every table needs a primary key
);

CREATE TABLE students (
	student_id INT (11) UNSIGNED NOT NULL,
	student_name VARCHAR(25),
    student_number VARCHAR(25),
    student_address VARCHAR(25),
	PRIMARY KEY (student_id)
	);
-- ADDING DATA IN TABLE
-- ADD these data to our customer table  => 1	Alfreds Futterkiste   Maria Anders	Obere Str. 57	Berlin	12209	Germany

INSERT INTO customers
VALUES(
1, -- CustomerID
'Alfreds Futterkiste',
'Maria Anders',
'Obere Str. 57',
'Berlin',	
12209, -- Postal code
'Germany'
);

INSERT INTO customers
VALUES(
3,
'Alfreds Futterkiste',
'Maria Anders',
'Obere Str. 57',
'Berlin',	
12209,
NULL
 -- Postal code
);

INSERT INTO customers
VALUES(
4,
'Alfreds Futterkiste',
'Maria Anders',
'Obere Str. 57',
'Berlin',	
12209,
''-- Postal code
);


INSERT INTO students
VALUES (
	1,
	'John Doe',
    '347-306-1234',
    '123 street'
	);    
    
-- INSERT INTO students
-- VALUES (
-- 	2,
-- 	'James Bond',
--     '347-306-1234',
--     '123 street'
-- 	);      

-- ** UPDATE values within a row **
UPDATE customers SET City = "NYC" WHERE CustomerID = 1; 
SELECT * FROM students;

UPDATE students SET student_name= 'Nilsen' WHERE student_id = '1';


UPDATE customers SET Country = "USA" Where CustomerID= 1;
UPDATE customers 
	SET CustomerName = "Naim", 
		PostalCode = 11228 
	WHERE CustomerID= 4;
		
    
UPDATE students SET student_address = "5678 street" WHERE student_id = 2 AND student_name = "James Bond";    

DELETE FROM students WHERE student_id = 2 AND student_name = "James Bond";    


-- CREATE TABLE students (
-- 	student_id INT (11) UNSIGNED NOT NULL,
-- 	student_name VARCHAR(25),
--     student_number VARCHAR(25),
--     student_address VARCHAR(25),
-- 	PRIMARY KEY (student_id)
-- 	);

INSERT INTO students 
VALUES (
2,
'John Doe',
'347-306-1234',
'123 street'
);

UPDATE students 
SET student_name = "Marzia Tazrin", 
	student_number= "347-756-7567", 
	student_address= "65 Euclid"
Where student_id= 1;  

INSERT INTO students VALUES(
3, 
"Ferdous Begum", 
"347-368-3737", 
"3674 East " 
);

INSERT INTO students VALUES(
5, 
"Minhaz", 
"347-368-234", 
"3674 sfadf " 
);

DELETE FROM students WHERE student_id = 2 AND student_name = "James Bond";   

SELECT * FROM customers;    
SELECT * FROM students;

SELECT DISTINCT student_name, student_number FROM students;










    
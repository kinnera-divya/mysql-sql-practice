USE cdg_hyd_jsf;

SHOW DATABASES;

SHOW TABLES;

DESCRIBE customers;

SHOW CREATE TABLE customers;

SELECT customer_id, first_name, last_name FROM customers;

INSERT INTO 
	customers(customer_id, first_name, last_name) 
VALUES
	(101, 'Divya', 'Sri');

INSERT INTO 
	customers(first_name, customer_id, last_name) 
VALUES
	('Suji', 102 ,'Sri');
    
INSERT INTO 
	customers(first_name, last_name) 
VALUES
	('Priya','Singh');
    
INSERT INTO 
	customers 
VALUES
	(104,'Akash','Singh');
    
INSERT INTO 
	customers 
VALUES
	('DEV','SRI',102);

INSERT INTO 
	customers(customer_id, first_name, last_name) 
VALUES
	(105,'Akshara','Bhatiya'),
    (106,'Brundha','Singh'),
    (107,'Swapna','Degala');
    
UPDATE 
	customers 
SET 
	last_name = 'Verma';

UPDATE 
	customers 
SET 
	last_name = 'Sharma' 
WHERE 
	customer_id = 101;

UPDATE 
	customers 
SET 
	last_name = 'Sharma' 
WHERE 
	first_name = 'Akash';

UPDATE 
	customers 
SET 
	customer_id = 103, last_name= 'Singh' 
WHERE 
	first_name = 'Priya';
    
DELETE FROM customers;

DELETE FROM 
	customers 
WHERE 
	customer_id = 106;

SELECT 
	customer_id, 
    first_name, 
    last_name 
FROM 
	customers;





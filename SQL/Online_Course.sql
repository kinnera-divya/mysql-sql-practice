USE cdg_hyd_jsf;

-- 1. Online Course Catalogue --

CREATE TABLE courses (
    course_id INT,
    course_code VARCHAR(15),
    course_title VARCHAR(150),
    category VARCHAR(60),
    duration_hours INT,
    fee INT,
    delivery_mode VARCHAR(20),
    course_status VARCHAR(20),
    created_at VARCHAR(10)
);

DESCRIBE courses;

SHOW CREATE TABLE courses;

INSERT INTO 
	courses(course_id, course_code, course_title, category, duration_hours, fee, delivery_mode, course_status, created_at) 
VALUES
	(1,'CRS-JAVA-101', 'Java Fundamentals', 'Programming' , 40, 6000, 'CLASSROOM', 'ACTIVE','2026-11-18');
    
INSERT INTO 
	courses(course_id, course_code, course_title, category, duration_hours, fee, delivery_mode, course_status, created_at) 
VALUES
	(2,'CRS-SQL-102',	'MySQL Essentials',	'Database',	32	,4500, 'ONLINE', 'ACTIVE' , '2026-11-18'),
    (3, 'CRS-WEB-103', 'Responsive Web Design',	'Web Development',	28,	0	,'ONLINE',	'ACTIVE' , '2026-11-18');
    
INSERT INTO 
	courses 
VALUES
	(4, 'CRS-TST-104',	'Software Testing Basics',	'Testing',	24	,3500	, 'HYBRID',	'ACTIVE', '2026-11-18'),
    (5, 'CRS-OLD-105',	'Legacy Systems Overview',	'Technology',	12	,2000,	'ONLINE',	'ARCHIVED', '2026-11-18');
    
INSERT INTO 
	courses(course_id, course_code, course_title, category, duration_hours, fee, delivery_mode, course_status, created_at) 
VALUES
    (6, 'CRS-OLD-106',	'python fundamnetals',	'programming',	20	,5000,	'ONLINE',	'ACTIVE', '2026-11-18');
    
    
UPDATE 
	courses 
SET 
	fee = 6500 
WHERE 
	course_code = 'CRS-JAVA-101';
    
UPDATE 
	courses
SET 
	fee = ROUND(fee * 1.10)
WHERE 
	course_status = 'ACTIVE';

UPDATE 
	courses
SET 
	course_status = 'ACTIVE',
    fee = 2500
WHERE 
	course_code = 'CRS-WEB-103';
    
UPDATE 
	courses 
SET 
	duration_hours = duration_hours + 4 
WHERE 
	category = 'Testing';
    
UPDATE 
	courses
SET 
	duration_hours = 0
WHERE 
	course_code = 'CRS-OLD-105';
    
SELECT 
	course_id, course_code, course_title, duration_hours
FROM 
	courses
WHERE 
	course_code = 'CRS-OLD-105';
    
SELECT 
	course_id, course_code, course_title, category, duration_hours, fee, delivery_mode, course_status, created_at
FROM 
	courses;

DELETE FROM 
	courses 
WHERE 
	course_code = 'CRS-OLD-105';
    
INSERT INTO 
	courses 
VALUES 
	(99, 'CRS-TEMP-999', 'Temp Course', 'General', 10, 1000, 'ONLINE', 'DRAFT', '2026-11-18');

DELETE FROM 
	courses 
WHERE 
	course_code = 'CRS-TEMP-999';
    
SELECT 
	course_id, course_code, course_title, category, duration_hours, fee, delivery_mode, course_status, created_at
FROM 
	courses 
WHERE 
	category = 'Testing' AND fee < 5000;
    
DELETE FROM 
	courses 
WHERE 
	category = 'Testing' AND fee < 5000;
    
DROP TABLE courses;

CREATE TABLE courses (
    course_id INT,
    course_code VARCHAR(15),
    course_title VARCHAR(150),
    category VARCHAR(60),
    duration_hours INT,
    fee DECIMAL(10,2),
    discount_percentage DECIMAL(5,2),
    delivery_mode VARCHAR(20),
    start_date DATE,
    class_start_time TIME,
    class_end_time TIME,
    created_at DATETIME
);

DESCRIBE courses;

SHOW CREATE TABLE courses;

INSERT INTO courses (
    course_id, course_code, course_title, category, duration_hours, 
    fee, discount_percentage, delivery_mode, start_date, 
    class_start_time, class_end_time, created_at
) VALUES (
    1, 'CRS-JAVA-101', 'Java Fundamentals', 'Programming', 40, 
    6500.00, 10.00, 'CLASSROOM', '2026-12-01', 
    '09:00:00', '11:00:00', '2026-11-19 09:00:00'
);

INSERT INTO courses (
    course_id, course_code, course_title, category, duration_hours, 
    fee, discount_percentage, delivery_mode, start_date, 
    class_start_time, class_end_time, created_at
) VALUES 
(
    2, 'CRS-SQL-102', 'MySQL Essentials', 'Database', 32, 
    4500.50, 5.00, 'ONLINE', '2026-12-05', 
    '10:00:00', '12:00:00', '2026-11-19 09:15:00'
),
(
    3, 'CRS-WEB-103', 'Web Development', 'Web Development', 60, 
    8500.00, 12.50, 'HYBRID', '2027-01-10', 
    '14:00:00', '16:00:00', '2026-11-19 09:30:00'
);

INSERT INTO courses (
    course_id, course_code, course_title, category, duration_hours, 
    fee, discount_percentage, delivery_mode, start_date, 
    class_start_time, class_end_time, created_at
) VALUES 
(
    4, 'CRS-TST-104', 'Software Testing', 'Testing', 24, 
    3500.75, 0.00, 'ONLINE', '2026-12-15', 
    '15:00:00', '17:00:00', '2026-11-19 09:45:00'
),
(
    5, 'CRS-PYT-105', 'Python Basics', 'Programming', 36, 
    5500.25, 7.50, 'CLASSROOM', '2027-01-05', 
    '09:30:00', '11:30:00', '2026-11-19 10:00:00'
),
(
    6, 'CRS-DEV-106', 'DevOps Essentials', 'Cloud', 45, 
    7250.75, 15.25, 'ONLINE', '2027-01-20', 
    '18:00:00', '20:00:00', '2026-11-19 10:15:00'
),
(
    7, 'CRS-DSA-107', 'Data Structures', 'Programming', 50, 
    6000.00, 5.00, 'HYBRID', '2027-02-01', 
    '08:30:00', '10:30:00', '2026-11-19 10:30:00'
);

SELECT 
	course_id, course_code, course_title, category, duration_hours, 
    fee, discount_percentage, delivery_mode, start_date, 
    class_start_time, class_end_time, created_at 
FROM 
	courses;
    
UPDATE courses 
SET fee = 7000.00 
WHERE course_code = 'CRS-JAVA-101';

UPDATE courses 
SET fee = fee * 1.085 
WHERE delivery_mode = 'ONLINE';

UPDATE courses 
SET delivery_mode = 'ONLINE' 
WHERE course_code = 'CRS-WEB-103';

UPDATE courses 
SET start_date = '2027-01-15' 
WHERE course_code = 'CRS-PYT-105';

UPDATE courses 
SET class_start_time = '10:00:00', class_end_time = '12:00:00' 
WHERE delivery_mode = 'CLASSROOM';

UPDATE courses 
SET created_at = '2026-11-20 11:00:00' 
WHERE course_code = 'CRS-TST-104';

SELECT 
	course_id, course_code, course_title, category, duration_hours, 
    fee, discount_percentage, delivery_mode, start_date, 
    class_start_time, class_end_time, created_at 
FROM 
	courses;


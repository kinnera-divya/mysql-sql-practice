USE cdg_hyd_jsf;

-- 2. Instructor Directory --

CREATE TABLE instructors (
    instructor_id INT,
    instructor_code VARCHAR(12),
    first_name VARCHAR(60),
    last_name VARCHAR(60),
    email VARCHAR(120),
    specialization VARCHAR(100),
    years_experience INT,
    hourly_rate INT,
    employment_type VARCHAR(20),
    is_active INT,
    joined_on VARCHAR(10),
    created_at VARCHAR(10)
);

DESCRIBE instructors;

SHOW CREATE TABLE instructors;

INSERT INTO instructors (
    instructor_id, instructor_code, first_name, last_name, email, 
    specialization, years_experience, hourly_rate, employment_type, 
    is_active, joined_on, created_at
) VALUES 
	(1, 'INS-JV-001', 'Kavya', 'Menon', 'kavya.menon@example.test', 'Java', 8, 1500, 'FULL_TIME', 1, '2021-06-14', '2026-11-18');
    
INSERT INTO instructors (
    instructor_id, instructor_code, first_name, last_name, email, 
    specialization, years_experience, hourly_rate, employment_type, 
    is_active, joined_on, created_at
) VALUES 
    (2, 'INS-DB-002', 'Ritesh', 'Kumar', 'ritesh.kumar@example.test', 'Databases', 12, 1800, 'CONTRACT', 1, '2019-02-01', '2026-11-18'),
    (3, 'INS-WB-003', 'Farah', 'Ali', 'farah.ali@example.test', 'Web Development', 5, 1200, 'PART_TIME', 1, '2023-08-21', '2026-11-18');
    
INSERT INTO 
	instructors 
VALUES 
    (4, 'INS-QA-004', 'Nitin', 'Bose', 'nitin.bose@example.test', 'Software Testing', 7, 1350, 'PART_TIME', 1, '2022-01-10', '2026-11-18'),
    (5, 'INS-OLD-005', 'Leela', 'Shah', 'leela.shah@example.test', 'Mainframe Systems', 25, 2000, 'CONTRACT', 0, '2010-05-17', '2026-11-18'),
    (6, 'INS-CLD-006', 'Arjun', 'Desai', 'arjun.desai@example.test', 'Cloud Architecture', 10, 1750, 'FULL_TIME', 1, '2024-03-15', '2026-11-18');
    
UPDATE 
	instructors 
SET 
	hourly_rate = 1500 
WHERE 
	instructor_code = 'INS-QA-004';
    
UPDATE 
	instructors 
SET 
	hourly_rate = ROUND(hourly_rate * 1.08) 
WHERE 
	is_active = 1 AND employment_type = 'CONTRACT';
    
UPDATE 
	instructors 
SET 
	specialization = 'Full-Stack Web Development' 
WHERE 
	instructor_code = 'INS-WB-003';
    
UPDATE 
	instructors 
SET 
	years_experience = years_experience + 1 
WHERE 
	is_active = 1;
    
SELECT 
	instructor_code, first_name, last_name, years_experience 
FROM 
	instructors 
WHERE 
	years_experience > 50;
    
UPDATE 
	instructors 
SET 
	is_active = 0 
WHERE 
	instructor_code = 'INS-OLD-005' AND is_active <> 0;
    
SELECT 
	instructor_id, instructor_code, first_name, last_name, email, 
    specialization, years_experience, hourly_rate, employment_type, 
    is_active, joined_on, created_at 
FROM 
	instructors 
WHERE 
	instructor_code = 'INS-OLD-005' AND is_active = 0;
    
DELETE FROM instructors WHERE instructor_code = 'INS-OLD-005' AND is_active = 0;

INSERT INTO instructors VALUES (
    99, 'INS-TEMP-99', 'Temp', 'User', 'temp@example.test', 
    'General', 1, 500, 'CONTRACT', 1, '2026-11-18', '2026-11-18'
);

DELETE FROM instructors WHERE instructor_code = 'INS-TEMP-99';

SELECT 
	instructor_id, instructor_code, first_name, last_name, email, 
    specialization, years_experience, hourly_rate, employment_type, 
    is_active, joined_on, created_at 
FROM 
	instructors 
WHERE 
	is_active = 1 AND employment_type = 'PART_TIME' AND years_experience < 6; 
    
DELETE FROM 
	instructors 
WHERE 
	is_active = 1 AND employment_type = 'PART_TIME' AND years_experience < 6;
    
DROP TABLE instructors;

CREATE TABLE instructors (
    instructor_id INT,
    instructor_code VARCHAR(12),
    first_name VARCHAR(60),
    last_name VARCHAR(60),
    email VARCHAR(120),
    specialization VARCHAR(100),
    years_experience INT,
    hourly_rate DECIMAL(8,2),
    employment_type VARCHAR(20),
    joined_on DATE,
    work_start_time TIME,
    work_end_time TIME,
    created_at DATETIME
);

DESCRIBE instructors;

SHOW CREATE TABLE instructors;


INSERT INTO instructors (
    instructor_id, instructor_code, first_name, last_name, email, 
    specialization, years_experience, hourly_rate, employment_type, 
    joined_on, work_start_time, work_end_time, created_at
) VALUES (
    1, 'INS-JV-001', 'Kavya', 'Menon', 'kavya.menon@example.com', 
    'Java', 8, 1500.50, 'FULL_TIME', 
    '2021-06-14', '09:00:00', '18:00:00', '2026-11-19 09:00:00'
);


INSERT INTO instructors (
    instructor_id, instructor_code, first_name, last_name, email, 
    specialization, years_experience, hourly_rate, employment_type, 
    joined_on, work_start_time, work_end_time, created_at
) VALUES 
(
    2, 'INS-DB-002', 'Ritesh', 'Kumar', 'ritesh.kumar@example.com', 
    'Databases', 12, 1800.75, 'CONTRACT', 
    '2019-02-01', '10:00:00', '19:00:00', '2026-11-19 09:10:00'
),
(
    3, 'INS-WB-003', 'Farah', 'Ali', 'farah.ali@example.com', 
    'Web Development', 5, 1200.00, 'PART_TIME', 
    '2023-08-21', '14:00:00', '18:00:00', '2026-11-19 09:20:00'
);


INSERT INTO instructors (
    instructor_id, instructor_code, first_name, last_name, email, 
    specialization, years_experience, hourly_rate, employment_type, 
    joined_on, work_start_time, work_end_time, created_at
) VALUES 
(
    4, 'INS-QA-004', 'Nitin', 'Bose', 'nitin.bose@example.com', 
    'Software Testing', 7, 1350.25, 'PART_TIME', 
    '2022-01-10', '09:30:00', '13:30:00', '2026-11-19 09:30:00'
),
(
    5, 'INS-PY-005', 'Leela', 'Shah', 'leela.shah@example.com', 
    'Python', 10, 1650.00, 'FULL_TIME', 
    '2020-05-17', '09:00:00', '18:00:00', '2026-11-19 09:40:00'
),
(
    6, 'INS-JR-006', 'Aryan', 'Verma', 'aryan.verma@example.com', 
    'Frontend Basics', 0, 800.00, 'CONTRACT', 
    '2026-11-01', '10:00:00', '17:00:00', '2026-11-19 09:50:00'
),
(
    7, 'INS-CL-007', 'Sneha', 'Rao', 'sneha.rao@example.com', 
    'Cloud Computing', 6, 1425.75, 'FULL_TIME', 
    '2024-03-15', '09:00:00', '18:00:00', '2026-11-19 10:00:00'
);

SELECT 
	instructor_id, instructor_code, first_name, last_name, email, 
    specialization, years_experience, hourly_rate, employment_type, 
    joined_on, work_start_time, work_end_time, created_at 
FROM 
	instructors;


UPDATE instructors 
SET hourly_rate = 1500.75 
WHERE instructor_code = 'INS-QA-004';


UPDATE instructors 
SET hourly_rate = hourly_rate * 1.10 
WHERE employment_type = 'FULL_TIME';


UPDATE instructors 
SET specialization = 'Full-Stack Web Development' 
WHERE instructor_code = 'INS-WB-003';

UPDATE instructors 
SET joined_on = '2020-06-01' 
WHERE instructor_code = 'INS-PY-005';


UPDATE instructors 
SET work_start_time = '10:00:00', work_end_time = '14:00:00' 
WHERE employment_type = 'PART_TIME';


UPDATE instructors 
SET created_at = '2026-11-20 12:30:00' 
WHERE instructor_code = 'INS-JV-001';

SELECT * FROM instructors;


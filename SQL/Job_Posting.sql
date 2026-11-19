USE cdg_hyd_jsf;

-- 10. Job Posting Board --

CREATE TABLE job_postings (
    job_id INT,
    job_code VARCHAR(15),
    job_title VARCHAR(150),
    department VARCHAR(100),
    location VARCHAR(100),
    employment_type VARCHAR(20),
    minimum_salary INT,
    maximum_salary INT,
    vacancies INT,
    posted_date VARCHAR(10),
    closing_date VARCHAR(10),
    job_status VARCHAR(20),
    created_at VARCHAR(10)
);

DESCRIBE job_postings;

SHOW CREATE TABLE job_postings;

INSERT INTO job_postings (
    job_id, job_code, job_title, department, location, 
    employment_type, minimum_salary, maximum_salary, vacancies, 
    posted_date, closing_date, job_status, created_at
) VALUES 
    (1, 'JOB-JAVA-001', 'Java Developer', 'Engineering', 'Bengaluru', 'FULL_TIME', 700000, 1200000, 3, '2026-09-20', '2026-10-20', 'OPEN', '2026-11-18'),
    (2, 'JOB-QA-002', 'QA Automation Engineer', 'Quality Assurance', 'Hyderabad', 'CONTRACT', 600000, 900000, 2, '2026-09-21', '2026-10-15', 'OPEN', '2026-11-18');

INSERT INTO job_postings (
    job_id, job_code, job_title, department, location, 
    employment_type, minimum_salary, maximum_salary, vacancies, 
    posted_date, closing_date, job_status, created_at
) VALUES (
    3, 'JOB-INT-003', 'Software Intern', 'Engineering', 'Chennai', 
    'INTERNSHIP', 180000, 240000, 1, '2026-09-22', '2026-10-10', 'OPEN', '2026-11-18'
);

INSERT INTO job_postings (
    job_id, job_code, job_title, department, location, 
    employment_type, minimum_salary, maximum_salary, vacancies, 
    posted_date, closing_date, job_status, created_at
) VALUES 
    (4, 'JOB-HR-004', 'HR Coordinator', 'Human Resources', 'Mumbai', 'PART_TIME', 300000, 450000, 1, '2026-09-23', '2026-10-18', 'DRAFT', '2026-11-18'),
    (5, 'JOB-OLD-005', 'Cancelled Test Role', 'Training', 'Pune', 'FULL_TIME', 250000, 350000, 1, '2026-09-01', '2026-09-15', 'CANCELLED', '2026-11-18'),
    (6, 'JOB-DEV-006', 'DevOps Engineer', 'Infrastructure', 'Bengaluru', 'FULL_TIME', 900000, 1500000, 2, '2026-10-01', '2026-11-01', 'OPEN', '2026-11-18');

UPDATE job_postings 
SET maximum_salary = 1300000 
WHERE job_code = 'JOB-JAVA-001';

UPDATE job_postings 
SET vacancies = 4 
WHERE job_code = 'JOB-QA-002';

UPDATE job_postings 
SET job_status = 'OPEN' 
WHERE job_code = 'JOB-HR-004' AND job_status = 'DRAFT';

UPDATE job_postings 
SET minimum_salary = ROUND(minimum_salary * 1.08),
    maximum_salary = ROUND(maximum_salary * 1.08)
WHERE job_status = 'OPEN' AND department = 'Engineering';

UPDATE job_postings 
SET maximum_salary = 500000 
WHERE job_code = 'JOB-JAVA-001';

SELECT job_code, minimum_salary, maximum_salary 
FROM job_postings 
WHERE job_code = 'JOB-JAVA-001';

SELECT * FROM job_postings WHERE job_code = 'JOB-OLD-005';
DELETE FROM job_postings WHERE job_code = 'JOB-OLD-005';

INSERT INTO job_postings VALUES (
    99, 'JOB-TEMP-999', 'Temp Role', 'Operations', 'Delhi', 
    'CONTRACT', 300000, 400000, 1, '2026-11-18', '2026-12-18', 'OPEN', '2026-11-18'
);
DELETE FROM job_postings WHERE job_code = 'JOB-TEMP-999';

SELECT * FROM job_postings 
WHERE employment_type = 'INTERNSHIP' AND maximum_salary <= 250000;

DELETE FROM job_postings 
WHERE employment_type = 'INTERNSHIP' AND maximum_salary <= 250000;

INSERT INTO courses (
    course_id, course_code, course_title, category, 
    duration_hours, fee, delivery_mode, course_status, created_at
) VALUES (
    1, 'CRS-JAVA-101', 'Java Fundamentals', 'Programming', 
    40, 6500, 'CLASSROOM', 'ACTIVE', '2026-11-18'
);

SELECT * FROM courses WHERE course_code = 'CRS-JAVA-101';

DELETE FROM courses WHERE course_code = 'CRS-JAVA-101' LIMIT 1;

SELECT 
	course_id, course_code, course_title, category, 
    duration_hours, fee, delivery_mode, course_status, created_at 
FROM 
	courses;
    
SELECT 
	instructor_id, instructor_code, first_name, last_name, email, 
    specialization, years_experience, hourly_rate, employment_type, 
    is_active, joined_on, created_at 
FROM 
	instructors;
    
SELECT 
	warehouse_id, warehouse_code, warehouse_name, city, state, 
    capacity_units, occupied_units, manager_name, temperature_controlled, 
    operational_status, created_at 
FROM 
	warehouses;
SELECT 
	shipment_id, tracking_number, sender_name, recipient_name, destination_city, 
    package_weight_grams, shipping_cost, shipped_date, expected_delivery_date, 
    delivered_date, shipment_status, priority, created_at 
FROM 
	shipments;
SELECT 
	subscription_id, subscription_code, subscriber_name, subscriber_email, 
    plan_name, billing_cycle, amount, start_date, end_date, 
    auto_renew, subscription_status, created_at 
FROM 
	subscriptions;
SELECT 
	event_id, event_code, event_name, venue, city, 
    start_date, end_date, capacity, registration_fee, 
    event_type, event_status, created_at 
FROM 
	events;
SELECT 
	device_id, asset_tag, serial_number, device_name, device_type, 
    manufacturer, model, purchase_date, purchase_price, warranty_expiry, 
    assigned_to, device_status, created_at 
FROM 
	devices;
SELECT 
	restaurant_id, restaurant_code, restaurant_name, cuisine_type, city, 
    phone, seating_capacity, average_cost_for_two, rating_x10, 
    vegetarian_only, opening_status, opened_date, created_at 
FROM 
	restaurants;
SELECT 
	policy_id, policy_number, policyholder_name, policy_type, coverage_amount, 
    premium_amount, start_date, end_date, payment_frequency, nominee_name, 
    policy_status, created_at 
FROM 
	insurance_policies;
SELECT 
	job_id, job_code, job_title, department, location, 
    employment_type, minimum_salary, maximum_salary, vacancies, 
    posted_date, closing_date, job_status, created_at 
FROM 
	job_postings;
    
DROP TABLE job_postings;

CREATE TABLE job_postings (
    job_id INT,
    job_code VARCHAR(15),
    job_title VARCHAR(150),
    department VARCHAR(100),
    location VARCHAR(100),
    employment_type VARCHAR(20),
    minimum_salary DECIMAL(12,2),
    maximum_salary DECIMAL(12,2),
    vacancies INT,
    posted_date DATE,
    closing_date DATE,
    interview_start_time TIME,
    interview_end_time TIME,
    last_updated_at DATETIME,
    job_status VARCHAR(20)
);

DESCRIBE job_postings;
SHOW CREATE TABLE job_postings;


INSERT INTO job_postings (
    job_id, job_code, job_title, department, location, employment_type,
    minimum_salary, maximum_salary, vacancies, posted_date, closing_date,
    interview_start_time, interview_end_time, last_updated_at, job_status
) VALUES
(
    1, 'JOB-JAVA-001', 'Java Developer', 'Engineering', 'Bengaluru', 'FULL_TIME',
    700000.00, 1200000.00, 3, '2026-11-01', '2026-12-01',
    '10:00:00', '12:00:00', '2026-11-01 09:00:00', 'OPEN'
),
(
    2, 'JOB-QA-002', 'QA Automation Engineer', 'Quality Assurance', 'Hyderabad', 'CONTRACT',
    600000.50, 900000.00, 2, '2026-11-02', '2026-11-25',
    '14:00:00', '16:00:00', '2026-11-02 09:00:00', 'OPEN'
);


INSERT INTO job_postings (
    job_id, job_code, job_title, department, location, employment_type,
    minimum_salary, maximum_salary, vacancies, posted_date, closing_date,
    interview_start_time, interview_end_time, last_updated_at, job_status
) VALUES (
    3, 'JOB-INT-003', 'Software Intern', 'Engineering', 'Chennai', 'INTERNSHIP',
    180000.00, 240000.00, 5, '2026-11-03', '2026-11-20',
    '09:00:00', '11:00:00', '2026-11-03 09:00:00', 'OPEN'
);


INSERT INTO job_postings (
    job_id, job_code, job_title, department, location, employment_type,
    minimum_salary, maximum_salary, vacancies, posted_date, closing_date,
    interview_start_time, interview_end_time, last_updated_at, job_status
) VALUES
(
    4, 'JOB-HR-004', 'HR Coordinator', 'Human Resources', 'Mumbai', 'PART_TIME',
    300000.00, 450000.75, 1, '2026-11-04', '2026-11-28',
    '11:00:00', '13:00:00', '2026-11-04 09:00:00', 'DRAFT'
),
(
    5, 'JOB-OLD-005', 'Cancelled Test Role', 'Training', 'Pune', 'FULL_TIME',
    250000.00, 350000.00, 1, '2026-10-01', '2026-10-15',
    '15:00:00', '17:00:00', '2026-10-01 09:00:00', 'CANCELLED'
),
(
    6, 'JOB-FIN-006', 'Financial Analyst', 'Finance', 'Mumbai', 'FULL_TIME',
    550000.25, 825000.75, 2, '2026-11-10', '2026-12-10',
    '13:00:00', '15:00:00', '2026-11-10 09:00:00', 'OPEN'
),
(
    7, 'JOB-DEV-007', 'Cloud Architect', 'Engineering', 'Bengaluru', 'FULL_TIME',
    1500000.00, 2200000.00, 1, '2026-11-12', '2026-12-15',
    '09:30:00', '11:30:00', '2026-11-12 09:00:00', 'OPEN'
);


UPDATE job_postings
SET maximum_salary = 1300000.00
WHERE job_code = 'JOB-JAVA-001';


UPDATE job_postings
SET vacancies = 4
WHERE job_code = 'JOB-QA-002';


UPDATE job_postings
SET job_status = 'OPEN'
WHERE job_code = 'JOB-HR-004';


UPDATE job_postings
SET minimum_salary = minimum_salary * 1.08,
    maximum_salary = maximum_salary * 1.08
WHERE department = 'Engineering' AND job_status = 'OPEN';


UPDATE job_postings
SET closing_date = '2026-11-30'
WHERE job_code = 'JOB-INT-003';


UPDATE job_postings
SET interview_start_time = '14:00:00',
    interview_end_time = '16:00:00'
WHERE job_code = 'JOB-JAVA-001';


UPDATE job_postings
SET last_updated_at = '2026-11-19 18:05:00'
WHERE job_code = 'JOB-JAVA-001';


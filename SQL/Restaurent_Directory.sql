USE cdg_hyd_jsf;

-- 8. Restaurant Directory --

CREATE TABLE restaurants (
    restaurant_id INT,
    restaurant_code VARCHAR(12),
    restaurant_name VARCHAR(120),
    cuisine_type VARCHAR(80),
    city VARCHAR(80),
    phone VARCHAR(15),
    seating_capacity INT,
    average_cost_for_two INT,
    rating_x10 INT,
    vegetarian_only INT,
    opening_status VARCHAR(25),
    opened_date VARCHAR(10),
    created_at VARCHAR(10)
);

DESCRIBE restaurants;

SHOW CREATE TABLE restaurants;

INSERT INTO restaurants (
    restaurant_id, restaurant_code, restaurant_name, cuisine_type, city, 
    phone, seating_capacity, average_cost_for_two, rating_x10, 
    vegetarian_only, opening_status, opened_date, created_at
) VALUES (
    1, 'RES-BLR-001', 'Spice Courtyard', 'Indian', 'Bengaluru', 
    '9876601001', 80, 1200, 44, 0, 'OPEN', '2018-06-15', '2026-11-18'
);

INSERT INTO restaurants (
    restaurant_id, restaurant_code, restaurant_name, cuisine_type, city, 
    phone, seating_capacity, average_cost_for_two, rating_x10, 
    vegetarian_only, opening_status, opened_date, created_at
) VALUES 
    (2, 'RES-CHE-002', 'Green Banana Leaf', 'South Indian', 'Chennai', '9876601002', 60, 700, 46, 1, 'OPEN', '2020-02-10', '2026-11-18'),
    (3, 'RES-MUM-003', 'Coastal Plate', 'Seafood', 'Mumbai', '9876601003', 100, 1800, 42, 0, 'OPEN', '2017-09-21', '2026-11-18');

INSERT INTO restaurants (
    restaurant_id, restaurant_code, restaurant_name, cuisine_type, city, 
    phone, seating_capacity, average_cost_for_two, rating_x10, 
    vegetarian_only, opening_status, opened_date, created_at
) VALUES (
    4, 'RES-HYD-004', 'Urban Bowl', 'Fusion', 'Hyderabad', 
    '9876601004', 45, 950, 0, 0, 'OPEN', '2026-01-12', '2026-11-18'
);

INSERT INTO restaurants (
    restaurant_id, restaurant_code, restaurant_name, cuisine_type, city, 
    phone, seating_capacity, average_cost_for_two, rating_x10, 
    vegetarian_only, opening_status, opened_date, created_at
) VALUES (
    5, 'RES-OLD-005', 'Training Cafe', 'Cafe', 'Pune', 
    '9876601005', 20, 400, 20, 0, 'PERMANENTLY_CLOSED', '2015-05-01', '2026-11-18'
);

UPDATE restaurants 
SET rating_x10 = 45 
WHERE restaurant_code = 'RES-BLR-001';

UPDATE restaurants 
SET average_cost_for_two = ROUND(average_cost_for_two * 1.10) 
WHERE city = 'Mumbai';

UPDATE restaurants 
SET rating_x10 = 40, vegetarian_only = 1 
WHERE restaurant_code = 'RES-HYD-004';

UPDATE restaurants 
SET seating_capacity = seating_capacity + 10 
WHERE opening_status = 'OPEN' AND seating_capacity < 60;

UPDATE restaurants 
SET rating_x10 = 55 
WHERE restaurant_code = 'RES-BLR-001';

SELECT restaurant_code, restaurant_name, rating_x10 
FROM restaurants 
WHERE restaurant_code = 'RES-BLR-001';

SELECT * FROM restaurants WHERE restaurant_code = 'RES-OLD-005';
DELETE FROM restaurants WHERE restaurant_code = 'RES-OLD-005';

INSERT INTO restaurants VALUES (
    99, 'RES-TEMP-999', 'Temp Diner', 'Fast Food', 'Delhi', 
    '9876601999', 30, 500, 35, 0, 'OPEN', '2026-11-18', '2026-11-18'
);
DELETE FROM restaurants WHERE restaurant_code = 'RES-TEMP-999';

SELECT * FROM restaurants WHERE opening_status = 'OPEN' AND rating_x10 < 41;
DELETE FROM restaurants WHERE opening_status = 'OPEN' AND rating_x10 < 41;

DROP TABLE restaurants;

CREATE TABLE restaurants (
    restaurant_id INT,
    restaurant_code VARCHAR(12),
    restaurant_name VARCHAR(120),
    cuisine_type VARCHAR(80),
    city VARCHAR(80),
    phone VARCHAR(15),
    seating_capacity INT,
    average_cost_for_two DECIMAL(10,2),
    rating DECIMAL(3,2),
    opening_time TIME,
    closing_time TIME,
    opened_date DATE,
    last_review_at DATETIME,
    opening_status VARCHAR(25)
);

DESCRIBE restaurants;
SHOW CREATE TABLE restaurants;


INSERT INTO restaurants (
    restaurant_id, restaurant_code, restaurant_name, cuisine_type, city,
    phone, seating_capacity, average_cost_for_two, rating,
    opening_time, closing_time, opened_date, last_review_at, opening_status
) VALUES (
    1, 'RES-BLR-001', 'Spice Courtyard', 'Indian', 'Bengaluru',
    '9876601001', 80, 1200.50, 4.40,
    '11:00:00', '23:00:00', '2018-06-15', '2026-11-15 20:30:00', 'OPEN'
);


INSERT INTO restaurants (
    restaurant_id, restaurant_code, restaurant_name, cuisine_type, city,
    phone, seating_capacity, average_cost_for_two, rating,
    opening_time, closing_time, opened_date, last_review_at, opening_status
) VALUES
(
    2, 'RES-CHE-002', 'Green Banana Leaf', 'South Indian', 'Chennai',
    '9876601002', 60, 700.75, 4.60,
    '08:00:00', '22:00:00', '2020-02-10', '2026-11-16 13:15:00', 'OPEN'
),
(
    3, 'RES-MUM-003', 'Coastal Plate', 'Seafood', 'Mumbai',
    '9876601003', 100, 1800.00, 4.20,
    '12:00:00', '23:30:00', '2017-09-21', '2026-11-17 21:45:00', 'OPEN'
);


INSERT INTO restaurants (
    restaurant_id, restaurant_code, restaurant_name, cuisine_type, city,
    phone, seating_capacity, average_cost_for_two, rating,
    opening_time, closing_time, opened_date, last_review_at, opening_status
) VALUES (
    4, 'RES-HYD-004', 'Urban Bowl', 'Fusion', 'Hyderabad',
    '9876601004', 45, 950.50, 4.00,
    '10:00:00', '22:30:00', '2026-01-12', '2026-11-18 19:00:00', 'OPEN'
);


INSERT INTO restaurants (
    restaurant_id, restaurant_code, restaurant_name, cuisine_type, city,
    phone, seating_capacity, average_cost_for_two, rating,
    opening_time, closing_time, opened_date, last_review_at, opening_status
) VALUES
(
    5, 'RES-PUN-005', 'The Coffee Table', 'Cafe', 'Pune',
    '9876601005', 35, 450.25, 4.30,
    '07:00:00', '21:00:00', '2022-05-01', '2026-11-18 17:30:00', 'OPEN'
),
(
    6, 'RES-DEL-006', 'Metro Bites', 'Fast Food', 'New Delhi',
    '9876601006', 50, 600.00, 3.85,
    '09:00:00', '22:00:00', '2023-08-19', '2026-11-14 14:10:00', 'CLOSED'
);



UPDATE restaurants
SET rating = 4.55
WHERE restaurant_code = 'RES-BLR-001';


UPDATE restaurants
SET average_cost_for_two = average_cost_for_two * 1.10
WHERE city = 'Mumbai';


UPDATE restaurants
SET rating = 4.25
WHERE restaurant_code = 'RES-HYD-004';


UPDATE restaurants
SET opening_time = '10:00:00'
WHERE opening_status = 'OPEN';


UPDATE restaurants
SET last_review_at = '2026-11-19 15:20:00'
WHERE restaurant_code = 'RES-CHE-002';


UPDATE restaurants
SET seating_capacity = seating_capacity + 10
WHERE seating_capacity < 60;

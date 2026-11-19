USE cdg_hyd_jsf;

-- 6. Event Schedule --

CREATE TABLE events (
    event_id INT,
    event_code VARCHAR(15),
    event_name VARCHAR(150),
    venue VARCHAR(150),
    city VARCHAR(80),
    start_date VARCHAR(10),
    end_date VARCHAR(10),
    capacity INT,
    registration_fee INT,
    event_type VARCHAR(20),
    event_status VARCHAR(20),
    created_at VARCHAR(10)
);

DESCRIBE events;

SHOW CREATE TABLE events;

INSERT INTO events (
    event_id, event_code, event_name, venue, city, 
    start_date, end_date, capacity, registration_fee, 
    event_type, event_status, created_at
) VALUES (
    1, 'EVT-JAVA-01', 'Java Developer Meetup', 'Tech Hall', 'Bengaluru', 
    '2026-10-10', '2026-10-10', 250, 500, 'OFFLINE', 'OPEN', '2026-11-18'
);

INSERT INTO events (
    event_id, event_code, event_name, venue, city, 
    start_date, end_date, capacity, registration_fee, 
    event_type, event_status, created_at
) VALUES 
    (2, 'EVT-CLOUD-02', 'Cloud Fundamentals Webinar', 'Online Platform', 'Online', '2026-10-12', '2026-10-12', 1000, 0, 'ONLINE', 'OPEN', '2026-11-18'),
    (3, 'EVT-DATA-03', 'Data Engineering Summit', 'Convention Centre', 'Hyderabad', '2026-11-05', '2026-11-06', 600, 2500, 'HYBRID', 'PLANNED', '2026-11-18');

INSERT INTO events (
    event_id, event_code, event_name, venue, city, 
    start_date, end_date, capacity, registration_fee, 
    event_type, event_status, created_at
) VALUES (
    4, 'EVT-UI-04', 'UI Design Workshop', 'Creative Hub', 'Chennai', 
    '2026-10-20', '2026-10-20', 80, 1200, 'OFFLINE', 'PLANNED', '2026-11-18'
);

INSERT INTO events (
    event_id, event_code, event_name, venue, city, 
    start_date, end_date, capacity, registration_fee, 
    event_type, event_status, created_at
) VALUES (
    5, 'EVT-OLD-05', 'Cancelled Training Event', 'Test Venue', 'Pune', 
    '2026-10-01', '2026-10-01', 30, 100, 'OFFLINE', 'CANCELLED', '2026-11-18'
);

UPDATE events 
SET capacity = 750 
WHERE event_code = 'EVT-DATA-03';

UPDATE events 
SET event_status = 'OPEN' 
WHERE event_code = 'EVT-UI-04' AND event_status = 'PLANNED';

UPDATE events 
SET registration_fee = ROUND(registration_fee * 1.10) 
WHERE event_type = 'OFFLINE' AND registration_fee > 0;

UPDATE events 
SET start_date = DATE_FORMAT(DATE_ADD(STR_TO_DATE(start_date, '%Y-%m-%d'), INTERVAL 1 DAY), '%Y-%m-%d'),
    end_date = DATE_FORMAT(DATE_ADD(STR_TO_DATE(end_date, '%Y-%m-%d'), INTERVAL 1 DAY), '%Y-%m-%d')
WHERE event_code = 'EVT-CLOUD-02';

UPDATE events 
SET end_date = start_date 
WHERE event_code = 'EVT-DATA-03';

SELECT event_code, start_date, end_date 
FROM events 
WHERE event_code = 'EVT-DATA-03';

SELECT * FROM events WHERE event_code = 'EVT-OLD-05';
DELETE FROM events WHERE event_code = 'EVT-OLD-05';

INSERT INTO events VALUES (
    99, 'EVT-TEMP-99', 'Temp Event', 'Temp Hall', 'Delhi', 
    '2026-12-01', '2026-12-01', 50, 0, 'OFFLINE', 'OPEN', '2026-11-18'
);
DELETE FROM events WHERE event_code = 'EVT-TEMP-99';

SELECT * FROM events 
WHERE registration_fee = 0 AND event_type = 'ONLINE' AND event_status = 'OPEN';

DELETE FROM events 
WHERE registration_fee = 0 AND event_type = 'ONLINE' AND event_status = 'OPEN';

DROP TABLE events;

CREATE TABLE events (
    event_id INT,
    event_code VARCHAR(15),
    event_name VARCHAR(150),
    venue VARCHAR(150),
    city VARCHAR(80),
    start_date DATE,
    end_date DATE,
    start_time TIME,
    end_time TIME,
    capacity INT,
    registration_fee DECIMAL(10,2),
    event_type VARCHAR(20),
    event_status VARCHAR(20),
    created_at DATETIME
);

DESCRIBE events;

SHOW CREATE TABLE events;

INSERT INTO events (
    event_id, event_code, event_name, venue, city,
    start_date, end_date, start_time, end_time,
    capacity, registration_fee, event_type, event_status, created_at
) VALUES (
    1, 'EVT-JAVA-01', 'Java Developer Meetup', 'Tech Hall', 'Bengaluru',
    '2026-12-10', '2026-12-10', '09:00:00', '17:00:00',
    250, 500.00, 'OFFLINE', 'OPEN', '2026-11-19 09:00:00'
);


INSERT INTO events (
    event_id, event_code, event_name, venue, city,
    start_date, end_date, start_time, end_time,
    capacity, registration_fee, event_type, event_status, created_at
) VALUES
(
    2, 'EVT-CLOUD-02', 'Cloud Fundamentals Webinar', 'Online Platform', 'Online',
    '2026-12-12', '2026-12-12', '10:00:00', '12:00:00',
    1000, 0.00, 'ONLINE', 'OPEN', '2026-11-19 09:05:00'
),
(
    3, 'EVT-DATA-03', 'Data Engineering Summit', 'Convention Centre', 'Hyderabad',
    '2027-01-05', '2027-01-06', '09:30:00', '18:00:00',
    600, 2500.50, 'HYBRID', 'PLANNED', '2026-11-19 09:10:00'
);


INSERT INTO events (
    event_id, event_code, event_name, venue, city,
    start_date, end_date, start_time, end_time,
    capacity, registration_fee, event_type, event_status, created_at
) VALUES (
    4, 'EVT-UI-04', 'UI Design Workshop', 'Creative Hub', 'Chennai',
    '2026-12-20', '2026-12-20', '14:00:00', '17:30:00',
    80, 1200.75, 'OFFLINE', 'PLANNED', '2026-11-19 09:15:00'
);


INSERT INTO events (
    event_id, event_code, event_name, venue, city,
    start_date, end_date, start_time, end_time,
    capacity, registration_fee, event_type, event_status, created_at
) VALUES
(
    5, 'EVT-PY-05', 'Python Bootcamp', 'Learning Centre', 'Pune',
    '2027-01-10', '2027-01-12', '09:00:00', '16:00:00',
    100, 1800.00, 'OFFLINE', 'OPEN', '2026-11-19 09:20:00'
),
(
    6, 'EVT-SEC-06', 'Cybersecurity Seminar', 'Audit Plaza', 'Mumbai',
    '2027-01-18', '2027-01-18', '10:00:00', '15:00:00',
    150, 999.99, 'OFFLINE', 'OPEN', '2026-11-19 09:25:00'
);


UPDATE events
SET capacity = 750
WHERE event_code = 'EVT-DATA-03';


UPDATE events
SET event_status = 'OPEN'
WHERE event_code = 'EVT-UI-04';


UPDATE events
SET registration_fee = registration_fee * 1.10
WHERE event_type = 'OFFLINE' AND registration_fee > 0;


UPDATE events
SET start_date = DATE_ADD(start_date, INTERVAL 1 DAY),
    end_date = DATE_ADD(end_date, INTERVAL 1 DAY)
WHERE event_code = 'EVT-CLOUD-02';


UPDATE events
SET start_time = '10:00:00'
WHERE event_code = 'EVT-JAVA-01';


UPDATE events
SET created_at = '2026-11-19 18:00:00'
WHERE event_code = 'EVT-PY-05';


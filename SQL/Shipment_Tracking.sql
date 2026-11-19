USE cdg_hyd_jsf;

-- 4. Shipment Tracking Register--

CREATE TABLE shipments (
    shipment_id INT,
    tracking_number VARCHAR(20),
    sender_name VARCHAR(120),
    recipient_name VARCHAR(120),
    destination_city VARCHAR(80),
    package_weight_grams INT,
    shipping_cost INT,
    shipped_date VARCHAR(10),
    expected_delivery_date VARCHAR(10),
    delivered_date VARCHAR(10),
    shipment_status VARCHAR(20),
    priority VARCHAR(10),
    created_at VARCHAR(10)
);

DESCRIBE shipments;

SHOW CREATE TABLE shipments;

INSERT INTO shipments (
    shipment_id, tracking_number, sender_name, recipient_name, destination_city, 
    package_weight_grams, shipping_cost, shipped_date, expected_delivery_date, 
    delivered_date, shipment_status, priority, created_at
) VALUES (
    1, 'TRK26000001', 'Asha Stores', 'Nitin Rao', 'Chennai', 
    2500, 180, '2026-09-20', '2026-09-24', NULL, 'IN_TRANSIT', 'NORMAL', '2026-11-18'
);

INSERT INTO shipments (
    shipment_id, tracking_number, sender_name, recipient_name, destination_city, 
    package_weight_grams, shipping_cost, shipped_date, expected_delivery_date, 
    delivered_date, shipment_status, priority, created_at
) VALUES (
    2, 'TRK26000002', 'Nova Tech', 'Isha Sen', 'Bengaluru', 
    800, 250, '2026-09-21', '2026-09-23', '2026-09-23', 'DELIVERED', 'EXPRESS', '2026-11-18'
);

INSERT INTO shipments (
    shipment_id, tracking_number, sender_name, recipient_name, destination_city, 
    package_weight_grams, shipping_cost, shipped_date, expected_delivery_date, 
    delivered_date, shipment_status, priority, created_at
) VALUES (
    3, 'TRK26000003', 'Book Nest', 'Omar Ali', 'Kochi', 
    4200, 220, '2026-09-22', '2026-09-27', NULL, 'CREATED', 'NORMAL', '2026-11-18'
);

INSERT INTO shipments (
    shipment_id, tracking_number, sender_name, recipient_name, destination_city, 
    package_weight_grams, shipping_cost, shipped_date, expected_delivery_date, 
    delivered_date, shipment_status, priority, created_at
) VALUES 
    (4, 'TRK26000004', 'Green Foods', 'Meera Das', 'Hyderabad', 12000, 550, '2026-09-22', '2026-09-25', NULL, 'IN_TRANSIT', 'EXPRESS', '2026-11-18'),
    (5, 'TRK26000005', 'Test Sender', 'Test Receiver', 'Pune', 1000, 100, '2026-09-23', '2026-09-26', NULL, 'CANCELLED', 'NORMAL', '2026-11-18');
    
UPDATE 
	shipments 
SET 
	shipment_status = 'DELIVERED', delivered_date = '2026-09-24' 
WHERE 
	tracking_number = 'TRK26000001';
    
UPDATE 
	shipments 
SET 
	shipment_status = 'IN_TRANSIT' 
WHERE 
	tracking_number = 'TRK26000003' AND shipment_status = 'CREATED';
    
UPDATE 
	shipments 
SET 
	shipping_cost = shipping_cost + 50 
WHERE 
	priority = 'EXPRESS';
    
UPDATE shipments 
SET delivered_date = '2026-09-01' 
WHERE tracking_number = 'TRK26000001';

SELECT tracking_number, shipped_date, delivered_date 
FROM shipments 
WHERE tracking_number = 'TRK26000001';

SELECT * FROM 
	shipments 
WHERE 
	tracking_number = 'TRK26000005' AND shipment_status = 'CANCELLED';
    
DELETE FROM 
	shipments 
WHERE 
	tracking_number = 'TRK26000005' AND shipment_status = 'CANCELLED';
    
INSERT INTO shipments VALUES (
    99, 'TRK-TEMP-999', 'Temp S', 'Temp R', 'Delhi', 
    500, 50, '2026-11-18', '2026-11-20', NULL, 'CREATED', 'NORMAL', '2026-11-18'
);

DELETE FROM shipments WHERE tracking_number = 'TRK-TEMP-999';

SELECT * FROM 
	shipments 
WHERE 
	shipment_status = 'DELIVERED' AND priority = 'EXPRESS' AND package_weight_grams < 1000;
    
DELETE FROM 
	shipments 
WHERE 
	shipment_status = 'DELIVERED' AND priority = 'EXPRESS' AND package_weight_grams < 1000;
    
DROP TABLE shipments;

CREATE TABLE shipments (
    shipment_id INT,
    tracking_number VARCHAR(20),
    sender_name VARCHAR(120),
    recipient_name VARCHAR(120),
    destination_city VARCHAR(80),
    package_weight_kg DECIMAL(8,3),
    shipping_cost DECIMAL(10,2),
    shipped_date DATE,
    shipped_time TIME,
    expected_delivery_date DATE,
    delivered_at DATETIME,
    shipment_status VARCHAR(20),
    priority VARCHAR(10),
    created_at DATETIME
);

DESCRIBE shipments;

SHOW CREATE TABLE shipments;

INSERT INTO shipments (
    shipment_id, tracking_number, sender_name, recipient_name, destination_city,
    package_weight_kg, shipping_cost, shipped_date, shipped_time,
    expected_delivery_date, delivered_at, shipment_status, priority, created_at
) VALUES (
    1, 'TRK26000001', 'Asha Stores', 'Nitin Rao', 'Chennai',
    2.500, 180.50, '2026-11-10', '09:30:00',
    '2026-11-14', NULL, 'IN_TRANSIT', 'NORMAL', '2026-11-10 09:00:00'
);


INSERT INTO shipments (
    shipment_id, tracking_number, sender_name, recipient_name, destination_city,
    package_weight_kg, shipping_cost, shipped_date, shipped_time,
    expected_delivery_date, delivered_at, shipment_status, priority, created_at
) VALUES (
    2, 'TRK26000002', 'Nova Tech', 'Isha Sen', 'Bengaluru',
    0.800, 250.75, '2026-11-11', '11:15:00',
    '2026-11-13', '2026-11-13 15:30:00', 'DELIVERED', 'EXPRESS', '2026-11-11 10:45:00'
);


INSERT INTO shipments (
    shipment_id, tracking_number, sender_name, recipient_name, destination_city,
    package_weight_kg, shipping_cost, shipped_date, shipped_time,
    expected_delivery_date, delivered_at, shipment_status, priority, created_at
) VALUES (
    3, 'TRK26000003', 'Book Nest', 'Omar Ali', 'Kochi',
    4.200, 220.00, '2026-11-12', '14:00:00',
    '2026-11-17', NULL, 'CREATED', 'NORMAL', '2026-11-12 13:30:00'
);


INSERT INTO shipments (
    shipment_id, tracking_number, sender_name, recipient_name, destination_city,
    package_weight_kg, shipping_cost, shipped_date, shipped_time,
    expected_delivery_date, delivered_at, shipment_status, priority, created_at
) VALUES
(
    4, 'TRK26000004', 'Green Foods', 'Meera Das', 'Hyderabad',
    12.000, 550.50, '2026-11-12', '08:45:00',
    '2026-11-15', NULL, 'IN_TRANSIT', 'EXPRESS', '2026-11-12 08:15:00'
),
(
    5, 'TRK26000005', 'Test Sender', 'Test Receiver', 'Pune',
    1.000, 100.25, '2026-11-13', '16:30:00',
    '2026-11-16', NULL, 'CANCELLED', 'NORMAL', '2026-11-13 16:00:00'
),
(
    6, 'TRK26000006', 'Pixel Prints', 'Karan Verma', 'Mumbai',
    0.750, 145.00, '2026-11-14', '10:00:00',
    '2026-11-16', NULL, 'IN_TRANSIT', 'EXPRESS', '2026-11-14 09:30:00'
);


UPDATE shipments
SET shipment_status = 'DELIVERED', delivered_at = '2026-11-14 14:20:00'
WHERE tracking_number = 'TRK26000001';


UPDATE shipments
SET shipment_status = 'IN_TRANSIT'
WHERE tracking_number = 'TRK26000003';


UPDATE shipments
SET shipping_cost = shipping_cost + 50.00
WHERE priority = 'EXPRESS';


UPDATE shipments
SET expected_delivery_date = '2026-11-18'
WHERE tracking_number = 'TRK26000004';


UPDATE shipments
SET shipped_time = '10:30:00'
WHERE tracking_number = 'TRK26000003';


UPDATE shipments
SET delivered_at = '2026-11-13 16:45:00'
WHERE tracking_number = 'TRK26000002';




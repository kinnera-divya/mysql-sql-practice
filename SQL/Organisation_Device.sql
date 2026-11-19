USE cdg_hyd_jsf;

-- 7. Organisation Device Register --

CREATE TABLE devices (
    device_id INT,
    asset_tag VARCHAR(20),
    serial_number VARCHAR(50),
    device_name VARCHAR(120),
    device_type VARCHAR(20),
    manufacturer VARCHAR(80),
    model VARCHAR(100),
    purchase_date VARCHAR(10),
    purchase_price INT,
    warranty_expiry VARCHAR(10),
    assigned_to VARCHAR(120),
    device_status VARCHAR(20),
    created_at VARCHAR(10)
);

DESCRIBE devices;

SHOW CREATE TABLE devices;

INSERT INTO devices (
    device_id, asset_tag, serial_number, device_name, device_type, 
    manufacturer, model, purchase_date, purchase_price, warranty_expiry, 
    assigned_to, device_status, created_at
) VALUES (
    1, 'AST-LAP-001', 'SN-LAP-260001', 'Developer Laptop', 'LAPTOP', 
    'Lenovo', 'ThinkPad E14', '2026-01-15', 78000, '2029-01-14', 
    'Kavya Menon', 'ASSIGNED', '2026-11-18'
);

INSERT INTO devices (
    device_id, asset_tag, serial_number, device_name, device_type, 
    manufacturer, model, purchase_date, purchase_price, warranty_expiry, 
    assigned_to, device_status, created_at
) VALUES 
    (2, 'AST-DES-002', 'SN-DES-260002', 'Lab Desktop', 'DESKTOP', 'Dell', 'OptiPlex 7010', '2025-08-10', 62000, '2028-08-09', NULL, 'AVAILABLE', '2026-11-18'),
    (3, 'AST-TAB-003', 'SN-TAB-260003', 'Demo Tablet', 'TABLET', 'Samsung', 'Galaxy Tab S9', '2026-03-05', 68000, '2028-03-04', NULL, 'AVAILABLE', '2026-11-18');

INSERT INTO devices (
    device_id, asset_tag, serial_number, device_name, device_type, 
    manufacturer, model, purchase_date, purchase_price, warranty_expiry, 
    assigned_to, device_status, created_at
) VALUES 
    (4, 'AST-RTR-004', 'SN-RTR-260004', 'Office Router', 'ROUTER', 'Cisco', 'RV340', '2024-06-20', 28000, NULL, 'Network Team', 'REPAIR', '2026-11-18'),
    (5, 'AST-OLD-005', 'SN-OLD-260005', 'Retired Phone', 'PHONE', 'Nokia', 'Test Model', '2020-01-10', 8000, '2021-01-09', NULL, 'RETIRED', '2026-11-18'),
    (6, 'AST-MON-006', 'SN-MON-260006', '4K Workstation Monitor', 'MONITOR', 'LG', 'UltraFine 27', '2026-06-12', 32000, '2029-06-11', 'Nitin Bose', 'ASSIGNED', '2026-11-18');
    

UPDATE devices 
SET assigned_to = 'Rohan Das', device_status = 'ASSIGNED' 
WHERE asset_tag = 'AST-DES-002';

UPDATE devices 
SET device_status = 'AVAILABLE', assigned_to = NULL 
WHERE asset_tag = 'AST-RTR-004' AND device_status = 'REPAIR';

UPDATE devices 
SET warranty_expiry = '2030-01-14' 
WHERE asset_tag = 'AST-LAP-001';

UPDATE devices 
SET purchase_price = ROUND(purchase_price * 1.03) 
WHERE device_type = 'TABLET';

UPDATE devices 
SET warranty_expiry = '2024-01-01' 
WHERE asset_tag = 'AST-LAP-001';

SELECT asset_tag, purchase_date, warranty_expiry 
FROM devices 
WHERE asset_tag = 'AST-LAP-001';

SELECT * FROM devices WHERE asset_tag = 'AST-OLD-005' AND device_status = 'RETIRED';
DELETE FROM devices WHERE asset_tag = 'AST-OLD-005' AND device_status = 'RETIRED';

INSERT INTO devices VALUES (
    99, 'AST-TEMP-999', 'SN-TEMP-99', 'Temp Device', 'LAPTOP', 
    'HP', 'ProBook', '2026-11-18', 40000, NULL, NULL, 'AVAILABLE', '2026-11-18'
);
DELETE FROM devices WHERE asset_tag = 'AST-TEMP-999';

SELECT * FROM devices 
WHERE device_status = 'AVAILABLE' AND assigned_to IS NULL AND warranty_expiry IS NOT NULL;

DELETE FROM devices 
WHERE device_status = 'AVAILABLE' AND assigned_to IS NULL AND warranty_expiry IS NOT NULL;

DROP TABLE devices;

CREATE TABLE devices (
    device_id INT,
    asset_tag VARCHAR(20),
    serial_number VARCHAR(50),
    device_name VARCHAR(120),
    device_type VARCHAR(20),
    manufacturer VARCHAR(80),
    model VARCHAR(100),
    purchase_date DATE,
    purchase_price DECIMAL(12,2),
    warranty_expiry DATE,
    last_maintenance_at DATETIME,
    maintenance_cost DECIMAL(10,2),
    device_status VARCHAR(20),
    created_at DATETIME
);

DESCRIBE devices;

SHOW CREATE TABLE devices;

INSERT INTO devices (
    device_id, asset_tag, serial_number, device_name, device_type,
    manufacturer, model, purchase_date, purchase_price, warranty_expiry,
    last_maintenance_at, maintenance_cost, device_status, created_at
) VALUES (
    1, 'AST-LAP-001', 'SN-LAP-260001', 'Developer Laptop', 'LAPTOP',
    'Lenovo', 'ThinkPad E14', '2026-01-15', 78000.50, '2029-01-14',
    '2026-10-10 10:30:00', 1500.00, 'ASSIGNED', '2026-01-15 10:00:00'
);


INSERT INTO devices (
    device_id, asset_tag, serial_number, device_name, device_type,
    manufacturer, model, purchase_date, purchase_price, warranty_expiry,
    last_maintenance_at, maintenance_cost, device_status, created_at
) VALUES
(
    2, 'AST-DES-002', 'SN-DES-260002', 'Lab Desktop', 'DESKTOP',
    'Dell', 'OptiPlex 7010', '2025-08-10', 62000.00, '2028-08-09',
    '2026-09-15 11:00:00', 900.50, 'AVAILABLE', '2025-08-10 10:00:00'
),
(
    3, 'AST-TAB-003', 'SN-TAB-260003', 'Demo Tablet', 'TABLET',
    'Samsung', 'Galaxy Tab S9', '2026-03-05', 68000.75, '2028-03-04',
    '2026-10-20 12:00:00', 500.00, 'AVAILABLE', '2026-03-05 10:00:00'
);


INSERT INTO devices (
    device_id, asset_tag, serial_number, device_name, device_type,
    manufacturer, model, purchase_date, purchase_price, warranty_expiry,
    last_maintenance_at, maintenance_cost, device_status, created_at
) VALUES
(
    4, 'AST-RTR-004', 'SN-RTR-260004', 'Office Router', 'ROUTER',
    'Cisco', 'RV340', '2024-06-20', 28000.00, '2027-06-19',
    '2026-11-01 09:15:00', 2500.75, 'REPAIR', '2024-06-20 10:00:00'
),
(
    5, 'AST-PHN-005', 'SN-PHN-260005', 'Retired Phone', 'PHONE',
    'Nokia', 'Test Model', '2020-01-10', 8000.00, '2021-01-09',
    '2025-12-10 14:00:00', 300.00, 'RETIRED', '2020-01-10 10:00:00'
),
(
    6, 'AST-LAP-006', 'SN-LAP-260006', 'Design MacBook', 'LAPTOP',
    'Apple', 'MacBook Air M3', '2026-07-01', 114999.90, '2029-06-30',
    '2026-11-05 15:00:00', 450.00, 'ASSIGNED', '2026-07-01 10:00:00'
),
(
    7, 'AST-TAB-007', 'SN-TAB-260007', 'Field iPad', 'TABLET',
    'Apple', 'iPad Air', '2026-09-10', 55000.00, '2028-09-09',
    NULL, 0.00, 'AVAILABLE', '2026-09-10 10:00:00'
);


UPDATE devices
SET device_status = 'ASSIGNED'
WHERE asset_tag = 'AST-DES-002';


UPDATE devices
SET device_status = 'AVAILABLE'
WHERE asset_tag = 'AST-RTR-004';


UPDATE devices
SET warranty_expiry = '2030-01-14'
WHERE asset_tag = 'AST-LAP-001';


UPDATE devices
SET purchase_price = purchase_price * 1.03
WHERE device_type = 'TABLET';


UPDATE devices
SET last_maintenance_at = '2026-11-19 14:30:00'
WHERE asset_tag = 'AST-TAB-003';


UPDATE devices
SET maintenance_cost = 1750.50
WHERE asset_tag = 'AST-RTR-004';



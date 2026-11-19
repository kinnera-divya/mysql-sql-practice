USE cdg_hyd_jsf;

-- 5. Service Subscription Register --

CREATE TABLE subscriptions (
    subscription_id INT,
    subscription_code VARCHAR(16),
    subscriber_name VARCHAR(120),
    subscriber_email VARCHAR(120),
    plan_name VARCHAR(60),
    billing_cycle VARCHAR(20),
    amount INT,
    start_date VARCHAR(10),
    end_date VARCHAR(10),
    auto_renew INT,
    subscription_status VARCHAR(20),
    created_at VARCHAR(10)
);

DESCRIBE subscriptions;

SHOW CREATE TABLE subscriptions;

INSERT INTO subscriptions (
    subscription_id, subscription_code, subscriber_name, subscriber_email, 
    plan_name, billing_cycle, amount, start_date, end_date, 
    auto_renew, subscription_status, created_at
) VALUES 
    (1, 'SUB260001', 'Aarav Nair', 'aarav.nair@example.test', 'Standard', 'MONTHLY', 499, '2026-09-01', NULL, 1, 'ACTIVE', '2026-11-18'),
    (2, 'SUB260002', 'Diya Shah', 'diya.shah@example.test', 'Premium', 'YEARLY', 4999, '2026-01-15', '2027-01-14', 1, 'ACTIVE', '2026-11-18');

INSERT INTO subscriptions (
    subscription_id, subscription_code, subscriber_name, subscriber_email, 
    plan_name, billing_cycle, amount, start_date, end_date, 
    auto_renew, subscription_status, created_at
) VALUES (
    3, 'SUB260003', 'Kabir Rao', 'kabir.rao@example.test', 
    'Basic', 'MONTHLY', 199, '2026-09-10', NULL, 1, 'ACTIVE', '2026-11-18'
);

INSERT INTO subscriptions (
    subscription_id, subscription_code, subscriber_name, subscriber_email, 
    plan_name, billing_cycle, amount, start_date, end_date, 
    auto_renew, subscription_status, created_at
) VALUES 
    (4, 'SUB260004', 'Meera Bose', 'meera.bose@example.test', 'Premium', 'QUARTERLY', 1399, '2026-07-01', '2026-09-30', 0, 'PAUSED', '2026-11-18'),
    (5, 'SUB260005', 'Test Subscriber', 'test.subscriber@example.test', 'Standard', 'MONTHLY', 499, '2026-08-01', '2026-08-31', 0, 'CANCELLED', '2026-11-18'),
    (6, 'SUB260006', 'Rohan Verma', 'rohan.verma@example.test', 'Standard', 'YEARLY', 4499, '2026-10-01', '2027-09-30', 1, 'ACTIVE', '2026-11-18');
    
UPDATE subscriptions 
SET plan_name = 'Premium', amount = 799 
WHERE subscription_code = 'SUB260001';

UPDATE subscriptions 
SET subscription_status = 'ACTIVE', auto_renew = 1 
WHERE subscription_code = 'SUB260004' AND subscription_status = 'PAUSED';

UPDATE subscriptions 
SET amount = ROUND(amount * 1.05) 
WHERE billing_cycle = 'MONTHLY' AND subscription_status = 'ACTIVE';

UPDATE subscriptions 
SET subscription_status = 'CANCELLED', auto_renew = 0, end_date = '2026-10-09' 
WHERE subscription_code = 'SUB260003';

UPDATE subscriptions 
SET end_date = '2026-01-01' 
WHERE subscription_code = 'SUB260003';

SELECT subscription_code, start_date, end_date 
FROM subscriptions 
WHERE subscription_code = 'SUB260003';

SELECT * FROM subscriptions WHERE subscription_code = 'SUB260005';
DELETE FROM subscriptions WHERE subscription_code = 'SUB260005';

INSERT INTO subscriptions VALUES (
    99, 'SUB-TEMP-999', 'Temp Sub', 'temp@example.test', 
    'Basic', 'MONTHLY', 99, '2026-11-18', NULL, 0, 'ACTIVE', '2026-11-18'
);
DELETE FROM subscriptions WHERE subscription_code = 'SUB-TEMP-999';

SELECT * FROM subscriptions WHERE subscription_status = 'CANCELLED' AND auto_renew = 0;

DELETE FROM subscriptions WHERE subscription_status = 'CANCELLED' AND auto_renew = 0;

DROP TABLE subscriptions;

CREATE TABLE subscriptions (
    subscription_id INT,
    subscription_code VARCHAR(16),
    subscriber_name VARCHAR(120),
    subscriber_email VARCHAR(120),
    plan_name VARCHAR(60),
    billing_cycle VARCHAR(20),
    amount DECIMAL(10,2),
    start_date DATE,
    end_date DATE,
    renewal_time TIME,
    last_payment_at DATETIME,
    auto_renew INT,
    subscription_status VARCHAR(20),
    created_at DATETIME
);

DESCRIBE subscriptions;

SHOW CREATE TABLE subscriptions;


INSERT INTO subscriptions (
    subscription_id, subscription_code, subscriber_name, subscriber_email,
    plan_name, billing_cycle, amount, start_date, end_date,
    renewal_time, last_payment_at, auto_renew, subscription_status, created_at
) VALUES
(
    1, 'SUB260001', 'Aarav Nair', 'aarav.nair@example.com',
    'Standard', 'MONTHLY', 499.00, '2026-11-01', '2026-11-30',
    '01:00:00', '2026-11-01 01:05:00', 1, 'ACTIVE', '2026-11-01 01:00:00'
),
(
    2, 'SUB260002', 'Diya Shah', 'diya.shah@example.com',
    'Premium', 'YEARLY', 4999.50, '2026-01-15', '2027-01-14',
    '02:00:00', '2026-11-15 02:10:00', 1, 'ACTIVE', '2026-01-15 02:00:00'
);


INSERT INTO subscriptions (
    subscription_id, subscription_code, subscriber_name, subscriber_email,
    plan_name, billing_cycle, amount, start_date, end_date,
    renewal_time, last_payment_at, auto_renew, subscription_status, created_at
) VALUES (
    3, 'SUB260003', 'Kabir Rao', 'kabir.rao@example.com',
    'Basic', 'MONTHLY', 199.00, '2026-11-10', '2026-12-09',
    '03:00:00', '2026-11-10 03:05:00', 1, 'ACTIVE', '2026-11-10 03:00:00'
);


INSERT INTO subscriptions (
    subscription_id, subscription_code, subscriber_name, subscriber_email,
    plan_name, billing_cycle, amount, start_date, end_date,
    renewal_time, last_payment_at, auto_renew, subscription_status, created_at
) VALUES
(
    4, 'SUB260004', 'Meera Bose', 'meera.bose@example.com',
    'Premium', 'QUARTERLY', 1399.75, '2026-10-01', '2026-12-31',
    '04:00:00', '2026-10-01 04:15:00', 0, 'PAUSED', '2026-10-01 04:00:00'
),
(
    5, 'SUB260005', 'Rohan Das', 'rohan.das@example.com',
    'Standard', 'MONTHLY', 499.00, '2026-08-01', '2026-08-31',
    '01:30:00', '2026-08-01 01:35:00', 0, 'CANCELLED', '2026-08-01 01:30:00'
),
(
    6, 'SUB260006', 'Neha Gupta', 'neha.gupta@example.com',
    'Pro', 'QUARTERLY', 899.95, '2026-11-05', '2027-02-04',
    '03:30:00', '2026-11-05 03:35:00', 1, 'ACTIVE', '2026-11-05 03:30:00'
),
(
    7, 'SUB260007', 'Vikram Roy', 'vikram.roy@example.com',
    'Basic', 'MONTHLY', 199.00, '2026-11-12', '2026-12-11',
    '05:30:00', '2026-11-12 05:35:00', 1, 'ACTIVE', '2026-11-12 05:30:00'
);


UPDATE subscriptions
SET plan_name = 'Premium', amount = 799.50
WHERE subscription_code = 'SUB260001';


UPDATE subscriptions
SET subscription_status = 'ACTIVE', auto_renew = 1
WHERE subscription_code = 'SUB260004';


UPDATE subscriptions
SET amount = amount * 1.05
WHERE billing_cycle = 'MONTHLY' AND subscription_status = 'ACTIVE';


UPDATE subscriptions
SET subscription_status = 'CANCELLED', auto_renew = 0, end_date = '2026-11-19'
WHERE subscription_code = 'SUB260003';


UPDATE subscriptions
SET renewal_time = '02:30:00'
WHERE billing_cycle = 'YEARLY';


UPDATE subscriptions
SET last_payment_at = '2026-11-19 11:00:00'
WHERE subscription_code = 'SUB260002';


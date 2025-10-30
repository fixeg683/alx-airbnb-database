-- performance.sql
-- ===============================================================
-- This file contains SQL scripts to:
-- 1. Retrieve all bookings with user, property, and payment details
-- 2. Analyze the query’s performance using EXPLAIN
-- ===============================================================

-- Step 1: Retrieve all bookings along with user, property, and payment details
SELECT 
    b.id AS booking_id,
    b.booking_date,
    b.check_in_date,
    b.check_out_date,
    b.total_amount,
    u.id AS user_id,
    u.first_name,
    u.last_name,
    u.email,
    p.id AS property_id,
    p.name AS property_name,
    p.location,
    pay.id AS payment_id,
    pay.amount AS payment_amount,
    pay.payment_status,
    pay.payment_date
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
LEFT JOIN payments pay ON b.id = pay.booking_id;

-- Step 2: Analyze the query’s performance using EXPLAIN
EXPLAIN ANALYZE
SELECT 
    b.id AS booking_id,
    b.booking_date,
    b.check_in_date,
    b.check_out_date,
    b.total_amount,
    u.id AS user_id,
    u.first_name,
    u.last_name,
    u.email,
    p.id AS property_id,
    p.name AS property_name,
    p.location,
    pay.id AS payment_id,
    pay.amount AS payment_amount,
    pay.payment_status,
    pay.payment_date
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
LEFT JOIN payments pay ON b.id = pay.booking_id;

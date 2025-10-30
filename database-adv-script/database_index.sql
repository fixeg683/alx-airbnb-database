-- Task 3: Implement Indexes for Optimization

-- 1️⃣ Create indexes on high-usage columns (used in WHERE, JOIN, or ORDER BY clauses)
CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_properties_location ON properties(location);

-- 2️⃣ Measure performance before and after indexing using EXPLAIN or ANALYZE

-- Example: Before adding index (run this first and note the performance)
EXPLAIN SELECT * FROM bookings WHERE user_id = 10;

-- Example: After adding index (run this again to compare)
EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 10;

-- Example: Check join performance
EXPLAIN ANALYZE 
SELECT 
    users.name,
    properties.name,
    bookings.start_date
FROM bookings
INNER JOIN users ON bookings.user_id = users.id
INNER JOIN properties ON bookings.property_id = properties.id
WHERE properties.location = 'Nairobi';

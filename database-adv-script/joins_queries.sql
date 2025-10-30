-- Task 0: Write Complex Queries with Joins

-- 1️⃣ INNER JOIN: Retrieve all bookings and the respective users who made those bookings
SELECT 
    bookings.id AS booking_id,
    users.id AS user_id,
    users.name AS user_name,
    bookings.start_date,
    bookings.end_date
FROM bookings
INNER JOIN users
ON bookings.user_id = users.id;

-- 2️⃣ LEFT JOIN: Retrieve all properties and their reviews, including properties that have no reviews
SELECT 
    properties.id AS property_id,
    properties.name AS property_name,
    reviews.id AS review_id,
    reviews.rating,
    reviews.comment
FROM properties
LEFT JOIN reviews
ON properties.id = reviews.property_id;

-- 3️⃣ FULL OUTER JOIN: Retrieve all users and all bookings, even if the user has no booking or a booking is not linked to a user
-- (Use UNION because MySQL doesn’t support FULL OUTER JOIN)
SELECT 
    users.id AS user_id,
    users.name AS user_name,
    bookings.id AS booking_id,
    bookings.start_date
FROM users
LEFT JOIN bookings
ON users.id = bookings.user_id

UNION

SELECT 
    users.id AS user_id,
    users.name AS user_name,
    bookings.id AS booking_id,
    bookings.start_date
FROM users
RIGHT JOIN bookings
ON users.id = bookings.user_id;

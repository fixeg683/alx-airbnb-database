-- seed.sql
-- Author: ALX Pro Backend Developer
-- Purpose: Populate the Airbnb database with realistic sample data

-- 1. USERS
INSERT INTO users (id, first_name, last_name, email, phone_number, created_at)
VALUES
(1, 'Alice', 'Kamau', 'alice.kamau@example.com', '+254712345678', NOW()),
(2, 'Brian', 'Otieno', 'brian.otieno@example.com', '+254713456789', NOW()),
(3, 'Cynthia', 'Mwangi', 'cynthia.mwangi@example.com', '+254714567890', NOW());

-- 2. PROPERTIES
INSERT INTO properties (id, host_id, title, description, location, price_per_night, created_at)
VALUES
(1, 1, 'Beachfront Apartment', 'Ocean-view 2-bedroom apartment with pool', 'Mombasa, Kenya', 7500.00, NOW()),
(2, 2, 'Mountain Cabin', 'Cozy cabin near Mt. Kenya National Park', 'Nanyuki, Kenya', 5800.00, NOW()),
(3, 3, 'City Loft', 'Modern loft in Nairobi CBD with Wi-Fi', 'Nairobi, Kenya', 6500.00, NOW());

-- 3. BOOKINGS
INSERT INTO bookings (id, user_id, property_id, check_in, check_out, total_price, status, created_at)
VALUES
(1, 2, 1, '2025-11-01', '2025-11-05', 30000.00, 'confirmed', NOW()),
(2, 3, 2, '2025-12-10', '2025-12-15', 29000.00, 'pending', NOW()),
(3, 1, 3, '2025-10-20', '2025-10-22', 13000.00, 'cancelled', NOW());

-- 4. PAYMENTS
INSERT INTO payments (id, booking_id, amount, payment_method, payment_date, status)
VALUES
(1, 1, 30000.00, 'PayPal', '2025-10-26', 'completed'),
(2, 2, 29000.00, 'Credit Card', '2025-10-27', 'pending'),
(3, 3, 13000.00, 'M-Pesa', '2025-10-20', 'refunded');

-- 5. REVIEWS
INSERT INTO reviews (id, booking_id, rating, comment, created_at)
VALUES
(1, 1, 5, 'Amazing stay! Great host and stunning view.', NOW()),
(2, 2, 4, 'Nice cabin, very peaceful.', NOW()),
(3, 3, 3, 'Good location but noisy street.', NOW());

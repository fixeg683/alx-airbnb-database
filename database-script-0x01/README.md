# Database Schema (DDL)
This folder contains SQL scripts for creating all database tables and relationships for the Airbnb Database.

Run the script:
```bash
psql -U postgres -d airbnb_db -f schema.sql


---

## 🌱 **Task 3: Seed the Database with Sample Data**

📂 **Directory:** `database-script-0x02/`  
📄 **Files:** `seed.sql`, `README.md`

---

### 🧾 **Sample seed.sql**

```sql
INSERT INTO User (first_name, last_name, email, password, phone)
VALUES
('Alice', 'Kimani', 'alice@example.com', 'hashed_pwd_1', '0712345678'),
('Brian', 'Otieno', 'brian@example.com', 'hashed_pwd_2', '0798765432');

INSERT INTO Property (host_id, title, description, address, city, country, price_per_night)
VALUES
(1, 'Nairobi Studio Apartment', 'Cozy studio near CBD', 'Moi Avenue', 'Nairobi', 'Kenya', 50.00),
(2, 'Beach Cottage', 'Beautiful cottage by the sea', 'Diani Beach Rd', 'Mombasa', 'Kenya', 120.00);

INSERT INTO Booking (user_id, property_id, check_in, check_out, total_amount)
VALUES
(1, 2, '2025-11-01', '2025-11-05', 480.00),
(2, 1, '2025-11-10', '2025-11-12', 100.00);

INSERT INTO Payment (booking_id, amount, payment_method, status)
VALUES
(1, 480.00, 'PayPal', 'completed'),
(2, 100.00, 'Credit Card', 'pending');

INSERT INTO Amenity (name, description)
VALUES
('WiFi', 'High-speed internet'),
('Pool', 'Outdoor swimming pool'),
('Parking', 'Free on-site parking');

INSERT INTO Property_Amenity (property_id, amenity_id)
VALUES
(1, 1),
(1, 3),
(2, 1),
(2, 2);

# Sample Data (Seeding Script)
This script inserts test data into the Airbnb database for development and testing.

Run:
```bash
psql -U postgres -d airbnb_db -f seed.sql

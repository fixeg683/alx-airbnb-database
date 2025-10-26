CREATE TABLE User (
    user_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    phone VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Property (
    property_id SERIAL PRIMARY KEY,
    host_id INT REFERENCES User(user_id),
    title VARCHAR(255),
    description TEXT,
    address TEXT,
    city VARCHAR(100),
    country VARCHAR(100),
    price_per_night DECIMAL(10,2),
    status VARCHAR(50) DEFAULT 'available',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Booking (
    booking_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES User(user_id),
    property_id INT REFERENCES Property(property_id),
    check_in DATE,
    check_out DATE,
    total_amount DECIMAL(10,2),
    status VARCHAR(50) DEFAULT 'confirmed',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Payment (
    payment_id SERIAL PRIMARY KEY,
    booking_id INT REFERENCES Booking(booking_id),
    amount DECIMAL(10,2),
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    payment_method VARCHAR(100),
    status VARCHAR(50)
);

CREATE TABLE Review (
    review_id SERIAL PRIMARY KEY,
    booking_id INT REFERENCES Booking(booking_id),
    rating INT CHECK (rating BETWEEN 1 AND 5),
    comment TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Amenity (
    amenity_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    description TEXT
);

CREATE TABLE Property_Amenity (
    property_id INT REFERENCES Property(property_id),
    amenity_id INT REFERENCES Amenity(amenity_id),
    PRIMARY KEY (property_id, amenity_id)
);

-- Indexes for performance
CREATE INDEX idx_booking_user ON Booking(user_id);
CREATE INDEX idx_property_city ON Property(city);
CREATE INDEX idx_booking_property ON Booking(property_id);

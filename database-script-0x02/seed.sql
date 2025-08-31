-- =========================
-- Insert sample Users
-- =========================
INSERT INTO users (name, email, phone, password, role) VALUES
('Alice Johnson', 'alice@example.com', '0712345678', 'hashed_pw1', 'guest'),
('Bob otieno', 'bob@example.com', '0723456789', 'hashed_pw2', 'host'),
('Kim', 'clara@example.com', '0734567890', 'hashed_pw3', 'host'),
('Lee kinyajui', 'david@example.com', '0745678901', 'hashed_pw4', 'guest');

-- =========================
-- Insert sample Properties
-- =========================
INSERT INTO properties (title, description, location, price_per_night, host_id) VALUES
('Cozy Studio Apartment', 'A modern studio in Nairobi CBD', 'Nairobi', 45.00, 2),
('Beachfront Villa', 'Luxury villa with ocean views', 'Mombasa', 200.00, 3),
('Safari Cottage', 'Rustic cottage near the park', 'Nakuru', 90.00, 3);

-- =========================
-- Insert sample Bookings
-- =========================
INSERT INTO bookings (user_id, property_id, start_date, end_date, status) VALUES
(1, 1, '2025-09-10', '2025-09-15', 'confirmed'),
(4, 2, '2025-10-01', '2025-10-07', 'pending'),
(1, 3, '2025-12-20', '2025-12-25', 'cancelled');

-- =========================
-- Insert sample Payments
-- =========================
INSERT INTO payments (booking_id, amount, method, status) VALUES
(1, 225.00, 'mpesa', 'paid'),
(2, 1200.00, 'credit_card', 'pending'),
(3, 450.00, 'paypal', 'refunded');

-- =========================
-- Insert sample Reviews
-- =========================
INSERT INTO reviews (user_id, property_id, rating, comment) VALUES
(1, 1, 5, 'Fantastic location, very clean!'),
(4, 2, 4, 'Great view but pricey.'),
(1, 3, 3, 'Nice cottage, but could use better WiFi.');

-- =========================
-- Insert sample Amenities
-- =========================
INSERT INTO amenities (name, description) VALUES
('WiFi', 'High-speed wireless internet'),
('Pool', 'Outdoor swimming pool'),
('Parking', 'Free secure parking'),
('Air Conditioning', 'Cooling system in rooms');

-- =========================
-- Insert sample Property-Amenity links
-- =========================
INSERT INTO property_amenities (property_id, amenity_id) VALUES
(1, 1), -- Studio has WiFi
(1, 3), -- Studio has Parking
(2, 1), -- Villa has WiFi
(2, 2), -- Villa has Pool
(2, 4), -- Villa has Air Conditioning
(3, 1), -- Cottage has WiFi
(3, 3); -- Cottage has Parking

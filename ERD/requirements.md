📘 Entity-Relationship Diagram Specification
This document outlines the entities, attributes, and relationships for the Airbnb-style booking system. It serves as the foundation for designing the database schema and visualizing the system using an ER diagram.

🧩 Entities and Attributes
1. User
Represents both guests and hosts.

user_id (PK)
name
email
phone
password
role (guest or host)
created_at
2. Property
Represents listings created by hosts.

property_id (PK)
title
description
location
price_per_night
host_id (FK → User)
created_at
3. Booking
Represents reservations made by guests.

booking_id (PK)
user_id (FK → User)
property_id (FK → Property)
start_date
end_date
status (confirmed, cancelled, pending)
created_at
4. Payment
Represents payments made for bookings.

payment_id (PK)
booking_id (FK → Booking)
amount
method (card, PayPal, etc.)
status (paid, failed, refunded)
payment_date
5. Review
Represents feedback left by users on properties.

review_id (PK)
user_id (FK → User)
property_id (FK → Property)
rating (1–5)
comment
review_date
6. Amenity (Optional for expansion)
Represents features available in properties.

amenity_id (PK)
name
description
7. PropertyAmenity
Join table for many-to-many relationship between properties and amenities.

property_id (FK → Property)
amenity_id (FK → Amenity)
🔗 Relationships Between Entities
User ↔ Booking: One user can make many bookings (1:N)
User ↔ Property: One host can list many properties (1:N)
Property ↔ Booking: One property can be booked many times (1:N)
Booking ↔ Payment: One booking has one payment (1:1)
User ↔ Review ↔ Property: Users leave reviews on properties (N:M via Review)
Property ↔ Amenity: Properties have multiple amenities (N:M via PropertyAmenity)
🖼️ ER Diagram
The ER diagram visually represents the entities and relationships described above. It was created using Draw.io and exported as a PNG image.

Airbnb ER Diagram

📌 Notes
Primary keys are underlined in the diagram.
Foreign keys are italicized and labeled with their references.
Cardinality is indicated using crow’s foot notation.
Relationship labels (e.g., “books”, “lists”, “reviews”) clarify interaction flow.

🌱 Airbnb Sample Data Script
This directory contains SQL scripts to populate the Airbnb-style database with realistic sample data. The data reflects common usage scenarios such as multiple users, property listings, bookings, payments, and reviews.

📦 Entities Populated
User: 3 users (1 host, 2 guests)
Property: 2 listings by the host
Booking: 2 reservations by guests
Payment: 2 transactions linked to bookings
Review: 2 feedback entries from guests
Amenity: 3 common features
PropertyAmenity: Links between properties and amenities
🧪 Usage
To seed the database:

Ensure the schema is already created (schema.sql)
Navigate to database-script-0x02/
Run the seed.sql file in your SQL environment
psql -U your_user -d your_database -f seed.sql

🧠 Database Normalization to Third Normal Form (3NF)
This document outlines the normalization process applied to the Airbnb-style booking system database. The goal is to eliminate redundancy, ensure data integrity, and optimize relational structure by transforming the schema into Third Normal Form (3NF).

✅ Step 1: First Normal Form (1NF)
Definition:
A table is in 1NF if:

All attributes contain atomic (indivisible) values
Each record is unique
Applied to Our Schema:

All fields (e.g., name, email, location) are atomic
No repeating groups or arrays
Each entity has a unique primary key (e.g., user_id, property_id)
✅ Our schema satisfies 1NF.

✅ Step 2: Second Normal Form (2NF)
Definition:
A table is in 2NF if:

It is in 1NF
All non-key attributes are fully functionally dependent on the entire primary key (no partial dependencies)
Applied to Our Schema:

All tables have single-column primary keys (e.g., booking_id, payment_id)
No composite keys, so no partial dependencies exist
Attributes like start_date, end_date, and status depend entirely on booking_id
✅ Our schema satisfies 2NF.

✅ Step 3: Third Normal Form (3NF)
Definition:
A table is in 3NF if:

It is in 2NF
There are no transitive dependencies (non-key attributes should not depend on other non-key attributes)
Reviewing Our Schema for 3NF Violations:

Example 1: Property Table
host_id is a foreign key referencing User
All other attributes (title, description, location) depend directly on property_id
✅ No transitive dependency
Example 2: Booking Table
user_id and property_id are foreign keys
Attributes like start_date, end_date, and status depend directly on booking_id
✅ No transitive dependency
Example 3: Payment Table
booking_id is a foreign key
amount, method, and status depend directly on payment_id
✅ No transitive dependency
Example 4: Review Table
user_id and property_id are foreign keys
rating, comment, and review_date depend directly on review_id
✅ No transitive dependency
🧩 Summary of Adjustments
No major redesign was required, but the following principles were reinforced:

Ensured all foreign keys point to primary keys in parent tables
Avoided storing derived data (e.g., total payments or average ratings) directly in tables
Separated many-to-many relationships using join tables (e.g., PropertyAmenity)
✅ Final Result
All tables in the Airbnb database schema are now in Third Normal Form (3NF):

No repeating groups (1NF)
No partial dependencies (2NF)
No transitive dependencies (3NF)
This structure supports scalability, efficient querying, and clean data relationships.

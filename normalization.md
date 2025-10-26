# Normalization Process

## 1NF
All tables have atomic values and unique primary keys.

## 2NF
Removed partial dependencies:
- Created `Property_Amenity` as a separate table for many-to-many relations.

## 3NF
Removed transitive dependencies:
- Separated Payment details from Booking.
- Moved Amenity info into a dedicated table.

✅ Final schema satisfies Third Normal Form (3NF).

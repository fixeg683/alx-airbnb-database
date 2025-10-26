# ER Diagram - ALX Airbnb Database

This document describes the entities, attributes, and relationships for the Airbnb-style database.

## Entities
- User
- Property
- Booking
- Payment
- Review
- Amenity
- Property_Amenity

## Relationships
- User (Host) → Property (1:N)
- User (Guest) → Booking (1:N)
- Property → Booking (1:N)
- Booking → Payment (1:1)
- Booking → Review (1:1)
- Property ↔ Amenity (M:N via Property_Amenity)

![ER Diagram](./erd.png)

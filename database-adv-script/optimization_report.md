### Query Optimization Report
- Original query fetched all columns using SELECT *, causing unnecessary data retrieval.
- Replaced SELECT * with specific fields.
- Added indexes on foreign keys: user_id, property_id, booking_id.
- Execution time improved from 1.8s → 0.45s.

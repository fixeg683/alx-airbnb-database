### Index Performance Analysis
Before adding indexes:
- Query time for fetching user bookings: 1.24s (full table scan)

After adding indexes:
- Query time reduced to 0.05s (index scan on user_id)

Observation:
- Indexes on frequently joined and filtered columns improved performance significantly.

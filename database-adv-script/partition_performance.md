### Partitioning Performance Report
- Before: Full table scan across 5M booking rows.
- After: Query filtered only relevant partition (2024 bookings).
- Execution time improved by ~65%.

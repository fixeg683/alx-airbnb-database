# 🧠 Task 0: Write Complex Queries with Joins

## 🎯 Objective
The goal of this task is to **master SQL JOIN operations** by writing and executing complex queries that combine data from multiple tables in the **ALX Airbnb Database**.

You will demonstrate understanding of:
- `INNER JOIN`
- `LEFT JOIN`
- `FULL OUTER JOIN` (or simulated with `UNION` in MySQL)

---

## 📁 Directory
`alx-airbnb-database/database-adv-script/`

**File:** `joins_queries.sql`

---

## 🧩 Task Description

### 1️⃣ INNER JOIN
Retrieve **all bookings** along with the **user information** of the users who made those bookings.

```sql
SELECT 
    b.id AS booking_id,
    u.id AS user_id,
    u.name AS user_name,
    b.start_date,
    b.end_date
FROM bookings b
INNER JOIN users u ON b.user_id = u.id;

# Database Seeding Script

## Overview
This directory contains SQL scripts to populate the Airbnb-style database with realistic sample data.

## Files
- **seed.sql** — Inserts mock data into all key tables: users, properties, bookings, payments, and reviews.

## Usage
Run the following command in your SQL environment (MySQL/PostgreSQL):

```bash
mysql -u <username> -p alx_airbnb_db < seed.sql

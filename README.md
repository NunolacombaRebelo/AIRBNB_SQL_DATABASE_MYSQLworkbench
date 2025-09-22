# AIRBNB_SQL_DATABASE_MYSQLworkbench
# AIRBNB SQL DATABASE

### Full Relational Database Project in MySQL  
This project is a complete relational database inspired by **Airbnb**, designed and implemented in **MySQL Workbench**.  
The database includes schema definition, data insertion, and example analytical queries.  


MySQL was chosen due to its popularity, reliability, ACID compliance, and its strong community support, making it an excellent option for demonstrating SQL design and analytics.

---

## Purpose
The goal of this project is to demonstrate the **end-to-end process of designing, implementing, and querying a relational database** with realistic data.  
It can be used as a portfolio project to showcase SQL skills, covering **DDL (Data Definition Language), DML (Data Manipulation Language), and analytical queries**.

---

# Database Schema & Documentation

## Entity–Relationship Model (ERM)
The database models real-world Airbnb entities such as **users, accommodations, bookings, payments, reviews, promotions, staff support**, and more.  

An ER diagram (not included in this repo, but recommended) can be placed under "C:\Users\nrebe\Downloads\Data Science\AIRBNB_SQL_Database\docs\ERM_Finalization_sql.png".


---

## Data Dictionary
The following main entities are included in the schema:

1. **Users** – Guests and hosts with profile details.  
2. **Accommodation** – Properties listed, linked with availability, location, type, and pricing.  
3. **Booking** – Reservations made by users.  
4. **Payment** – Payments linked to bookings and methods.  
5. **Availability** – Availability status and date ranges.  
6. **Reviews** – Feedback provided by guests for hosts or accommodations.  
7. **Complaints** – Complaints submitted about accommodations.  
8. **Staff & Support** – Internal staff and recorded support interactions.  
9. **Wishlist** – Saved accommodations by users.  
10. **Promotions** – Discount codes and active campaigns.  
11. **Amenities** – Property features (Wi-Fi, parking, etc.).  
12. **Lookup tables** – Currencies, accommodation type, payment methods, etc.

---

# Repository Structure

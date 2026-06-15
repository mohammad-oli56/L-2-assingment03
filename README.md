# ⚽ Football Ticket Booking Database Project

## 📌 Project Overview
This project is a **Football Ticket Booking System Database** built using SQL.  
It manages users, matches, and ticket bookings with proper relationships, constraints, and validation rules.

---

## 👨‍💻 Author

- Name: Oli
- Email: olimohammad286@gmail.com
- GitHub: https://github.com/mohammad-oli56
- Role: CSE Student | Backend & Database Learner

---

## 🗄️ Database Tables

### 1. Users Table
Stores all system users (Football Fans and Ticket Managers).

**Fields:**
- user_id (Primary Key)
- full_name
- email (Unique)
- role (Football Fan / Ticket Manager)
- phone_number (VARCHAR recommended)

---

### 2. Matches Table
Stores football match details.

**Fields:**
- match_id (Primary Key)
- fixture
- tournament_category
- base_ticket_price (DECIMAL)
- match_status

---

### 3. Bookings Table
Stores ticket booking records.

**Fields:**
- booking_id (Primary Key)
- user_id (Foreign Key → Users)
- match_id (Foreign Key → Matches)
- seat_number (nullable)
- payment_status
- total_cost

---

## 🔗 Relationships

- One User → Many Bookings
- One Match → Many Bookings
- Bookings table connects Users and Matches
- Foreign Keys use **ON DELETE CASCADE**

---

## 🧠 Key Features

- Unique email validation
- Role restriction using CHECK constraint
- Payment status control (Pending, Paid, Cancelled, Confirmed)
- Non-negative ticket pricing
- Optional seat assignment (nullable seat_number)
- Proper relational database design (ERD-based)




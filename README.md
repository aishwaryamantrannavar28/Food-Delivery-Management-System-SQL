🍔 Food Delivery Management System (MySQL)
📘 Project Overview

The Food Delivery Management System is a database-driven project built using MySQL that simulates the backend of a real-world food delivery platform like Swiggy or Zomato.
It manages customers, restaurants, menu items, orders, deliveries, payments, and delivery partners, providing efficient data handling and analytical insights through SQL queries.

🧩 Features

📋 Designed a relational database schema with proper normalization (up to 3NF).

🍽️ Managed restaurants, menu items, and customer orders with referential integrity.

🚴 Included delivery tracking and partner management tables.

💳 Integrated payment details with different methods (UPI, Card, COD, Wallet).

📊 Executed 10+ SQL analytical queries to extract insights like:

Top restaurants by rating

Most popular food items

Total revenue generated

Average delivery time per city

Pending and successful orders

🏗️ Database Schema

The project includes the following tables:

Customers – Stores customer info (name, contact, address).

Restaurants – Contains restaurant details and ratings.

Menu_Items – Menu of each restaurant with price and category.

Orders – Manages all orders placed by customers.

Order_Items – Mapping table between orders and menu items.

Delivery_Partners – Details of delivery executives.

Deliveries – Tracks each delivery with time and status.

Payments – Tracks order payments and their methods.

🧮 Technologies Used

Database: MySQL

Language: SQL

Tools: MySQL Workbench 

Data Model: Relational Database (RDBMS)

🧠 Example Queries

Here are a few sample analytical queries included:

-- 1️⃣ Find top 3 restaurants by rating
SELECT name, rating FROM Restaurants ORDER BY rating DESC LIMIT 3;

-- 2️⃣ Find total revenue generated from all orders
SELECT SUM(total_amount) AS Total_Revenue FROM Orders;

-- 3️⃣ Find most popular dish (highest order count)
SELECT m.item_name, COUNT(oi.item_id) AS Times_Ordered
FROM Order_Items oi
JOIN Menu_Items m ON oi.item_id = m.item_id
GROUP BY oi.item_id
ORDER BY Times_Ordered DESC
LIMIT 1;

📈 Project Insights

Designed 8 interrelated tables with primary and foreign key constraints.

Demonstrated data normalization, JOIN operations, aggregate functions, and subqueries.

Realistic dataset for 5 restaurants, 5 customers, and multiple orders.

🚀 How to Run

Open MySQL Workbench or phpMyAdmin.

Create a new database:

CREATE DATABASE Food_Delivery_DB;
USE Food_Delivery_DB;


Run 01_schema.sql to create tables.

Run 02_insert_data.sql to insert sample records.

Run 03_queries.sql to view insights and outputs.

👩‍💻 Author

Aishwarya Mahantesh Mantrannavar

📧 aishwaryamantrannavara@gmail.com

💼 github.com/aishwaryamantrannavar28

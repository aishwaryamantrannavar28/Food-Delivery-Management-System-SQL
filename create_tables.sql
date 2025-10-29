-- To Create Database
-- create database  FoodDelivery_DB;

USE FoodDelivery_DB;

-- Customers Table
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
     name VARCHAR(100) NOT NULL,
     phone VARCHAR(15) UNIQUE,
     email VARCHAR(100) UNIQUE,
     address TEXT
 );

-- Restaurants Table
CREATE TABLE Restaurants (
    restaurant_id INT AUTO_INCREMENT PRIMARY KEY,
     name VARCHAR(100) NOT NULL,
     location VARCHAR(100),
     rating DECIMAL(2,1) CHECK (rating >= 0 AND rating <= 5)
 );

-- Menu Items Table
 CREATE TABLE Menu_Items (
     item_id INT AUTO_INCREMENT PRIMARY KEY,
     restaurant_id INT,
     item_name VARCHAR(100) NOT NULL,
     price DECIMAL(10,2) NOT NULL,
     category VARCHAR(50),
     FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id) ON DELETE CASCADE
 );

-- Orders Table
 CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
	customer_id INT,
     restaurant_id INT,
     order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
     total_amount DECIMAL(10,2),
     status ENUM('pending', 'delivered', 'cancelled') DEFAULT 'pending',
     FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
     FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id)
 );

-- Order Items (mapping table)
 CREATE TABLE Order_Items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
     item_id INT,
     quantity INT NOT NULL,
     FOREIGN KEY (order_id) REFERENCES Orders(order_id) ON DELETE CASCADE,
     FOREIGN KEY (item_id) REFERENCES Menu_Items(item_id)
 );

-- Delivery Partners
 CREATE TABLE Delivery_Partners (
	partner_id INT AUTO_INCREMENT PRIMARY KEY,
     name VARCHAR(100) NOT NULL,
     phone VARCHAR(15) UNIQUE,
    vehicle_no VARCHAR(20)
 );

-- Deliveries Table
 CREATE TABLE Deliveries (
    delivery_id INT AUTO_INCREMENT PRIMARY KEY,
     order_id INT,
	partner_id INT,
     delivery_time INT, -- in minutes
     status ENUM('assigned', 'on_the_way', 'delivered') DEFAULT 'assigned',
     FOREIGN KEY (order_id) REFERENCES Orders(order_id) ON DELETE CASCADE,
     FOREIGN KEY (partner_id) REFERENCES Delivery_Partners(partner_id)
 );

-- Payments Table
CREATE TABLE Payments (
  payment_id INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT,
	amount DECIMAL(10,2),
    method ENUM('UPI', 'Card', 'COD', 'Wallet'),
     payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
     status ENUM('successful', 'failed', 'pending') DEFAULT 'successful',
     FOREIGN KEY (order_id) REFERENCES Orders(order_id) ON DELETE CASCADE
     );
 USE FoodDelivery_DB;
 
 -- Restaurants
 INSERT INTO Restaurants (name, location, rating) VALUES
 ('Spice Villa', 'Bangalore', 4.5),
 ('Tandoori Treats', 'Pune', 4.3),
 ('Pizza Point', 'Bangalore', 4.1),
 ('Café Aroma', 'Chennai', 4.2),
 ('Sushi Hub', 'Hyderabad', 4.4);

-- Customers
 INSERT INTO Customers (name, phone, email, address) VALUES
 ('Aishwarya M', '9876543210', 'aishwarya@gmail.com', 'BTM Layout, Bangalore'),
 ('Rahul S', '9123456780', 'rahul@gmail.com', 'Hinjewadi, Pune'), 
 ('Priya Nair', '9001234567', 'priya@gmail.com', 'Adyar, Chennai'),
 ('Karan Mehta', '9012347890', 'karan@gmail.com', 'Jubilee Hills, Hyderabad'),
 ('Ritika Sharma', '9898989898', 'ritika@gmail.com', 'Koramangala, Bangalore');

-- 3️⃣ Menu Items
 INSERT INTO Menu_Items (restaurant_id, item_name, price, category) VALUES
 (1, 'Paneer Butter Masala', 220.00, 'North Indian'),
 (1, 'Butter Naan', 40.00, 'Bread'),
 (2, 'Chicken Biryani', 250.00, 'Indian'),
 (3, 'Veg Pizza', 280.00, 'Italian'),
 (3, 'Garlic Bread', 130.00, 'Italian'),
 (4, 'Cappuccino', 150.00, 'Beverage'),
 (4, 'Veg Sandwich', 180.00, 'Snacks'),
 (5, 'California Roll', 350.00, 'Japanese'),
 (5, 'Miso Soup', 150.00, 'Japanese');

-- 4️⃣ Delivery Partners
 INSERT INTO Delivery_Partners (name, phone, vehicle_no) VALUES
 ('Sanjay Kumar', '9001112233', 'KA05AB1234'),
 ('Priya Nair', '9012345678', 'MH12CD5678'),
 ('Ravi Patel', '9023456789', 'TN10EF2345');

-- 5️⃣ Orders
INSERT INTO Orders (customer_id, restaurant_id, order_date, total_amount, status) VALUES
(1, 1, NOW(), 300.00, 'delivered'),
(2, 3, NOW(), 250.00, 'delivered'),
(3, 4, NOW(), 330.00, 'delivered'),
(4, 5, NOW(), 500.00, 'delivered'),
(5, 2, NOW(), 280.00, 'pending');

-- 6️⃣ Order Items
INSERT INTO Order_Items (order_id, item_id, quantity) VALUES
(1, 1, 1),
(1, 2, 2),
(2, 4, 1),
(3, 6, 2),
(3, 7, 1),
(4, 8, 1),
(4, 9, 2),
(5, 3, 1);

-- 7️⃣ Deliveries
INSERT INTO Deliveries (order_id, partner_id, delivery_time, status) VALUES
(1, 1, 32, 'delivered'),
(2, 2, 40, 'delivered'),
(3, 3, 28, 'delivered'),
(4, 1, 35, 'delivered'),
(5, 2, 0, 'assigned');

-- 8️⃣ Payments
INSERT INTO Payments (order_id, amount, method, status) VALUES
(1, 300.00, 'UPI', 'successful'),
(2, 250.00, 'Card', 'successful'),
(3, 330.00, 'Wallet', 'successful'),
(4, 500.00, 'COD', 'pending'),
(5, 280.00, 'UPI', 'pending');
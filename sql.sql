create database online_retail_store;
use  online_retail_store;
create table Products (
product_id int primary key ,
name varchar(100),
description text,
price decimal,
stock_quantity int);
CREATE TABLE Customers (
  customer_id INT PRIMARY KEY ,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(100) UNIQUE,
  phone VARCHAR(15)
);
CREATE TABLE Orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  status VARCHAR(20),
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
CREATE TABLE Order_Items (
  order_id INT,
  product_id INT,
  quantity INT,
  total_price int(10),
  FOREIGN KEY (order_id) REFERENCES Orders(order_id),
  FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
CREATE TABLE Payments (
  payment_id INT PRIMARY KEY ,
  order_id INT,
  payment_date DATE,
  amount int(10),
  payment_method VARCHAR(20),
  FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);
CREATE TABLE RETURN_ORDERS(
 order_id int,
 reason varchar(50),
 FOREIGN KEY (order_id) REFERENCES Orders(order_id));

-- Insert Products
INSERT INTO Products (product_id, name, description, price, stock_quantity) VALUES
(1, 'Laptop', 'High-performance gaming laptop', 1500.00, 50),
(2, 'Tablet', '10-inch display tablet', 300.00, 120),
(3, 'Smartwatch', 'Fitness-focused smartwatch', 200.00, 75),
(4, 'Headphones', 'Noise-cancelling wireless headphones', 150.00, 90),
(5, 'Bluetooth Speaker', 'Portable Bluetooth speaker', 80.00, 200),
(6, 'Gaming Console', 'Next-gen gaming console', 500.00, 30),
(7, 'Camera', 'DSLR camera with 24MP sensor', 1000.00, 25),
(8, 'Smart TV', '55-inch 4K UHD Smart TV', 600.00, 40),
(9, 'External Hard Drive', '1TB USB 3.0 external hard drive', 60.00, 150),
(10, 'Keyboard', 'Mechanical gaming keyboard', 120.00, 80),
(11, 'Monitor', '27-inch 144Hz gaming monitor', 350.00, 60),
(12, 'Mouse', 'Wireless ergonomic mouse', 45.00, 100),
(13, 'Printer', 'Wireless color printer', 120.00, 70),
(14, 'Router', 'Dual-band Wi-Fi 6 router', 180.00, 40),
(15, 'VR Headset', 'Virtual reality headset', 400.00, 20),
(16, 'Drone', '4K camera drone with GPS', 750.00, 15),
(17, 'Electric Scooter', 'Foldable electric scooter', 450.00, 25),
(18, 'Fitness Tracker', 'Waterproof fitness tracker', 70.00, 130),
(19, 'Power Bank', '10,000mAh portable power bank', 25.00, 300),
(20, 'Wireless Charger', 'Fast wireless charging pad', 35.00, 180),
(21, 'Smart Home Hub', 'Centralized smart home control hub', 250.00, 60),
(22, 'Smart Light Bulb', 'Wi-Fi-enabled color changing light bulb', 30.00, 400),
(23, 'Electric Kettle', '1.5L electric kettle with temperature control', 45.00, 150),
(24, 'Air Purifier', 'HEPA air purifier for large rooms', 200.00, 70),
(25, 'Robot Vacuum', 'Smart robot vacuum cleaner with mapping', 350.00, 40),
(26, 'Smart Doorbell', 'Wi-Fi video doorbell with motion detection', 120.00, 80),
(27, 'Portable Air Conditioner', '10,000 BTU portable air conditioner', 450.00, 25),
(28, 'Coffee Maker', 'Single-serve coffee maker with frother', 150.00, 90),
(29, 'Dishwasher', 'Energy-efficient stainless steel dishwasher', 800.00, 20),
(30, 'Oven', 'Electric convection oven with self-cleaning', 1000.00, 15),
(31, 'Blender', 'High-performance blender with 8 speed settings', 120.00, 110),
(32, 'Electric Grill', 'Smokeless indoor electric grill', 180.00, 100),
(33, 'Fitness Bike', 'Indoor cycling bike with resistance control', 500.00, 35),
(34, 'Yoga Mat', 'Eco-friendly non-slip yoga mat', 30.00, 300),
(35, 'Elliptical Machine', 'Compact elliptical trainer for home use', 700.00, 20),
(36, 'Smart Thermostat', 'Wi-Fi-enabled programmable thermostat', 250.00, 50),
(37, 'Security Camera', 'Outdoor weatherproof security camera', 200.00, 90),
(38, 'Projector', '4K UHD home theater projector', 1500.00, 10),
(39, 'Soundbar', '5.1 channel surround soundbar system', 400.00, 60),
(40, 'Smart Mirror', 'Interactive fitness mirror with live classes', 1200.00, 12);




INSERT INTO Customers (customer_id, first_name, last_name, email, phone) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '9876543210'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '2345678901'),
(3, 'Alex', 'Williams', 'alex.williams@example.com', '3451236789'),
(4, 'Emily', 'Johnson', 'emily.johnson@example.com', '1234567890'),
(5, 'Michael', 'Roberts', 'michael.roberts@example.com', '6543210987'),
(6, 'David', 'Martinez', 'david.martinez@example.com', '9988776655'),
(7, 'Sophia', 'Lewis', 'sophia.lewis@example.com', '6655443322'),
(8, 'Liam', 'Wilson', 'liam.wilson@example.com', '5566778899'),
(9, 'Emma', 'Walker', 'emma.walker@example.com', '2233445566'),
(10, 'Noah', 'Taylor', 'noah.taylor@example.com', '3344556677'),
(11, 'Olivia', 'Brown', 'olivia.brown@example.com', '4455667788'),
(12, 'Lucas', 'Harris', 'lucas.harris@example.com', '7788990011'),
(13, 'Isabella', 'Clark', 'isabella.clark@example.com', '1122334455'),
(14, 'Ethan', 'Young', 'ethan.young@example.com', '9988007766'),
(15, 'Mia', 'Hill', 'mia.hill@example.com', '6677889900'),
(16, 'Ava', 'Green', 'ava.green@example.com', '5566443322'),
(17, 'Logan', 'Scott', 'logan.scott@example.com', '4455332211'),
(18, 'Charlotte', 'Carter', 'charlotte.carter@example.com', '3344221100'),
(19, 'Jacob', 'Moore', 'jacob.moore@example.com', '2233110099'),
(20, 'Amelia', 'Diaz', 'amelia.diaz@example.com', '9988775544');


INSERT INTO Orders (order_id, customer_id, order_date, status) VALUES
(101, 1, '2024-09-12', 'Processing'),
(102, 2, '2024-09-12', 'Completed'),
(103, 3, '2024-09-10', 'Delivered'),
(104, 4, '2024-09-09', 'Cancelled'),
(105, 5, '2024-09-08', 'Processing'),
(106, 6, '2024-09-07', 'Shipped'),
(107, 7, '2024-09-06', 'Delivered'),
(108, 8, '2024-09-05', 'Processing'),
(109, 9, '2024-09-04', 'Shipped'),
(110, 10, '2024-09-03', 'Delivered'),
(111, 11, '2024-09-02', 'Cancelled'),
(112, 12, '2024-09-01', 'Processing'),
(113, 13, '2024-08-31', 'Shipped'),
(114, 14, '2024-08-30', 'Delivered'),
(115, 15, '2024-08-29', 'Processing'),
(116, 16, '2024-08-28', 'Shipped'),
(117, 17, '2024-08-27', 'Delivered'),
(118, 18, '2024-08-26', 'Cancelled'),
(119, 19, '2024-08-25', 'Processing'),
(120, 20, '2024-08-24', 'Shipped');

-- Insert Order Items
-- Insert Order Items

INSERT INTO Order_Items ( order_id, product_id, quantity, total_price) VALUES
(101, 1, 2, 2400.00),
(102, 2, 3, 1500.00),
(103, 1, 1, 800.00),
(104, 3, 2, 500.00),
(105, 4, 1, 1200.00),
(106, 5, 3, 700.00),
(107, 6, 2, 1600.00),
(108, 2, 4, 2400.00),
(109, 3, 1, 900.00),
(110, 7, 2, 1800.00),
(111, 8, 3, 3000.00),
(112, 9, 1, 1100.00),
(113, 10, 2, 2500.00),
(114, 11, 3, 4000.00),
(115, 12, 1, 1000.00),
(116, 13, 4, 2700.00),
(117, 14, 2, 1300.00),
(118, 15, 3, 2000.00),
(119, 16, 1, 2200.00),
(120, 17, 2, 900.00);




INSERT INTO Payments (payment_id, order_id, payment_date, amount, payment_method) VALUES
(10001, 101, '2024-09-12', 2400.00, 'Credit Card'),
(10002, 102, '2024-09-12', 800.00, 'PayPal'),
(10003, 103, '2024-09-11', 1500.00, 'Debit Card'),
(10004, 104, '2024-09-10', 800.00, 'PayPal'),
(10005, 105, '2024-09-09', 500.00, 'Credit Card'),
(10006, 106, '2024-09-08', 1200.00, 'Bank Transfer'),
(10007, 107, '2024-09-07', 700.00, 'Credit Card'),
(10008, 108, '2024-09-06', 1600.00, 'PayPal'),
(10009, 109, '2024-09-05', 2400.00, 'Debit Card'),
(10010, 110, '2024-09-04', 900.00, 'Credit Card'),
(10011, 111, '2024-09-03', 1800.00, 'Bank Transfer'),
(10012, 112, '2024-09-02', 3000.00, 'PayPal'),
(10013, 113, '2024-09-01', 1100.00, 'Credit Card'),
(10014, 114, '2024-08-31', 2500.00, 'Debit Card'),
(10015, 115, '2024-08-30', 4000.00, 'Credit Card'),
(10016, 116, '2024-08-29', 1000.00, 'PayPal'),
(10017, 117, '2024-08-28', 2700.00, 'Bank Transfer'),
(10018, 118, '2024-08-27', 1300.00, 'Credit Card'),
(10019, 119, '2024-08-26', 2000.00, 'Debit Card'),
(10020, 120, '2024-08-25', 2200.00, 'PayPal');

 insert into return_orders(order_id,reason) values
 (107,'BAD QUALITY'),
 (110,'FAKE PRODUCT'),
 (105,'LATE DELIVERY');




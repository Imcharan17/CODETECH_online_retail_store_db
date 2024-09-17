Online Retail Store Database:

NAME : D.CHARANSAI
INTERNID : CT08DS7751
START DATE : 10.09.2024
DEADLINE : 10.10.2024
STREAM : SQL

Project Overview :

The Online Retail Store Database is designed to manage various aspects of an e-commerce platform. It includes product management, customer information, orders, payments, and returns. 
The database includes multiple tables that store information about products, customers, orders, order items, payments, and return orders. 
It also contains stored procedures to handle common tasks such as viewing customer orders, managing stock levels, and adding or deleting products.

Technologies Used : 

Database: MySQL
Tables: Products, Customers, Orders, Order_Items, Payments, Return_Orders
Procedures: For managing orders, products, and customers
Database Schema
The database consists of the following tables:

Products: Stores product details such as product name, description, price, and stock quantity.
Customers: Stores customer information including their first name, last name, email, and phone number.
Orders: Stores order details, including the customer who placed the order, order date, and order status.
Order_Items: Stores details about the products in each order, including quantity and total price.
Payments: Stores payment details related to each order, such as payment date, amount, and payment method.
Return_Orders: Stores information about returned orders, including the reason for return.
Database Setup
To create the database and populate it with initial data, use the following steps:

Create Database:

sql
Copy code
CREATE DATABASE online_retail_store;
USE online_retail_store;
Create Tables: The following tables are created:

Products
Customers
Orders
Order_Items
Payments
Return_Orders
Each table contains relevant columns with appropriate data types and constraints, such as primary keys and foreign key relationships.

Insert Initial Data: Sample data has been provided for the Products, Customers, Orders, and Order_Items tables to represent a functioning e-commerce system.

Stored Procedures
Several stored procedures are included to manage the database and perform actions such as:

ViewCustomerOrders: Retrieves all orders placed by a specific customer.
ViewOrderProducts: Retrieves all products associated with a specific order.
CheckStockAvailability: Checks if a product is in stock.
ReduceStockAfterOrder: Reduces the stock quantity of a product after an order is placed.
AddNewProduct: Adds a new product to the database.
DeleteProduct: Deletes a product from the database based on the product ID.
AddCustomer: Adds a new customer to the database.
Example Procedure Call:
To retrieve orders for a specific customer:
sql
Copy code
CALL ViewCustomerOrders(customerID);
To add a new product:
sql
Copy code
CALL AddNewProduct(41, 'Air Fryer', 'Healthy cooking air fryer', 100.00, 50);
Sample Queries
View all products:

sql
Copy code
SELECT * FROM Products;
View all orders:

sql
Copy code
SELECT * FROM Orders;
View specific customer orders:

sql
Copy code
CALL ViewCustomerOrders(1);
Check stock availability:

sql
Copy code
CALL CheckStockAvailability(1);
Delete a product:

sql
Copy code
CALL DeleteProduct(40);
Future Enhancements
Some potential improvements and features for the future:

Integration with an API to manage online payments.
Advanced reporting on order statistics and customer behavior.
Implementation of user authentication and session management for customers and admins.
Troubleshooting
If any procedure or query is not working, ensure that all tables and data have been created and inserted correctly.
Ensure you are using the correct MySQL version, and that the procedures are being called with the correct parameters.
Conclusion
This Online Retail Store Database provides a solid foundation for managing an e-commerce business, with capabilities to handle products, orders, customers, and payments, and a range of stored procedures for common operations.


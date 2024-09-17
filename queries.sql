use  online_retail_store;

DELIMITER $$
-- This procedure retrieves all orders for a specific customer --
CREATE PROCEDURE ViewCustomerOrders(IN customerID INT)
BEGIN
    SELECT Orders.order_id, Orders.order_date, Orders.status, 
           SUM(Order_Items.total_price) AS total_amount
    FROM Orders
    JOIN Order_Items ON Orders.order_id = Order_Items.order_id
    WHERE Orders.customer_id = customerID
    GROUP BY Orders.order_id, Orders.order_date, Orders.status;
END $$

DELIMITER ;



DELIMITER $$

-- This procedure retrieves all products in a specific order.--

CREATE PROCEDURE ViewOrderProducts(IN orderID INT)
BEGIN
    SELECT Products.name, Products.description, Order_Items.quantity, Order_Items.total_price
    FROM Order_Items
    JOIN Products ON Order_Items.product_id = Products.product_id
    WHERE Order_Items.order_id = orderID;
END $$

DELIMITER ;

DELIMITER $$
-- This procedure checks the stock availability of a specific product.--
CREATE PROCEDURE CheckStockAvailability(IN productID INT)
BEGIN
    SELECT stock_quantity 
    FROM Products
    WHERE product_id = productid;
END $$

DELIMITER ;
-- TO CALL CheckStockAvailability PROCEDURE USE : --
 -- CALL CheckStockAvailability(product_id);  --
 DELIMITER $$
 -- TO UPDATE THE STOCK QUANTITY -- 

CREATE PROCEDURE ReduceStockAfterOrder(IN productID INT ,IN quantity int)
BEGIN
    UPDATE Products,orders
    SET stock_quantity = stock_quantity - quantity
    WHERE product_id = productID AND stock_quantity >= quantity;
END $$

DELIMITER ;

 DELIMITER $$
-- TO ADD NEW PRODUCT--

CREATE PROCEDURE addnew_product(IN product_id int ,IN name VARCHAR(50), IN description VARCHAR(50),IN price INT, IN stock_quantity INT)
BEGIN
    insert into products values( product_id, name, description, price, stock_quantity);
    END $$
    DELIMITER ;
    
     DELIMITER $$


DELIMITER $$

-- TO DELETE A PRODUCT--

CREATE PROCEDURE delete_product(IN p_product_id INT)
BEGIN
    -- First, check if the product exists in the Products table
    IF EXISTS (SELECT * FROM Products WHERE product_id = p_product_id) THEN
        -- If the product exists, delete it
        DELETE FROM Products WHERE product_id = p_product_id;
        
        -- Output a success message
        SELECT CONCAT('Product with ID ', p_product_id, ' has been successfully deleted.') AS result;
    ELSE
        -- If the product does not exist, output an error message
        SELECT CONCAT('Product with ID ', p_product_id, ' does not exist.') AS result;
    END IF;
END $$

DELIMITER ;

DELIMITER $$

-- TO ADD A NEW CUSTOMER--

CREATE PROCEDURE ADD_CUSTOMER(IN customer_id INT ,IN  first_name varchar(50) , in last_name varchar(50) , in email varchar(50) , in phone varchar(15))
BEGIN
   insert into customers values(customer_id, first_name, last_name, email, phone);
END $$

DELIMITER ;
DELIMITER $$
DELIMITER $$

CREATE PROCEDURE ShowAllTables()
-- TO DISPLAY ALL THE TABLES 
BEGIN
    -- Select all customers
    SELECT * FROM Customers;
    
    -- Select all orders
    SELECT * FROM Orders;
    
    -- Select all order items
    SELECT * FROM Order_Items;
    
    -- Select all payments
    SELECT * FROM Payments;
    
    -- Select all products
    SELECT * FROM Products;
    
    -- Select all return orders
    SELECT * FROM RETURN_ORDERS;
END $$

DELIMITER ;


CALL ShowAllTables;







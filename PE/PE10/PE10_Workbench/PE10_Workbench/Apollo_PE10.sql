-- Andrew Apollo
-- ISTE 230
-- Prof French
-- 4/24/2023

USE my_guitar_shop;

-- Question #1 
SELECT product_code, product_name, list_price, discount_percent FROM products 
    ORDER BY list_price DESC; 

-- Question #2 
SELECT CONCAT(last_name, ",", first_name) AS "full_name" FROM customers
    ORDER BY last_name ASC;

-- Question #3  
SELECT product_name, list_price, date_added FROM products
    WHERE list_price < 2000 and list_price > 500
    ORDER BY date_added DESC;

-- Question #4  
SELECT product_name, list_price, discount_percent, ROUND((list_price * (discount_percent / 100)), 2) AS discount_amount, \
    ROUND((list_price-(SELECT discount_amount)),2) AS discount_price from products
    ORDER BY discount_price DESC LIMIT 5;


-- Question #5 
SELECT item_id, item_price, discount_amount, quantity, item_price * quantity AS price_total, (discount_amount * quantity) AS price_total, (item_price - discount_amount) * quantity AS item_total from order_items
    HAVING item_total > 500 
    ORDER BY item_total DESC;

-- Question #6 
SELECT order_id, order_date, ship_date FROM orders
    WHERE ship_date IS NULL;

-- Question #7  
SELECT now() AS today_unformatted, concat (DATE_FORMAT(NOW(),'%d-'), SUBSTRING((monthname(NOW())), 1, 3), '-', DATE_FORMAT(NOW(),'%Y')) AS today_formatted;

-- Question #8 
SELECT 
    100 AS price,
    .07 AS tax_rate,
    100 * .07 AS tax_amount,
    (SELECT price) + (SELECT tax_amount) AS total;

-- Question #9 
SELECT category_name, product_name, list_price FROM Categories
    JOIN products USING(category_ID)
    ORDER BY category_name, product_name ASC;

-- Question #10  
SELECT first_name, last_name, line1, city, state, zip_code FROM customers   
    JOIN addresses USING(customer_id)
    WHERE customers.email_address = 'allan.sherwood@yahoo.com';

-- Question #11 
SELECT first_name, last_name, line1, city, state, zip_code FROM customers   
    JOIN addresses USING(customer_id)
    WHERE addresses.address_id = customers.shipping_address_id;

-- Question #12 
SELECT cu.last_name, cu.first_name, o.order_date, p.product_name, i.item_price, i.discount_amount, i.quantity FROM customers as cu
    JOIN orders AS o USING(customer_id)
    JOIN order_items as i USING(order_id)
    JOIN products as p USING(product_id)
    ORDER BY cu.last_name, o.order_date, p.product_name;

-- Question #13  
SELECT p1.product_name, p1.list_price 
    FROM products p1
    INNER JOIN products p2 ON p1.list_price = p2.list_price 
    AND p1.product_name != p2.product_name
    ORDER BY product_name;

-- Question #14 
SELECT category_name, product_id FROM Categories
    LEFT JOIN products USING(category_ID)
    WHERE product_id IS NULL;
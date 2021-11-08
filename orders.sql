-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.

CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name VARCHAR(30) NOT NULL,
    product_price INTEGER,
    quantity INTEGER
);


-- Add 5 orders to the orders table.
INSERT INTO orders(person_id, product_name, product_price, quantity)
VALUES(2,'Pasta', 15,  1),
(5,'Burger', 12, 2),
(17,'Burrito', 18, 3),
(7,'Chicken', 20, 2),
(35,'Martini', 10, 8);

-- Select all the records from the orders table.
SELECT * FROM orders;
-- Calculate the total number of products ordered.
SELECT SUM(quantity) FROM orders;
-- Calculate the total order price.
SELECT SUM(product_price * quantity) FROM orders;
-- Calculate the total order price by a single person_id.
SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 5;
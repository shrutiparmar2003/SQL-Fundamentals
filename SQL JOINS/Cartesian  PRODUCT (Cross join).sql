CREATE TABLE orders(
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    quantity INT,
    order_date DATE,
    customer_name VARCHAR(255),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO orders (order_id, product_id, quantity, order_date, customer_name) VALUES
(1, 1, 2, '2025-04-20', 'Aarav Mehta'),
(2, 2, 1, '2025-04-21', 'Sneha Kapoor'),
(3, 1, 1, '2025-04-22', 'Rohan Singh'),
(4, 4, 5, '2025-04-23', 'Priya Sharma');

select*from orders;

/*✅ Cartesian Product (Cross Join):
It combines every row of the first table with every row of the second table, without any matching condition.
It gives all possible combinations of rows.

✅ Result Table Details:

Number of columns = Sum of attributes (columns) of both tables

Number of rows = Multiplication of rows from both tables*/

select name, customer_name 
from products, orders;

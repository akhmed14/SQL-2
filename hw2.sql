CREATE DATABASE hw2;
USE hw2;
CREATE TABLE sales(
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
order_date DATE NOT NULL,
bucket VARCHAR(100)
);
SELECT *FROM sales;

INSERT INTO sales (order_date, bucket) VALUES 
("2021-01-01", "small"), ("2021-01-02", "normal"), ("2021-01-03", "large"),
("2021-01-04", "small"), ("2021-01-05", "normal"), ("2021-01-06", "large");

CREATE TABLE orders(
orderid INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
employeeid INT,
amount FLOAT,
orderstatus VARCHAR (50)
);
ALTER TABLE orders MODIFY employeeid VARCHAR (50);
INSERT INTO orders (employeeid, amount, orderstatus) VALUES 
("e03", 15.00, "OPEN"), 
("e01", 25.50, "OPEN"),
("e05", 100.70, "CLOSED"), 
("e02", 22.18, "OPEN"),
("e04", 9.50, "CANCELLED"), 
("e04", 99.99, "OPEN");

SELECT 
orders.orderid,
orders.orderstatus,
CASE orderstatus 
WHEN "OPEN" THEN "Order is in open state"
WHEN "CLOSED" THEN "Order is closed"
WHEN "CANCELLED" THEN "Order is cancelled"
ELSE "NOT IDENTIFFIED"
END AS "order_summary"
FROM orders;
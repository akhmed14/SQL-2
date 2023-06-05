HW2 MY SQL HW2

Используя операторы языка SQL, создайте табличку “sales”. Заполните ее данными Сгруппируйте значений количества в 3 сегмента — меньше 100, 100-300 и больше 300.
CREATE DATABASE hw2;

USE hw2;

CREATE TABLE sales(

id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,

order_date DATE NOT NULL,

bucket VARCHAR(100)

);
SELECT *FROM sales;

Создайте таблицу “orders”, заполните ее значениями.
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

INSERT INTO orders (employeeid, amount, orderstatus) VALUES ("e03", 15.00, "OPEN"), ("e01", 25.50, "OPEN"), ("e05", 100.70, "CLOSED"), ("e02", 22.18, "OPEN"), ("e04", 9.50, "CANCELLED"), ("e04", 99.99, "OPEN");

SELECT*FROM orders;

Покажите “полный” статус заказа, используя оператор CASE
SELECT orders.orderid, orders.orderstatus, CASE orderstatus

WHEN "OPEN" THEN "Order is in open state" WHEN "CLOSED" THEN "Order is closed" WHEN "CANCELLED" THEN "Order is cancelled" ELSE "NOT IDENTIFFIED" END AS "order_summary" FROM orders;

Чем NULL отличается от 0?
NULL – пустое значение, если поделить на null будет ноль 0 – цифра ноль, в математических операциях ноль

ПАМЯТКА:

WHERE column_name = NULL, результатом будет False. Вместо этого нужно использовать оператор IS NULL ( ex. SELECT FROM users WHERE name IS NULL)
5 + NULL = NULL
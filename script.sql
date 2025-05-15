SELECT * FROM customers;
SELECT * FROM employees;
SELECT * FROM offices;
SELECT * FROM orderdetails;
SELECT * FROM orders;
SELECT * FROM payments;
SELECT * FROM productlines;
SELECT * FROM products;

CREATE VIEW vista_orden AS
SELECT *
FROM customers
JOIN orders 
ON customers.customerNumber = orders.customerNumber
JOIN orderdetails
ON orders.orderNumber=orderdetails.orderNumber
JOIN products
ON orderdetails.productCode=products.productCode;
183. Customers Who Never Order

🔗 LeetCode Problem 183

📝 Problem Description

Given two tables Customers and Orders:

Customers Table:

Column Name

Type

id

int

name

varchar

id is the primary key column for this table.

Orders Table:

Column Name

Type

id

int

customerId

int

id is the primary key column for this table.

customerId is a foreign key to Customers.id.

Write a SQL query to find all customers who never made any orders.

✅ Solution

SELECT name
FROM Customers
LEFT JOIN Orders ON Customers.id = Orders.customerId
WHERE Orders.id IS NULL;

💡 Explanation

We use a LEFT JOIN to keep all rows from Customers and match with rows in Orders where available.

If a customer has no corresponding record in Orders, the Orders.id will be NULL.

The WHERE Orders.id IS NULL clause filters for customers who have never placed an order.

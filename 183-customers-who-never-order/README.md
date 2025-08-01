# 183. Customers Who Never Order

🔗 [LeetCode Problem 183](https://leetcode.com/problems/customers-who-never-order/)

---

## 📝 Problem Description

Given two tables `Customers` and `Orders`:

**Customers Table**

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |

- `id` is the primary key for this table.

**Orders Table**

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| customerId  | int     |

- `id` is the primary key for this table.
- `customerId` is a foreign key referencing `Customers.id`.

Write a SQL query to find all customers who never made any orders.

---

## ✅ Solution

```sql
SELECT name
FROM Customers
LEFT JOIN Orders ON Customers.id = Orders.customerId
WHERE Orders.id IS NULL;

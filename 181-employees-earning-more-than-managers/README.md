# 181. Employees Earning More Than Their Managers

🔗 [LeetCode Problem 181](https://leetcode.com/problems/employees-earning-more-than-their-managers/)

---

## 📝 Problem Description

Given a table `Employee`:

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |
| salary      | int     |
| managerId   | int     |

- `id` is the primary key.
- `managerId` is a foreign key referencing `id` (an employee’s manager).
- Some employees may not have a manager (`managerId` can be `NULL`).

Write a SQL query to find the names of employees who earn more than their managers.

---

## ✅ Solution

```sql
SELECT t1.name AS Employee
FROM Employee t1
JOIN Employee t2 ON t1.managerId = t2.id
WHERE t1.salary > t2.salary;

# 🧩 LeetCode SQL Problem #176: Second Highest Salary

🔗 [View Problem on LeetCode](https://leetcode.com/problems/second-highest-salary/)

---

## 📝 Problem Description

Table: `Employee`

| Column Name | Type |
|-------------|------|
| id          | int  |
| salary      | int  |

Write a SQL query to report the **second highest salary** from the `Employee` table.  
If there is **no second highest salary**, the query should return `null`.

The result should be in a table with the column name `SecondHighestSalary`.

---

## ✅ Solution

```sql
SELECT 
    (
        SELECT DISTINCT salary 
        FROM Employee 
        ORDER BY salary DESC 
        LIMIT 1 OFFSET 1
    ) AS SecondHighestSalary;

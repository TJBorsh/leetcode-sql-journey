# 🧩 LeetCode SQL Problem #177: Nth Highest Salary

🔗 [View Problem on LeetCode](https://leetcode.com/problems/nth-highest-salary/)

---

## 📝 Problem Description

Table: `Employee`

| Column Name | Type |
|-------------|------|
| id          | int  |
| salary      | int  |

Write a SQL function to report the **nth highest salary** from the `Employee` table.  
If there is **no nth highest salary**, the function should return `null`.

The function signature is:  
```sql
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT

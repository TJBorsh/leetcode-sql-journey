# 184. Department Highest Salary

🔗 [LeetCode Problem 184](https://leetcode.com/problems/department-highest-salary/)

---

## 📝 Problem Description

Given an `Employee` table:

| Column Name  | Type    |
|--------------|---------|
| id           | int     |
| name         | varchar |
| salary       | int     |
| departmentId | int     |

- `id` is the primary key column for this table.
- `departmentId` is a foreign key to `Department.id`.

And a `Department` table:

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |

- `id` is the primary key column for this table.

Write a SQL query to find the employees who have the highest salary in each department.  
If a department has no employees, return `NULL` for the employee name and salary.

---

## ✅ Solution

```sql
SELECT 
    Department.name AS Department, 
    Employee.name AS Employee, 
    Employee.salary AS Salary
FROM Department
LEFT JOIN Employee 
    ON Department.id = Employee.departmentId
WHERE Employee.salary = (
    SELECT MAX(salary)
    FROM Employee
    WHERE departmentId = department.id
)
ORDER BY Department.name;

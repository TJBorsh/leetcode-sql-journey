# 🧩 LeetCode SQL Problem #175: Combine Two Tables

🔗 [View Problem on LeetCode](https://leetcode.com/problems/combine-two-tables/)

---

## 📝 Problem Description

Table: `Person`

| Column Name | Type    |
|-------------|---------|
| PersonId    | int     |
| FirstName   | varchar |
| LastName    | varchar |

Table: `Address`

| Column Name | Type    |
|-------------|---------|
| AddressId   | int     |
| PersonId    | int     |
| City        | varchar |
| State       | varchar |

Each `PersonId` is a unique key to `Person`.  
Each `AddressId` is a unique key to `Address`.

Write a SQL query to:
- Report the `FirstName`, `LastName`, `City`, and `State` from the `Person` table.
- If the person does **not** have an address, still include them with `NULL` values.

---

## ✅ Solution

```sql
SELECT 
    FirstName,
    LastName,
    City,
    State
FROM Person
LEFT JOIN Address
    ON Person.PersonId = Address.PersonId;

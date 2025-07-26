SELECT t1.name AS Employee
FROM Employee t1
JOIN Employee t2 on t1.managerId = t2.id
WHERE t1.salary > t2.salary
;

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

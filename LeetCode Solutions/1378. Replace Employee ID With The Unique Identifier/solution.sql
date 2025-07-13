# Write your MySQL query statement below
SELECT e.name,
    eu.unique_id
FROM employees e
    LEFT JOIN employeeuni eu ON e.id = eu.id
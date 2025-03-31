# Write your MySQL query statement below
WITH total_users AS (
    SELECT COUNT(*) AS total FROM Users
)
SELECT 
    r.contest_id,
    ROUND(COUNT(DISTINCT r.user_id) * 100.0 / tu.total, 2) AS percentage
FROM Register r
JOIN total_users tu
GROUP BY r.contest_id, tu.total
ORDER BY percentage DESC, contest_id ASC;
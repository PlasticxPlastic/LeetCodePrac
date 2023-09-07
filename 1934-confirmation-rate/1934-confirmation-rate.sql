# Write your MySQL query statement below
SELECT
    S.user_id,
    IFNULL(ROUND(SUM(CASE WHEN C.action = 'confirmed' THEN 1 ELSE 0 END) / COUNT(C.user_id), 2), 0.00) AS confirmation_rate
FROM Signups AS S
LEFT JOIN Confirmations AS C
ON S.user_id = C.user_id
GROUP BY S.user_id
ORDER BY S.user_id;


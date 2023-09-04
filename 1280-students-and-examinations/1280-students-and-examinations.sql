# Write your MySQL query statement below
SELECT s.student_id, s.student_name, sb.subject_name, 
       COALESCE(COUNT(e.subject_name), 0) AS attended_exams
FROM Students s
CROSS JOIN Subjects sb
LEFT JOIN Examinations e ON s.student_id = e.student_id AND sb.subject_name = e.subject_name
GROUP BY s.student_id, sb.subject_name
ORDER BY s.student_id, sb.subject_name;
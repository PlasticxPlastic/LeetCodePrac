# Write your MySQL query statement below
SELECT DISTINCT v.author_id AS id
FROM Views v
JOIN Views a ON v.article_id = a.article_id
           AND v.author_id = a.viewer_id
           AND v.viewer_id = a.author_id
ORDER BY id;

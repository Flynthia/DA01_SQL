--EX 1
Select distinct CITY from STATION
Where ID%2=0

-- EX2
SELECT COUNT (CITY) - COUNT DISTINCT (CITY) FROM STATION

-- EX3
-- EX4
SELECT ROUND(CAST(SUM(order_occurrences*item_count)/SUM(order_occurrences) AS DECIMAL),1) AS mean 
FROM items_per_order

-- EX5
SELECT DISTINCT candidate_id FROM candidates
WHERE skill IN  ('Python', 'Tableau' , 'PostgreSQL')
GROUP BY candidate_id
HAVING COUNT(skill)=3
ORDER BY candidate_id

-- EX6

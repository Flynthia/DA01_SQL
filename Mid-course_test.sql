--Question 1
SELECT DISTINCT MIN (replacement_cost) FROM film

-- Question 2: chưa tính tổng
SELECT film_id,
CASE 
  WHEN replacement_cost BETWEEN 9.99 AND 19.99 THEN 'low'
	WHEN replacement_cost BETWEEN 20.00 AND 24.99 THEN 'medium'
  WHEN replacement_cost BETWEEN 25.00 AND 29.99 THEN 'high'
END category
FROM film
GROUP BY film_id, category

-- Question 3


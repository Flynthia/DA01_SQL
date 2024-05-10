-- https://docs.google.com/document/d/1w2fH8EDQJaXwmgZCTyA18UuI3v6ad5CB/edit --
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

-- Question 3: NOT FINISHED
SELECT film.title, film.length, 
category.name AS category_name
FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
WHERE category.name = 'drama' AND category.name = 'sports'
ORDER BY film.length DESC


-- Question 4 NOT FINISHED
SELECT film.title , category.name
FROM film AS a
LEFT JOIN film_category AS b ON a.film_id = b.film_id
LEFT JOIN category AS c ON b.category_id = c.category_id 
GROUP BY a.title

-- Question 5: thiếu cú pháp để ra đáp án unique
SELECT COUNT(film.film_id), category.name
FROM film 
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON category.category_id = film_category .category_id 
GROUP BY category.name 

-- Question 6 Chưa biết dùng FILTERING

-- Question 7

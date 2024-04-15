-- JOIN - UNION --
-- EX1 UNCHECKED
SELECT a.continent, AVG(b.population) AS avg_population
FROM CITY  AS a
JOIN COUNTRY AS b
ON a.population=b.population

-- EX2
SELECT ROUND(COUNT(b.email_id)/COUNT(a.email_id),2) AS activation_rate
FROM emails AS a 
LEFT JOIN texts AS b 
ON a.email_id = b.email_id
WHERE b.signup_action = 'Confirmed'

-- EX3

-- EX4
SELECT customer_contracts.customer_id, 
COUNT(DISTINCT products.product_category) AS unique_count
FROM customer_contracts
LEFT JOIN products
ON customer_contracts.product_id = products.product_id
GROUP BY customer_contracts.customer_id

-- EX5 DÙNG SELF JOIN
  -- emp1 as managers, emp2 as empoyees -> use SELF JOIN --
SELECT
    emp1.employee_id,
    emp1.name,
    COUNT(emp2.employee_id) AS reports_count,
    ROUND(AVG(emp2.age)) AS average_age
FROM Employees emp1
INNER JOIN Employees emp2 ON emp1.employee_id = emp2.reports_to
GROUP BY emp1.employee_id
ORDER BY emp1.employee_id

-- EX6
SELECT products.product_name, SUM(orders.unit) AS unit
FROM products 
JOIN orders
ON products.product_id = orders.product_id
WHERE orders.order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY products.product_id, products.product_name
HAVING SUM(orders.unit) >= 100

-- EX7
SELECT pages.page_id 
FROM pages
LEFT JOIN page_likes
ON pages.page_id = page_likes.page_id 
WHERE page_likes.liked_date IS NULL

-- EX1
SELECT 
SUM(CASE 
    WHEN device_type = 'laptop' THEN 1
    ELSE 0
END) AS laptop_view,
SUM(CASE 
    WHEN device_type IN ('tablet', 'phone') THEN 1
    ELSE 0
END) AS mobile_view
FROM viewership;

-- EX2
SELECT x,y,z,
CASE
    WHEN x+y > z AND x+z>y AND z+y>x THEN 'Yes'
    ELSE 'No'
END AS triangle
FROM Triangle

-- EX3 --- NOT FINISHED
SELECT 
SUM(CASE 
WHEN call_category IS NULL OR call_category='n/a' THEN 1
ELSE 0
END) AS uncategorised_calls,
COUNT(case_id) AS total_calls
FROM callers

-- EX4
SELECT name FROM Customer
WHERE referee_id IS NULL OR referee_id != 2

-- EX5
select survived,
SUM(CASE 
    WHEN pclass = 1 THEN 1
    ELSE 0
END) AS first_class,
SUM(CASE 
    WHEN pclass = 1 THEN 1
    ELSE 0
END) AS second_class,
SUM(CASE 
    WHEN pclass = 1 THEN 1
    ELSE 0
END) AS third_class
from titanic
GROUP BY survived

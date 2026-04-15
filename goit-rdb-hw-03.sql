USE goit_rdb_hw_03;

-- 1
SELECT * FROM products;

SELECT name, phone FROM shippers;

-- 2
SELECT 
	avg(price),
    max(price),
    min(price)
FROM products;

-- 3
SELECT DISTINCT
	category_id,
    price
FROM products
ORDER BY price DESC
LIMIT 10;

-- 4
SELECT 
	count(*)
FROM products
WHERE price BETWEEN 20 AND 100;

-- 5
SELECT
	supplier_id as ID, 
	count(*) as COUNT,
    avg(price) as AVG_PRICE
FROM products
GROUP BY
	supplier_id

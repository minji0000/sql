-- 2024-10-08
SELECT
TRUNCATE(PRICE/10000, 0) * 10000 AS PRICE_GROUP
,COUNT(PRODUCT_ID) AS PRODUCTS
FROM PRODUCT
GROUP BY PRICE_GROUP
ORDER BY PRICE_GROUP

-- by hsyoodev
SELECT 10000 * (PRICE DIV 10000) AS PRICE_GROUP, COUNT(*) AS PRODUCTS
FROM PRODUCT
GROUP BY PRICE_GROUP
ORDER BY PRICE_GROUP ASC;
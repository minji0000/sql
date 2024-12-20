--2024-12-20
SELECT CATEGORY
, MAX(PRICE) OVER(PARTITION BY CATEGORY ORDER BY PRICE DESC) AS MAX_PRICE
, PRODUCT_NAME
FROM FOOD_PRODUCT
WHERE CATEGORY IN ('과자', '국', '김치', '식용유')
ORDER BY PRICE DESC
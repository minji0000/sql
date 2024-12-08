--2024-12-09
SELECT DATE_FORMAT(A.SALES_DATE, '%Y-%m-%y') AS SALES_DATE
, B.PRODUCT_ID
, A.USER_ID
, A.SALES_AMOUNT
FROM ONLINE_SALE A JOIN OFFLINE_SALE B
ON (A.PRODUCT_ID = B.PRODUCT_ID)
WHERE DATE_FORMAT(A.SALES_DATE, '%Y-%m') = '2022-03'
ORDER BY SALES_DATE, PRODUCT_ID, USER_ID
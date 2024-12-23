-- 2024-12-02
-- 이게 제가 짠 코드인데욤,,
SELECT A.PRODUCT_ID, A.PRODUCT_NAME, SUM(A.PRICE * B.AMOUNT) AS TOTAL_SALES
FROM FOOD_PRODUCT A JOIN FOOD_ORDER B
ON A.PRODUCT_ID = B.PRODUCT_ID
WHERE DATE_FORMAT(B.PRODUCE_DATE, '%Y-%m') = '2022-05'
GROUP BY A.PRODUCT_NAME
ORDER BY TOTAL_SALES DESC, A.PRODUCT_ID

-- 이 코드가 넘 맘에 들어서 가져왔습니다 !
SELECT P.PRODUCT_ID, PRODUCT_NAME, SUM(PRICE*AMOUNT) AS TOTAL_SALES
    FROM FOOD_PRODUCT P
    JOIN FOOD_ORDER O
      ON P.PRODUCT_ID = O.PRODUCT_ID
    WHERE PRODUCE_DATE LIKE '2022-05%'
    GROUP BY 2
    ORDER BY TOTAL_SALES DESC, 1

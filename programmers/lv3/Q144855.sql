--2025-01-07
SELECT
   CATEGORY,
   COUNT(CATEGORY) AS TOTAL_SALES
FROM BOOK A JOIN BOOK_SALES B
ON A.BOOK_ID = B.BOOK_ID
WHERE DATE_FORMAT(B.SALES_DATE, '%Y-%m') = '2022-01'
GROUP BY CATEGORY
ORDER BY CATEGORY

-- 위가 내가 짜서 틀린 쿼리 ,, 합산이면 sum을 써야하는데 count 사용

SELECT CATEGORY, SUM(SALES) as TOTAL_SALES
FROM BOOK join BOOK_SALES using(BOOK_ID)
WHERE SALES_DATE like "2022-01%"
GROUP BY CATEGORY
ORDER BY CATEGORY

-- 이건 다른 사람 코드인데 where절 간결하고 on 대신 using 사용한 게 좋아보여서 가져옴 !
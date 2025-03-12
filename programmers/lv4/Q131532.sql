--2025-03-12
SELECT DATE_FORMAT(B.SALES_DATE, '%Y') YEAR
     , DATE_FORMAT(B.SALES_DATE, '%m') MONTH
     , A.GENDER
     , A.USER_ID USERS
FROM USER_INFO A INNER JOIN ONLINE_SALE B
                            ON(A.USER_ID = B.USER_ID)
WHERE A.GENDER IS NOT NULL
GROUP BY  DATE_FORMAT(B.SALES_DATE, '%Y')
       , DATE_FORMAT(B.SALES_DATE, '%m')
       , A.GENDER
ORDER BY 1,2,3
--2024-11-27
-- 이렇게 짜긴 했는데.. 더 좋은 방법이 있을 것 같다 !
SELECT A.FLAVOR
FROM FIRST_HALF A JOIN JULY B
ON A.FLAVOR = B.FLAVOR
GROUP BY A.FLAVOR
ORDER BY SUM(A.TOTAL_ORDER + B.TOTAL_ORDER) DESC, SUM(A.TOTAL_ORDER + B.TOTAL_ORDER) LIMIT 3
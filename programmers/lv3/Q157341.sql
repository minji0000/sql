--2025-01-14
SELECT DISTINCT(A.CAR_ID)
FROM CAR_RENTAL_COMPANY_CAR A JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY B
USING (CAR_ID)
WHERE B.START_DATE LIKE '2022-10%'
AND A.CAR_TYPE = '세단'
ORDER BY 1 DESC

-- 한 번에 풀었다 얏호
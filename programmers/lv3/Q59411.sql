--2025-01-12
SELECT A.ANIMAL_ID, A.NAME
FROM ANIMAL_INS A JOIN ANIMAL_OUTS B
USING (ANIMAL_ID)
ORDER BY DATEDIFF(B.DATETIME, A.DATETIME) DESC
,DATEDIFF(B.DATETIME, A.DATETIME) LIMIT 2

-- 세 달 전만 하더라도,, 잘 못 풀었는데 이번엔 DATEDIFF 함수 검색해서 한 번에 풀었당

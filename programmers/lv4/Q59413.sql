--2025-04-01
-- 오늘 내 생일
SELECT DATE_FORMAT(DATETIME, '%H') AS HOUR
      ,COUNT(DATE_FORMAT(DATETIME, '%H')) AS COUNT
FROM ANIMAL_OUTS
GROUP BY DATE_FORMAT(DATETIME, '%H')
ORDER BY 1

-- https://school.programmers.co.kr/questions/84119
-- 정답은 아님미다
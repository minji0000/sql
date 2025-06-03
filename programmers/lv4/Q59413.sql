--2025-06-03 예제
SELECT A.n AS h , ifnull(B.cnt,0) AS cnt
FROM
    (SELECT @N := @N +1 AS n
     FROM access_log, (select @N:=-1 from DUAL ) NN
         LIMIT 24) AS A
        LEFT JOIN
    (SELECT HOUR(access_date) AS hh, COUNT(access_date) AS cnt
     FROM access_log
     WHERE access_date BETWEEN '2022-01-01 00:00:00' AND date_format(now(),'%Y-%m-%d 23:59:59')
     GROUP BY hh) AS B
    ON A.n = B.hh ;






SELECT DATE_FORMAT(DATETIME, '%H') AS HOUR
      ,IFNULL(COUNT(DATE_FORMAT(DATETIME, '%H')), 0) AS COUNT
FROM ANIMAL_OUTS
GROUP BY DATE_FORMAT(DATETIME, '%H')
ORDER BY 1
--with절로 일단 시간 먼저 다 조회한 후에 해야하나보당


--2025-04-01
-- 오늘 내 생일
SELECT DATE_FORMAT(DATETIME, '%H') AS HOUR
      ,COUNT(DATE_FORMAT(DATETIME, '%H')) AS COUNT
FROM ANIMAL_OUTS
GROUP BY DATE_FORMAT(DATETIME, '%H')
ORDER BY 1

-- https://school.programmers.co.kr/questions/84119
-- 정답은 아님미다
--2025-05-20
SELECT  COUNT(FISH_TYPE) AS FISH_COUNT
     , REPLACE(DATE_FORMAT(TIME, '%m'), '0', '') AS MONTH
FROM FISH_INFO
GROUP BY REPLACE(DATE_FORMAT(TIME, '%m'), '0', '')
ORDER BY CAST(REPLACE(DATE_FORMAT(TIME, '%m'), '0', ''), UNSIGNED INTEGER)
-- 값은 제대로 나오는데 정렬이 쪼오끔..


--2025-05-16
select COUNT(fish_type), DATE_FORMAT(time, 'Y%m%')
from fish_info
group by DATE_FORMAT(time, 'Y%m%')

select ifnull(LENGTH, 10)
from fish_info
order by time

select fish_type, AVG(length)
from fish_info
group by fish_type
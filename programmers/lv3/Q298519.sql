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
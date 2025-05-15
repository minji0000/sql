--2025-05-15
select ifnull(LENGTH, 10)
from fish_info
order by time

select fish_type, AVG(length)
from fish_info
group by fish_type
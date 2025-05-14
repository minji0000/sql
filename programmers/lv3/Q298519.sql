--2025-05-14
select ifnull(LENGTH, 10)
from fish_info

select fish_type, AVG(length)
from fish_info
group by fish_type
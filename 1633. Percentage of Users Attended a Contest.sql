Select 
contest_id,
round(CAST(Count(*) as float)*100/ (select Count(*) from Users) ,2) as percentage
from Register
group by contest_id
order by percentage desc,
contest_id asc

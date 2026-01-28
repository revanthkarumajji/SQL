Select 
p.product_id,
ifnull(round(sum(p.price*u.units) /sum(u.units),2),0) as average_price
from Prices p 
left Join UnitsSold u
On p.product_id = u.product_id and u.purchase_date between start_date and end_date and ifnull(u.units,0)
group by p.product_id
## pretty good question.
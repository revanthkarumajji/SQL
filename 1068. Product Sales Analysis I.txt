Select p.product_name, s.year ,s.price 
from Sales s
LEFT join Product p
on s.product_id = p.product_id
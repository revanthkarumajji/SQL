Select id, movie, description, rating
from Cinema
where mod(id,2) = 1 and description != "boring"
Order by rating Desc
---Display patient's full name, height in the units feet rounded to 1 decimal, weight in the unit pounds rounded to 0 decimals,birth_date, gender non abbreviated.
---Convert CM to feet by dividing by 30.48.
---Convert KG to pounds by multiplying by 2.205.

Select 
concat(first_name,' ',last_name) patient_name,
ROUND(height/30.48,1) as height_Feet,
round(weight*2.205) as weight_Pounds,
birth_date,
case gender when 'M' Then 'MALE'  ELSE 'FEMALE' end as gender_type
from patients
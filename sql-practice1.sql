-- For each doctor, display their id, full name, and the first and last admission date they attended.

Select 
doctor_id,
concat(first_name,' ', last_name) full_name,
min(admission_date)  first_admission_date,
max(admission_date)  last_admission_date
from doctors d 
inner join admissions a 
on a.attending_doctor_id = d.doctor_id
group by attending_doctor_id
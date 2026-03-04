--For every admission, display the patient's full name, their admission diagnosis, and their doctor's full name who diagnosed their problem.
select 
concat(p.first_name," ",p.last_name) patient_name,
a.diagnosis,
concat(d.first_name," ",d.last_name)doctor_name
from admissions a 
right join patients p  on p.patient_id = a.patient_id
inner join doctors d on d.doctor_id = a.attending_doctor_id

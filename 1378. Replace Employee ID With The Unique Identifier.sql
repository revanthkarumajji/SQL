Select EmployeeUNI.unique_id, E.name
from Employees as E
LEFT JOIN EmployeeUNI
ON E.id = EmployeeUNI.id
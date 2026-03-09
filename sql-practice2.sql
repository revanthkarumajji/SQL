---display the first name, last name and number of duplicate patients based on their first name and last name.

Ex: A patient with an identical name can be considered a duplicate.
SELECT distinct*
FROM (
    SELECT
        first_name,
        last_name,
        COUNT(*) OVER (PARTITION BY first_name, last_name) AS num_of_duplicates
    FROM patients
) t
WHERE num_of_duplicates > 1;

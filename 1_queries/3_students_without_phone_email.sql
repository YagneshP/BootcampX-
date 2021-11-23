SELECT name , id, cohort_id 
FROM students
WHERE phone IS NULL 
OR email IS NULL;
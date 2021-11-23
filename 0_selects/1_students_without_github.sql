SELECT id , name , email, cohort_id 
FROM students 
WHERE students.github IS NULL
ORDER BY cohort_id
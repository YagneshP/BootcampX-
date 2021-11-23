SELECT SUM(assignment_submissions.duration) AS total_duration
FROM assignment_submissions
JOIN students 
ON student_id = students.id
JOIN cohorts
ON students.cohort_id = cohorts.id
WHERE cohorts.name = 'FEB12';
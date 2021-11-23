SELECT cohorts.name AS cohorts_name, COUNT(assignment_submissions.*) AS total_submission
FROM assignment_submissions
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY total_submission DESC;
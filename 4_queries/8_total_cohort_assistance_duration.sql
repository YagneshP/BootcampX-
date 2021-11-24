SELECT cohorts.name as cohort , SUM(completed_at - started_at) AS total_duration
FROM assistance_requests
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY total_duration;
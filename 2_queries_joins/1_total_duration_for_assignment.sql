SELECT SUM(assignment_submissions.duration) AS total_duration
FROM assignment_submissions
JOIN students
ON students.name = 'Ibrahim Schimmel'
WHERE student_id = students.id;
SELECT assignments.id AS id, assignments.name AS name, day, chapter, COUNT(assistance_requests) AS total_request
FROM assistance_requests
JOIN assignments ON assignments.id = assistance_requests.assignment_id
GROUP BY assignments.id
ORDER BY total_request DESC;
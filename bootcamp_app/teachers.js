const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const values =[`%${process.argv[2]}%`];
pool.query(`
SELECT DISTINCT teachers.name AS teacher , cohorts.name AS cohort 
FROM teachers 
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id 
WHERE cohorts.name LIKE $1
ORDER BY teacher;
`, values)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.cohort} :  ${user.teacher} `);
  })
});
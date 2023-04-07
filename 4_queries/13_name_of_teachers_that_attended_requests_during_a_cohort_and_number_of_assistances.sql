--Get the name of all teachers that performed an assistance request during a cohort and include the number of assistances as well.
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort, count(assistance_requests)
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teacher;





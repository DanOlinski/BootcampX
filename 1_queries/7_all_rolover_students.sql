--select all rollover students (students who's start_date differs from their cohort's start_date)
SELECT 
students.name as student_name, 
students.start_date as student_start_date, 
cohorts.name as cohort_name, 
cohorts.start_date as cohort_start_date
FROM students INNER JOIN cohorts ON students.cohort_id = cohorts.id
WHERE students.start_date != cohorts.start_date
ORDER BY cohorts.start_date;
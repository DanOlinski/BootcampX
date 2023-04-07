--Get all cohorts with 18 or more students.
SELECT cohorts.name as cohort_name, COUNT(students.*) as students_count
FROM cohorts
JOIN students on students.cohort_id = cohorts.id
GROUP BY cohort_name
HAVING count(students.*) >= 18
ORDER BY students_count;

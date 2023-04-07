--Calculate the average total duration of assistance requests for each cohort.
SELECT AVG(subquery.duration) as average_total_duration
FROM (
SELECT cohorts.name as cohort_name, SUM(completed_at - started_at) as duration
FROM assistance_requests
JOIN students ON student_id = students.id 
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohort_name
ORDER BY duration
) as subquery;
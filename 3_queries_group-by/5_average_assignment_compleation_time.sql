--Get currently enrolled students' average assignment completion time.
SELECT students.name as student, ROUND(AVG(assignment_submissions.duration),0) as average_submission_time
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY student
ORDER By average_submission_time DESC;
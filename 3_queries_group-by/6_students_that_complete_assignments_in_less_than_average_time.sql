--Get the students who's average time it takes to complete an assignment is less than the average estimated time it takes to complete an assignment.
SELECT students.name as student, ROUND(AVG(assignment_submissions.duration),0) as average_submission, ROUND(AVG(assignments.duration),0) as average_estimated_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
WHERE students.end_date IS NULL
GROUP BY student
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER By average_submission;
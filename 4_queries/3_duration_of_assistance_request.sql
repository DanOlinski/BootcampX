--Get duration of assistance request
SELECT teachers.name as teacher_name, students.name as student_name, assignments.name as assignment_name, (completed_at - started_at) as duration
FROM assistance_requests
JOIN assignments ON assignment_id = assignments.id 
JOIN teachers ON teacher_id = teachers.id 
JOIN students ON student_id = students.id 
ORDER BY duration;


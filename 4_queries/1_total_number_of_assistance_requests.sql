--Get the total number of assistance_requests for a teacher.

SELECT COUNT(assistance_requests.*) as total_assistances, name as teacher_name
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY teachers.name
;
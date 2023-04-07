--Get the total number of assistance_requests for a student.
SELECT students.name as student_name, COUNT(assistance_requests.*)
FROM assistance_requests
JOIN students ON students.id = student_id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name;
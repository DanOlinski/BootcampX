--select students with no entry for github column
SELECT id, name, email, cohort_id
FROM students
WHERE github IS NULL
ORDER BY cohort_id;
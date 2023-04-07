--The same query as before, but only return rows where total assignments is greater than or equal to 10.
SELECT day, COUNT(assignments.*) as total_assignments
FROM assignments
GROUP BY day
HAVING COUNT(assignments.*) > 9
ORDER BY day;

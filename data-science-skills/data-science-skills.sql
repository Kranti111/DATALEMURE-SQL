-- Data Science Skills (LinkedIn SQL Interview Question)
-- Find candidates who possess all of the required skills: Python, Tableau, and PostgreSQL

SELECT candidate_id 
FROM candidates
WHERE skill IN ('Python', 'Tableau', 'PostgreSQL')
GROUP BY candidate_id 
HAVING COUNT(skill) = 3;

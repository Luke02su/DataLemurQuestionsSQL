SELECT candidate_id
FROM candidates
WHERE skill IN ('Python', 'Tableau', 'PostgreSQL')
GROUP BY candidate_id -- GROUP BY ve antes de HAVING
HAVING COUNT(skill) = 3 -- HAVING é usado após o agrupamento
ORDER BY candidate_id ASC;

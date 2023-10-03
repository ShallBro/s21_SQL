SELECT name, COUNT(person_id) AS count_of_visits
FROM person_visits pv
JOIN person p on p.id = pv.person_id
GROUP BY 1
ORDER BY 2 DESC,1
LIMIT 4
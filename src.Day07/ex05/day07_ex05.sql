SELECT DISTINCT p.name
FROM person p
JOIN person_order po ON p.id = po.person_id
ORDER BY 1

SELECT DISTINCT p.name
FROM person_order po
         JOIN person p ON po.person_id = p.id
ORDER BY 1;
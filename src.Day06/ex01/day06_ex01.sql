INSERT INTO person_discounts (id, person_id, pizzeria_id, discount)
SELECT row_number() over () AS id,
       person_id,
       pizzeria_id,
       CASE
           WHEN COUNT(person_id) = 1 THEN 10.5
           WHEN COUNT(person_id) = 2 THEN 22
           ELSE 30
       END
FROM person_order po
JOIN menu m ON po.menu_id = m.id
GROUP BY 2,3
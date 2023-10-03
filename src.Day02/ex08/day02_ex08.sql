SELECT name
FROM (
        SELECT id, name
        FROM person
        WHERE gender = 'male' AND (address = 'Moscow' OR address = 'Samara')
     ) AS ps
JOIN person_order po ON ps.id = po.person_id
JOIN (
    SELECT *
    FROM menu
    WHERE pizza_name IN('pepperoni pizza','mushroom pizza')
) AS m ON po.menu_id = m.id
ORDER BY name DESC
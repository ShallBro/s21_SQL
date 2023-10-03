WITH p_pp AS(
    SELECT person_id, pizza_name
    FROM menu
    JOIN person_order p on menu.id = p.menu_id
    WHERE pizza_name = 'pepperoni pizza'
), p_cp AS (
    SELECT person_id, pizza_name
    FROM menu
    JOIN person_order p on menu.id = p.menu_id
    WHERE pizza_name = 'cheese pizza'
)

SELECT name
FROM (
        SELECT id, name
        FROM person
        WHERE gender = 'female'
     ) AS ps
JOIN p_pp ON ps.id = p_pp.person_id
JOIN p_cp ON ps.id = p_cp.person_id

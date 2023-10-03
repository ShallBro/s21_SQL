WITH vis_name AS (
    SELECT ps.name,p.name AS pizzeria_name, pv.visit_date, po.order_date, po.menu_id
    FROM (
        SELECT id, name
        FROM person
        WHERE name = 'Andrey'
         ) AS ps
    JOIN person_visits pv on ps.id = pv.person_id
    JOIN pizzeria p on pv.pizzeria_id = p.id
    -- JOIN menu m ON po.menu_id = m.id
    JOIN person_order po on ps.id = po.person_id
)
SELECT DISTINCT pizzeria_name
FROM vis_name
WHERE visit_date != order_date;

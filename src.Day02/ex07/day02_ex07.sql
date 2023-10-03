SELECT pizzeria.name AS pizzeria_name
FROM (
    SELECT id, name
    FROM person
    WHERE name = 'Dmitriy'
     ) AS ps
JOIN (
    SELECT person_id, pizzeria_id
    FROM person_visits
    WHERE visit_date = '2022-01-08'
) AS pv ON ps.id = pv.person_id
JOIN pizzeria ON pv.pizzeria_id = pizzeria.id;

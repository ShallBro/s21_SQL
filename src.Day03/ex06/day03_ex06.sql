WITH m1 AS(
    SELECT *
    FROM menu
    JOIN pizzeria as p
    ON menu.pizzeria_id = p.id
)

SELECT m.pizza_name AS pizza_name, m.name AS pizzeria_name_1, m1.name AS pizzeria_name_2, m.price AS price
FROM m1
JOIN m1 AS m ON m1.pizza_name = m.pizza_name
             AND m1.price = m.price
             AND m1.pizzeria_id < m.pizzeria_id
ORDER BY 1;
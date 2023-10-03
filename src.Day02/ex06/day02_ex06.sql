-- Пожалуйста, найдите все названия пицц
-- (и соответствующие названия пиццерий с помощью menu таблицы),
-- которые заказывали Денис или Анна. Отсортируйте результат по обоим столбцам.

SELECT pizza_name,pizzeria.name AS pizzeria_name
FROM pizzeria
JOIN menu m on pizzeria.id = m.pizzeria_id
JOIN person_order po on m.id = po.menu_id
JOIN (
    SELECT name, id
    FROM person
    WHERE name IN('Denis','Anna')
) AS p
ON po.person_id = p.id
ORDER BY pizza_name,pizzeria_name
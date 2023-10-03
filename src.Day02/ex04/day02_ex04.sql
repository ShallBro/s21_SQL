-- mushroom
-- pepperoni
SELECT pizza_name,p.name AS pizzeria_name, price
FROM menu
RIGHT JOIN pizzeria p on p.id = menu.pizzeria_id
WHERE menu.pizza_name IN ('mushroom pizza', 'pepperoni pizza')
ORDER BY pizza_name, pizzeria_name
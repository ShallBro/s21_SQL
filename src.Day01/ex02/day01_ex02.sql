-- Уникальные названия пицц из таблицы
-- и уникальные названия pizza_name
SELECT pizza_name
FROM menu
UNION
SELECT pizza_name
FROM menu
ORDER BY pizza_name DESC

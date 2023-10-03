-- menu_id
-- pizza name все из таблицы menu
-- id and name из таблицы person
-- объединить две таблицы в одну и потом столбцы отсортировать
SELECT id AS object_id, pizza_name AS object_name
FROM menu
UNION ALL
SELECT id, name
FROM person
ORDER BY object_id, object_name;

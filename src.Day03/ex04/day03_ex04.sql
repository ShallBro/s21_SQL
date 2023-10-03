-- Другими словами, вы должны найти набор названий пиццерий,
-- заказанных только женщинами, и выполнить операцию «UNION»
-- с набором названий пиццерий, заказанных только мужчинами.
-- Обратите внимание на слово «только» для обоих полов.
-- Для любых операторов SQL с наборами не сохраняются дубликаты ( UNION, EXCEPT, INTERSECT).
-- Пожалуйста, отсортируйте результат по названию пиццерии.

WITH vis_gen AS (
    SELECT ps.gender, p.name
    FROM person ps
    JOIN person_order po on ps.id = po.person_id
    JOIN menu m ON po.menu_id = m.id
    JOIN pizzeria p on m.pizzeria_id = p.id
) , only_male AS (
    SELECT name
    FROM vis_gen
    WHERE gender = 'male'
), only_female AS (
    SELECT name
    FROM vis_gen
    WHERE gender = 'female')
SELECT name AS pizzeria_name
FROM only_female
EXCEPT
SELECT name AS pizzeria_name
FROM only_male;




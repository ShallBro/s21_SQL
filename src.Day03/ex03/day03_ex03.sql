-- Пожалуйста, найдите пиццерии, которые чаще посещают женщины или мужчины.
-- Для любых операторов SQL с наборами сохраняйте дубликаты
-- (конструкции UNION ALL, EXCEPT ALL, INTERSECT ALL).
-- Пожалуйста, отсортируйте результат по названию пиццерии
WITH vis_gen AS (
    SELECT ps.gender, p.name
    FROM person ps
    JOIN person_visits pv ON ps.id = pv.person_id
    JOIN pizzeria p on pv.pizzeria_id = p.id
), only_male AS (
    SELECT name
    FROM vis_gen
    WHERE gender = 'male'
), only_female AS (
    SELECT name
    FROM vis_gen
    WHERE gender = 'female'
) , femore AS (
    SELECT name
    FROM only_female
    EXCEPT ALL
    SELECT name
    FROM only_male
), mamore AS (
    SELECT name
    FROM only_male
    EXCEPT ALL
    SELECT name
    FROM only_female
)

SELECT name AS pizzeria_name
FROM femore
UNION
SELECT name AS pizzeria_name
FROM mamore
ORDER BY 1;
WITH favorite_order AS (
    SELECT p2.name AS name , count(p2.name) AS count
    FROM person_order po
    JOIN menu m on po.menu_id = m.id
    JOIN pizzeria p2 on m.pizzeria_id = p2.id
    GROUP BY 1
    ORDER BY 2 DESC
), favorite_visits AS (
    SELECT p.name AS name, COUNT(pv.pizzeria_id) AS count
    FROM person_visits pv
    JOIN pizzeria p on pv.pizzeria_id = p.id
    GROUP BY 1
    ORDER BY 2 DESC
), vis_and_ord AS (
    SELECT *
    FROM favorite_visits
    UNION ALL
    SELECT *
    FROM favorite_order
)
SELECT vao.name AS name, SUM(vao.count) AS total_count
FROM vis_and_ord vao
GROUP BY 1
ORDER BY 2 DESC,1
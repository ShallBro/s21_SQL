SELECT pi.name AS name,
       COUNT(pi.name) AS count_of_orders,
       ROUND(avg(price),2) AS average_price,
       max(price) AS max_price,
       min(price) AS min_price
FROM pizzeria pi
JOIN menu m on pi.id = m.pizzeria_id
JOIN person_order po ON po.menu_id = m.id
GROUP BY 1
ORDER BY 1
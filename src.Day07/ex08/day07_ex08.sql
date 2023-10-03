SELECT address, pi.name AS name, count(pi.name) AS count_of_orders
FROM person p
JOIN person_order po on p.id = po.person_id
JOIN menu m on m.id = po.menu_id
JOIN pizzeria pi on pi.id = m.pizzeria_id
GROUP BY 1,2
ORDER BY 1,2
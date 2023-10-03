SELECT p.name AS name,
       m.pizza_name AS pizza_name,
       m.price AS price,
       (m.price - (m.price * pd.discount) / 100) AS discount_price,
       p2.name AS pizzeria_name
FROM person p
JOIN person_order po on p.id = po.person_id
JOIN menu m on m.id = po.menu_id
JOIN pizzeria p2 on p2.id = m.pizzeria_id
JOIN person_discounts pd on p.id = pd.person_id AND p2.id = pd.pizzeria_id
ORDER BY 1,2
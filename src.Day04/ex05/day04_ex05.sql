CREATE VIEW v_price_with_discount AS
SELECT p.name AS name, m.pizza_name AS pizza_name, m.price AS price,
       ROUND(m.price - m.price * 0.1)::integer AS discount_price
FROM person p
JOIN person_order po on p.id = po.person_id
JOIN menu m on m.id = po.menu_id
ORDER BY 1,2
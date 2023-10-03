-- Пожалуйста, напишите оператор SQL,
-- который возвращает список имен людей,
-- сделавших заказ на пиццу в соответствующей пиццерии.
-- и order by сделать

SELECT person.name AS person_name, pizza_name, p.name AS pizzeria_name
FROM person
JOIN person_order po ON person.id = po.person_id
JOIN menu m ON po.menu_id = m.id
JOIN pizzeria p ON m.pizzeria_id = p.id
ORDER BY person.name,pizza_name,p.name;

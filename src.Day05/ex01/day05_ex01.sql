SET ENABLE_SEQSCAN TO OFF;
EXPLAIN ANALYZE SELECT m.pizza_name,p.name AS pizzeria_name
FROM pizzeria p
JOIN menu m on p.id = m.pizzeria_id
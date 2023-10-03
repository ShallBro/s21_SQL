-- SELECT * FROM person;
SELECT order_date, CONCAT(name,' (age:',age,')')
FROM person
JOIN person_order po
ON person.id = po.person_id
ORDER BY name;
-- SELECT * FROM person_order;
SELECT order_date,   CONCAT(name,' (age:',age,')')
FROM person_order AS po(person_id,id,menu_id,order_date)
NATURAL JOIN person
ORDER BY name;

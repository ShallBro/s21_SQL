SELECT
    (SELECT name
     FROM person
     WHERE person.id = pv.person_id) AS person_name,
    (SELECT name
     FROM pizzeria
     WHERE pizzeria.id = pv.pizzeria_id) AS pizzeria_name
FROM (SELECT person_id, pizzeria_id
      FROM person_visits
      WHERE visit_date BETWEEN '2022-01-07' AND '2022-01-09') AS pv
ORDER BY person_name, pizzeria_name DESC

-- SELECT (...) AS person_name ,  -- это внутренний запрос в основном предложении SELECT
--         (...) AS pizzeria_name  -- это внутренний запрос в основном предложении SELECT
-- FROM (SELECT … FROM person_visits WHERE …) AS pv -- это внутренний запрос в основном предложении FROM
-- ORDER BY ...

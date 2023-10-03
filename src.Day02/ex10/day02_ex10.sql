WITH person_two AS(
    SELECT *
    FROM person
)

SELECT person_one.name AS person_name1, person_two.name AS person_name2, person_one.address AS common_address
FROM person AS person_one
JOIN person_two ON person_one.address = person_two.address
WHERE person_one.id > person_two.id
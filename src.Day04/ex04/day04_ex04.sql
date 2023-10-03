-- (R - S)∪(S - R)
CREATE VIEW v_symmetric_union AS
WITH r_s AS(
    SELECT *
    FROM person_visits
    WHERE visit_date = '2022-01-02'
    EXCEPT
    SELECT *
    FROM person_visits
    WHERE visit_date = '2022-01-06'
), s_r AS(
    SELECT *
    FROM person_visits
    WHERE visit_date = '2022-01-06'
    EXCEPT
    SELECT *
    FROM person_visits
    WHERE visit_date = '2022-01-02'
)

SELECT person_id
FROM r_s
UNION
SELECT person_id
FROM s_r
ORDER BY person_id


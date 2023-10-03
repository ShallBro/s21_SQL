WITH dates AS (
    SELECT to_char(date,'YYYY-MM-DD') AS missing_date
    FROM generate_series('2022-01-1'::date, '2022-01-10'::date,'1 day') AS date
) , visits AS(
    SELECT to_char(visit_date,'YYYY-MM-DD') AS visit_date
    FROM person_visits
    WHERE person_id = 1 OR person_id = 2)
SELECT missing_date
FROM dates
LEFT JOIN visits ON dates.missing_date = visits.visit_date
WHERE visits.visit_date IS NULL
ORDER BY missing_date
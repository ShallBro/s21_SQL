-- Пожалуйста, напишите оператор SQL, который возвращает пропущенные дни с 1 по 10 января 2022
-- года (включая все дни) для посещений лиц с идентификаторами 1 или 2
-- (это означает дни, пропущенные обоими).
-- Пожалуйста, отсортируйте по дням посещения в порядке возрастания.
-- Образец данных с именем столбца представлен ниже.

SELECT to_char(date,'YYYY-MM-DD') AS missing_date
FROM generate_series('2022-01-1'::date, '2022-01-10'::date,'1 day') AS date
LEFT JOIN(
    SELECT visit_date
    FROM person_visits
    WHERE person_id = 1 OR person_id = 2
) AS pv ON  pv.visit_date = date
WHERE pv.visit_date IS NULL
ORDER BY missing_date
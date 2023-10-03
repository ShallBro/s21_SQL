-- Создайте многостолбцовый уникальный индекс (с именем idx_person_discounts_unique),
-- который предотвращает дублирование парных значений идентификаторов человека и пиццерии

CREATE UNIQUE INDEX idx_person_discounts_unique ON person_discounts(person_id,pizzeria_id);
SET ENABLE_SEQSCAN TO OFF;
EXPLAIN ANALYZE
SELECT *
FROM person_discounts
WHERE pizzeria_id = 1 AND person_id = 7
-- Добавить в таблицу person_visits дату 2022-01-08
-- id пиццы любая кроме 2
-- person_id - Дмитрия

INSERT INTO person_visits VALUES ((SELECT MAX(id)+1 FROM person_visits),
                                  (SELECT id FROM person WHERE name = 'Dmitriy'),
                                  (SELECT id FROM pizzeria WHERE name = 'Best Pizza'),TIMESTAMP '2022-01-08'::date)
REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;


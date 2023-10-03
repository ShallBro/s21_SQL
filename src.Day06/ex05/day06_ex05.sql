COMMENT ON TABLE person_discounts IS 'Таблица с персональными скидками для каждого человека в конкретной пиццерии';
COMMENT ON COLUMN person_discounts.id IS 'Первичный ключ - количество персональных скидок';
COMMENT ON COLUMN person_discounts.person_id IS 'Внешний ключ идентификатора человека';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'Внешний ключ идентификатора пиццерии';
COMMENT ON COLUMN person_discounts.discount IS 'Персональная скидка в %';
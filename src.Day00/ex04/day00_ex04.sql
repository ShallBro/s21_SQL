UPDATE person
    SET person_information = concat(name,' (age:',age,',gender:','''',gender,'''',',address:','''', address,'''');
SELECT person_information
FROM person
ORDER BY person_information; -- в order by по умолчанию сортировка по возрастанию


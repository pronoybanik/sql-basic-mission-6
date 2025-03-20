SELECT
    *
FROM
    students;

SELECT
    country,
    count(*),
    avg(age)
FROM
    students
GROUP BY
    country;

-- filtering useing group:-
SELECT
    extract(
        YEAR
        FROM
            date_of_birth
    ) as birth_year,
    count(*)
FROM
    students
GROUP BY
    date_of_birth
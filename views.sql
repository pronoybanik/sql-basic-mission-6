
SELECT
    *
FROM
    employees;

SELECT
    department_name
FROM
    employees
GROUP BY
    department_name;

CREATE View dept_avg_salary AS
SELECT
    department_name,
    avg(salary)
FROM
    employees
GROUP BY
    department_name;

SELECT
    *
FROM
    dept_avg_salary;



CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10, 2),
    hire_date DATE,
    department_name VARCHAR(100)
);

INSERT INTO
    employees (name, salary, hire_date, department_name)
VALUES
    ('pial', 50000.00, '2023-06-15', 'Engineering'),
    ('joy', 60000.00, '2022-08-20', 'Marketing'),
    ('abir', 55000.00, '2024-01-10', 'HR'),
    ('antu', 65000.00, '2024-01-10', 'HR'),
    ('pritom', 70000.00, '2021-11-05', 'Finance'),
    ('rokey', 65000.00, '2020-09-25', 'IT');

SELECT
    *
FROM
    employees;

SELECT
    max(salary)
from
    employees
WHERE
    department_name = 'HR';

SELECT
    *
FROM
    employees
WHERE
    salary > (
        SELECT
            max(salary)
        from
            employees
        WHERE
            department_name = 'HR'
);


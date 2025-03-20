
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(15),
    date_of_birth DATE,
    age INT,
    course VARCHAR(20) NOT NULL,
    address TEXT,
    blood_group VARCHAR(5),
    country VARCHAR(50)
);


INSERT INTO students (first_name, last_name, email, phone_number, date_of_birth, age, course, address, blood_group, country) 
VALUES 
('John', 'Doe', 'john.doe@example.com', '1234567890', '2000-05-15', 24, 'Computer Science', '123 Main St, New York, USA', 'O+', 'USA'),
('Jane', 'Smith', 'jane.smith@example.com', '9876543210', '1999-08-22', 25, 'Business', '456 Elm St, California, USA', 'A-', 'USA'),
('Alice', 'Johnson', 'alice.johnson@example.com', '7890123456', '2001-02-10', 23, 'Physics', '789 Oak St, Texas, USA', 'B+', 'USA'),
('Robert', 'Brown', 'robert.brown@example.com', '6543217890', '2002-11-30', 22, 'Mathematics', '321 Pine St, Florida, USA', 'AB-', 'Canada'),
('Emily', 'Davis', 'emily.davis@example.com', '5678901234', '2000-07-25', 24, 'Biology', '567 Maple St, Washington, USA', 'O-', 'UK'),
('Michael', 'Wilson', 'michael.wilson@example.com', '4321098765', '1998-04-18', 26, 'Chemistry', '890 Cedar St, Toronto, Canada', 'A+', 'Canada'),
('Sophia', 'Martinez', 'sophia.martinez@example.com', '3456789012', '2003-09-05', 21, 'Engineering', '234 Birch St, London, UK', 'B-', 'UK'),
('Daniel', 'Anderson', 'daniel.anderson@example.com', '2109876543', '2001-11-12', 23, 'History', '678 Walnut St, Sydney, Australia', 'AB+', 'Australia'),
('Olivia', 'Thomas', 'olivia.thomas@example.com', '9870123456', '2002-06-30', 22, 'Medicine', '567 Ash St, Berlin, Germany', 'O+', 'Germany'),
('William', 'Harris', 'null', '6547890123', '2000-01-20', 24, 'Economics', '789 Spruce St, Paris, France', 'A-', 'France'),
('Emma', 'White', 'emma.white@example.com', '3214569870', '1999-12-15', 25, 'Law', '432 Fir St, Madrid, Spain', 'B+', 'Spain'),
('James', 'Clark', 'james.clark@example.com', '7896543210', '2003-03-10', 21, 'Psychology', '567 Oak St, Rome, Italy', 'AB-', 'Italy'),
('Charlotte', 'Lewis', 'charlotte.lewis@example.com', '2106547893', '2001-07-01', 23, 'Philosophy', '678 Elm St, Amsterdam, Netherlands', 'O-', 'Netherlands'),
('Benjamin', 'Walker', 'benjamin.walker@example.com', '9873216540', '2002-05-08', 22, 'Sociology', '890 Maple St, Tokyo, Japan', 'A+', 'Japan'),
('Mia', 'Hall', 'mia.hall@example.com', '4561237890', '1998-09-23', 26, 'Statistics', '321 Pine St, Seoul, South Korea', 'B-', 'South Korea'),
('Ethan', 'Allen', 'ethan.allen@example.com', '6549873210', '2000-02-28', 24, 'Political Science', '234 Birch St, Beijing, China', 'AB+', 'China'),
('Amelia', 'Young', 'amelia.young@example.com', '7893214560', '1999-08-14', 25, 'Literature', '567 Walnut St, Moscow, Russia', 'O+', 'Russia'),
('Alexander', 'King', 'alexander.king@example.com', '3219876540', '2003-06-12', 21, 'Music', '678 Cedar St, Dubai, UAE', 'A-', 'UAE'),
('Isabella', 'Scott', 'isabella.scott@example.com', '9876541230', '2001-04-07', 23, 'Architecture', '789 Ash St, Singapore', 'B+', 'Singapore'),
('Lucas', 'Perez', 'lucas.perez@example.com', '4567890123', '2002-10-19', 22, 'Astronomy', '432 Spruce St, Rio de Janeiro, Brazil', 'AB-', 'Brazil');


-- that is dorp a table and table data 
-- DROP table students

--  show all data
SELECT
    *
FROM
    students ;

SELECT
    email , age
FROM
    students

SELECT
    email as "Student Email"
FROM
    students


SELECT
    *
FROM
    students ORDER BY age ASC;



SELECT
    *
FROM
    students ORDER BY age DESC;


SELECT DISTINCT country from students;


SELECT * FROM students WHERE country = 'UK';


SELECT * FROM students WHERE country = 'USA' AND course = 'Physics';

SELECT * FROM students WHERE country = 'USA' OR course = 'Physics';

SELECT * FROM students WHERE age > 22 and course = 'History';

SELECT * FROM students WHERE age < 22 ;

-- SELECT COALESCE(email, 'Email not provider') from students ;

-- SELECT * FROM students WHERE email IS not NULL ;

-- filtering data
SELECT * FROM students WHERE country = 'USA'  or country ='UK' or country = 'Canada';

SELECT * FROM students WHERE country  IN('USA', 'UK');

SELECT * FROM students WHERE country NOT IN('USA', 'UK');

SELECT * FROM students WHERE date_of_birth BETWEEN '2000-01-01' and '2005-01-01' ORDER BY date_of_birth;

SELECT * FROM students 
WHERE first_name LIKE '%e' ;

SELECT * FROM students 
WHERE first_name LIKE 'E%' ;

SELECT * FROM students 
WHERE first_name ILIKE 'e%' ;


-- pagination and limit
SELECT * FROM students LIMIT 5;

SELECT * FROM students LIMIT 5 OFFSET 5*0;
SELECT * FROM students LIMIT 5 OFFSET 5*1;
SELECT * FROM students LIMIT 5 OFFSET 5*2;


-- aggregate function
SELECT avg(age) FROM students;

SELECT min(age) FROM students;

SELECT max(age) FROM students;

SELECT count(*) FROM students;



-- delete data in table 
DELETE FROM students 
   WHERE blood_group = 'O-' AND country = 'UK' ;



-- update data in table
UPDATE students 
SET email= 'default@gmail.com'
WHERE student_id = 30;

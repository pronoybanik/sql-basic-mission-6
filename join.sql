
-- create user table
CREATE TABLE "user"  (
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT null
)

INSERT INTO "user"(username) VALUES
('pial');
-- ('pronoy'),
-- ('joy'),
-- ('abir')

SELECT * FROM "user"

-- DROP TABLE "user";

-- create post table 
CREATE TABLE post  (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id)

)

-- DROP TABLE post


INSERT INTO post (id,title, user_id) VALUES
(5,'test case', NULL);
-- ('Enjoying a sunny dat with akash', 1),
-- ('Enjoying a sunny dat with joy', 3),
-- ('Enjoying a sunny dat with abit', 4)

SELECT * FROM post

-- inner joint table and query data
SELECT title, username FROM post
JOIN "user" on post.user_id = "user".id;


SELECT * FROM post
JOIN "user" on post.user_id = "user".id;

-- elise
SELECT * FROM post as p
JOIN "user" as u on p.user_id = u.id;


SELECT post.id FROM post
JOIN "user" on post.user_id = "user".id;


-- Left join Right join in table
SELECT * FROM post
LEFT JOIN "user" on post.user_id = "user".id;

SELECT * FROM post
RIGHT JOIN "user" on post.user_id = "user".id;

SELECT * FROM post
FULL JOIN "user" on post.user_id = "user".id;

-- cross join
SELECT * from post
CROSS JOIN "user"

-- NATURAL joint
SELECT * from post
NATURAL JOIN "user"


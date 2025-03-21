

-- create user table
CREATE TABLE "user"  (
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT null
)

INSERT INTO "user"(username) VALUES
('akash'),
('pronoy'),
('joy'),
('abir')

SELECT * FROM "user"

-- DROP TABLE "user";

-- create post table 
CREATE TABLE post  (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
         ON DELETE CASCADE
        --  ON DELETE set null
        -- on delete set DEFAULT DEFAULT 2

)

-- DROP TABLE post

INSERT INTO post (title, user_id) VALUES
('Enjoying a sunny dat with pornoy', 2),
('Enjoying a sunny dat with akash', 1),
('Enjoying a sunny dat with joy', 3),
('Enjoying a sunny dat with abit', 4)

SELECT * FROM post


-- delete data
-- there are 3 types of delete
--  method show in module-50-5 
DELETE FROM "user"
   WHERE id =4

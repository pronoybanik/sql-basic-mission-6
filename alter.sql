SELECT
    *
from
    person2 -- add column in table
ALTER TABLE
    person2
ADD
    COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL;

-- input values in table
INSERT into
    person2
VALUES
(6, 'test', 38, 'pronoy@gmail.com') -- delete table COLUMN
ALTER TABLE
    person2 DROP COLUMN email -- change column name
ALTER Table
    person2 RENAME COLUMN age to user_age -- change column value type
ALTER TABLE
    person2
ALTER COLUMN
    user_name TYPE VARCHAR(40);

-- change column value type
ALTER Table
    person2
ALTER COLUMN
    user_age
set
    NOT NULL;

ALTER Table
    person2
ALTER COLUMN
    user_age drop NOT NULL;

ALTER TABLE
    person2
ADD
    constraint unique_person2_user_age UNIQUE(user_age);

ALTER TABLE
    person2 DROP constraint unique_person2_user_age;


-- that is dorp a only table data 
TRUNCATE table person2


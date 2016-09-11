DROP TABLE IF EXISTS user_table;
DROP SEQUENCE IF EXISTS user_id;

CREATE SEQUENCE user_id;
CREATE TABLE IF NOT EXISTS "user_table" (
  "id" integer PRIMARY KEY default nextval('user_id'),
  "name" varchar(20) NOT NULL,
  "hobby" varchar(50) NOT NULL,
  "pass" varchar(20) NOT NULL
);

INSERT into user_table(name, hobby, pass) values ('Ivan', 'football','qwerty');
INSERT into user_table(name, hobby, pass) values ('Alsi', 'smoking','qwerty123');
INSERT into user_table(name, hobby, pass) values ('Katya', 'healthy lifestyle','qwerty12');
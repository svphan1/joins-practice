CREATE TABLE owner (
  id serial PRIMARY KEY,
  name VARCHAR (50) NOT NULL,
  email VARCHAR (255) UNIQUE NOT NULL,
  phone VARCHAR (20)
);

CREATE TABLE pet (
  id serial PRIMARY KEY,
  name VARCHAR (50) NOT NULL,
  age integer,
  owner_id integer REFERENCES owner(id)
);

-- Owner data

INSERT INTO owner (name, email, phone)
VALUES ('George', 'george@gmail.com', '333-333-333');
 
INSERT INTO owner (name, email, phone)
VALUES ('Veronica', 'veronica@gmail.com', '333-333-333');
 
INSERT INTO owner (name, email, phone)
VALUES ('Larry', 'larry@gmail.com', '333-333-333');
 
INSERT INTO owner (name, email, phone)
VALUES ('Sarah', 'sarah@gmail.com', '333-333-333');
 
INSERT INTO owner (name, email, phone)
VALUES ('Alex', 'alex@gmail.com', '333-333-333');
 
INSERT INTO owner (name, email, phone)
VALUES ('Sam', 'sam@gmail.com', '333-333-333');
 
-- Pet data

INSERT INTO pet (name, age, owner_id)
VALUES ('Tiger', 4, 1);
 
INSERT INTO pet (name, age, owner_id)
VALUES ('Noodle', 6, 2);
 
INSERT INTO pet (name, age, owner_id)
VALUES ('Cashew', 2, 1);
 
INSERT INTO pet (name, age, owner_id)
VALUES ('Peaches', 12, 3);
 
INSERT INTO pet (name, age, owner_id)
VALUES ('Hercules', 9, 4);
 
INSERT INTO pet (name, age, owner_id)
VALUES ('Rajah', 1, 4);
 
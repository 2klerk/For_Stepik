CREATE DATABASE appdb;

\c appDB

CREATE TABLE IF NOT EXISTS users (
  ID SERIAL PRIMARY KEY,
  name VARCHAR(20) NOT NULL,
  surname VARCHAR(40) NOT NULL
);

DO $$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM users WHERE name = 'Alex' AND surname = 'Rover') THEN
    INSERT INTO users (name, surname) VALUES ('Alex', 'Rover');
  END IF;

  IF NOT EXISTS (SELECT 1 FROM users WHERE name = 'Bob' AND surname = 'Marley') THEN
    INSERT INTO users (name, surname) VALUES ('Bob', 'Marley');
  END IF;

  IF NOT EXISTS (SELECT 1 FROM users WHERE name = 'Kate' AND surname = 'Yandson') THEN
    INSERT INTO users (name, surname) VALUES ('Kate', 'Yandson');
  END IF;

  IF NOT EXISTS (SELECT 1 FROM users WHERE name = 'Lilo' AND surname = 'Black') THEN
    INSERT INTO users (name, surname) VALUES ('Lilo', 'Black');
  END IF;
END $$;

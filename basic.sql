CREATE DATABASE users;
USE users;
CREATE TABLE test_users (id INT NOT NULL PRIMARY KEY));
ALTER TABLE test_users
    ADD COLUMN email VARCHAR(50) NOT NULL,
    ADD COLUMN first_name VARCHAR(100),
    ADD COLUMN password VARCHAR(128),
    ADD COLUMN phone VARCHAR(50),
    ADD COLUMN address TEXT
;

ALTER TABLE test_users
    MODIFY first_name VARCHAR(100) NOT NULL,
    MODIFY password VARCHAR(128) NOT NULL,
    MODIFY phone VARCHAR(50) NOT NULL,
    MODIFY address TEXT NOT NULL
;

INSERT INTO test_users (id, email, first_name, password, phone, address)
    VALUES (1, 'juan@gmail.com', 'juan', 'password123', '08132121', 'INDONESIA');
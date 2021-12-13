-- Create tbl_products and add 10 records --
SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA
    WHERE SCHEMA_NAME = 'week11';
CREATE DATABASE IF NOT EXISTS week11;
USE week11;
CREATE TABLE tbl_products (id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT);
ALTER TABLE tbl_products ADD name VARCHAR(50) NOT NULL,
    ADD price INT(11) NOT NULL,
    ADD description TEXT,
    ADD stock INT(11) NOT NULL
;
INSERT INTO tbl_products (name, price, description, stock) VALUES
    ('Cappucino', 15, 'Hot Cappucino with cream', 5),
    ('Espresso', 20, 'Americano Espresso Coffee', 20),
    ('Coffee Latte', 18, 'White Coffee Latte with Cream', 15),
    ('Red Velvet Latte', 25, 'Red Velvet Latte with Choco Cream', 13),
    ('Choco Rhum', 30, 'Delicious Choco Cake with Rhum', 11),
    ('Black Forest', 40, 'Delicious Black Forest Cake with Cherry on top', 10),
    ('Chicken Katsu Dabu-Dabu', 25, 'Fresh Fried Chicken with Dabu-Dabu', 7),
    ('Salmon Truffle Teriyaki', 35, 'Fresh Salmon with Teriyaki Souce', 13),
    ('Wiener Schitzel', 45, 'Fried Chicken with Crispy Flavors', 22),
    ('Thai Milk Tea', 20, 'Original Thailand Milk Tea', 19)
;

-- insert data --
INSERT INTO tbl_products (name, price, description, stock) VALUES
    ('Batagor', 15, 'Mixed fried meatballs and tofu', 10)

-- retrieved data --
SELECT * FROM tbl_products WHERE price < 20;

-- update data --
UPDATE tbl_products SET name = 'Cappucinoes' WHERE stock = 5;

-- delete data --
DELETE FROM tbl_products WHERE id = 10;

-- search data --
SELECT * FROM tbl_products WHERE name = 'Cappucinoes';

-- sort data --
SELECT * FROM tbl_products WHERE price < 30 ORDER BY id;
SELECT * FROM tbl_products WHERE price < 30 ORDER BY id DESC;

-- limit data --
SELECT * FROM tbl_products LIMIT 5;

-- offset data --
SELECT * FROM tbl_products LIMIT 5 OFFSET 4;
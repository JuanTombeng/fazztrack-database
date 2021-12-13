-- TUGAS 1 -- Juan Tombeng --

CREATE DATABASE week11;
USE week11;
CREATE TABLE products (id INT(10) NOT NULL PRIMARY KEY AUTO_INCREMENT);
ALTER TABLE products ADD name VARCHAR(64) NOT NULL,
    ADD description TEXT NOT NULL,
    ADD price INT(10) NOT NULL,
    ADD quantity INT(10) NOT NULL
;
INSERT INTO products (name, description, price, quantity)
    VALUES ('Cappucino', 'Hot Cappucino with cream', 10, 5),
    ('Espresso', 'Americano Espresso Coffee', 15, 20),
    ('Coffee Latte', 'White Coffee Latte with Cream', 25, 15),
    ('Red Velvet Latte', 'Red Velvet Latte with Choco Cream', 27, 13),
    ('Choco Rhum', 'Delicious Choco Cake with Rhum', 35, 11),
    ('Black Forest', 'Delicious Black Forest Cake with Cherry on top', 33, 10),
    ('Chicken Katsu Dabu-Dabu', 'Fresh Fried Chicken with Dabu-Dabu', 40, 7),
    ('Salmon Truffle Teriyaki', 'Fresh Salmon with Teriyaki Souce', 33, 13),
    ('Wiener Schitzel', 'Fried Chicken with Crispy Flavors', 40, 22),
    ('Thai Milk Tea', 'Original Thailand Milk Tea', 20, 19)
;

-- Tugas 1 --

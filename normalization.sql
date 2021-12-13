SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA
    WHERE SCHEMA_NAME = 'week11';
CREATE DATABASE IF NOT EXISTS week11;
USE week11;

CREATE TABLE product_category (
    id INT(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    category VARCHAR(50) NOT NULL
);

INSERT INTO product_category (category) VALUES
    ('mie instan'), ('soda'),('air mineral')
;

CREATE TABLE products (
    id INT(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(50) NOT NULL,
    price INT(10) NOT NULL,
    id_product_category INT(10),
    FOREIGN KEY (id_product_category)
        REFERENCES product_category(id)
        ON DELETE CASCADE
);

INSERT INTO products (product_name, price, id_product_category) VALUES
    ('Indomie', 2500, 1),
    ('Coca-cola', 5000, 2),
    ('Aqua', 5000, 3),
    ('Mie Sedap', 2500, 1),
    ('Sprite', 5000, 2),
    ('Le Mineral', 5000, 3)
;

CREATE TABLE invoices (
    invoice VARCHAR(50) PRIMARY KEY NOT NULL,
    date DATE NOT NULL,
    total INT(50) NOT NULL
);

INSERT INTO invoices (invoice, date, total) VALUES
    ('INV-001', '2021-1-01', 120000),
    ('INV-002', '2021-1-01', 50000),
    ('INV-003', '2021-1-02', 10000),
    ('INV-004', '2021-1-03', 15000)
;

CREATE TABLE transactions (
    id INT(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_invoices VARCHAR(50),
    id_products INT(10),
    qty INT(10),
    FOREIGN KEY (id_invoices)
        REFERENCES invoices(invoice)
        ON DELETE CASCADE,
    FOREIGN KEY (id_products)
        REFERENCES products(id)
        ON DELETE CASCADE
);

INSERT INTO transactions (id_invoices, id_products, qty) VALUES
    ('INV-001', 1, 40), ('INV-001', 2, 2), ('INV-001', 3, 2),
    ('INV-002', 4, 10), ('INV-002', 1, 10),
    ('INV-003', 2, 1), ('INV-003', 5, 1),
    ('INV-004', 6, 1), ('INV-004', 4, 4)
;

SELECT transactions.id, transactions.id_invoices, invoices.date, invoices.total,
    products.product_name, products.price, transactions.qty, product_category.category
    FROM transactions
    INNER JOIN invoices ON transactions.id_invoices = invoices.invoice
    INNER JOIN products ON transactions.id_products = products.id
    INNER JOIN product_category ON products.id_product_category = product_category.id
    ORDER BY transactions.id;

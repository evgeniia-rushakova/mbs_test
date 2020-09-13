CREATE DATABASE IF NOT EXISTS testdatabase;
use testdatabase;

CREATE TABLE IF NOT EXISTS category(
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY ,
name TEXT NOT NULL
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS property(
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
name TEXT NOT NULL
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS product(
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY ,
category_id INT(6) UNSIGNED NOT NULL,
name TEXT NOT NULL,
price INT(6) UNSIGNED NOT NULL,
FOREIGN KEY (category_id) REFERENCES category(id)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS property_value(
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
product_id INT(6) UNSIGNED NOT NULL,
property_id INT(6) UNSIGNED NOT NULL,
value TEXT NOT NULL,
FOREIGN KEY (product_id) REFERENCES product(id),
FOREIGN KEY (property_id) REFERENCES property(id)
) ENGINE=INNODB;

INSERT INTO category (name) values ("vanilla");
INSERT INTO category (name) values ("chocolate");
INSERT INTO category (name) values ("strawberry");
INSERT INTO category (name) values ("mint");
INSERT INTO category (name) values ("additional");

INSERT INTO property (name) values ("weight");
INSERT INTO property (name) values ("fat");


INSERT INTO product (category_id, name, price) values (1, "vanilla with sirup", 25);
INSERT INTO product (category_id, name, price) values (1, "vanilla with coffee", 45);
INSERT INTO product (category_id, name, price) values (2, "chocolate with sprinkles", 15);
INSERT INTO product (category_id, name, price) values (2, "chocolate with wiskey", 55);
INSERT INTO product (category_id, name, price) values (3, "strawberry with berries", 25);
INSERT INTO product (category_id, name, price) values (3, "strawberry with jelly", 45);
INSERT INTO product (category_id, name, price) values (4, "mint with mint", 15);
INSERT INTO product (category_id, name, price) values (5, "mint with ice", 55);

INSERT INTO property_value (product_id, property_id, value) values (1,1,"100g");
INSERT INTO property_value (product_id, property_id, value) values (1,2,"35%");
INSERT INTO property_value (product_id, property_id, value) values (2,1,"200g");
INSERT INTO property_value (product_id, property_id, value) values (2,2,"45%");
INSERT INTO property_value (product_id, property_id, value) values (3,1,"300g");
INSERT INTO property_value (product_id, property_id, value) values (3,2,"55%");
INSERT INTO property_value (product_id, property_id, value) values (4,1,"400g");
INSERT INTO property_value (product_id, property_id, value) values (4,2,"65%");

INSERT INTO property_value (product_id, property_id, value) values (5,1,"100g");
INSERT INTO property_value (product_id, property_id, value) values (5,2,"35%");
INSERT INTO property_value (product_id, property_id, value) values (6,1,"200g");
INSERT INTO property_value (product_id, property_id, value) values (6,2,"45%");
INSERT INTO property_value (product_id, property_id, value) values (7,1,"300g");
INSERT INTO property_value (product_id, property_id, value) values (7,2,"55%");
INSERT INTO property_value (product_id, property_id, value) values (8,1,"400g");
INSERT INTO property_value (product_id, property_id, value) values (8,2,"65%");
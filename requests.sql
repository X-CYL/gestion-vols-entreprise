-- Active: 1702385693774@@mysql-x-cyl.alwaysdata.net@3306@x-cyl_gestion_vols

#créating all tables

CREATE TABLE IF NOT EXISTS category (`category_id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
                       `category` VARCHAR(30) NOT NULL);

CREATE TABLE IF NOT EXISTS brand (brand_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
                    brand VARCHAR(30) NOT NULL);

CREATE TABLE IF NOT EXISTS type_model (type_model_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
                    type_model VARCHAR(50) NOT NULL);

CREATE TABLE IF NOT EXISTS model (model_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
                    model VARCHAR(50) NOT NULL,
                    model_new_value FLOAT NOT NULL,
                    model_residual_value FLOAT NOT NULL,
                    model_qty INT NOT NULL);



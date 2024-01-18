-- Active: 1702499942668@@mysql-x-cyl.alwaysdata.net@3306@x-cyl_gestion_vols

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

CREATE TABLE IF NOT EXISTS replaced_by (replaced_items_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
                                        replaced VARCHAR(20),
                                        serial_number VARCHAR(30) NOT NULL);

CREATE TABLE IF NOT EXISTS report_of_theft (report_of_theft_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
                    complaint_id INT NOT NULL,
                    model_id INT NOT NULL,
                    serial_number VARCHAR(30) NOT NULL,
                    replaced BOOLEAN DEFAULT FALSE,
                    replaced_by_id INT);

CREATE TABLE IF NOT EXISTS users (users_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
                    surname VARCHAR(100) NOT NULL,
                    forename VARCHAR(100) NOT NULL,
                    user_mail VARCHAR(120) NOT NULL,
                    user_password VARCHAR(255) NOT NULL,
                    user_creation_date DATETIME NOT NULL,
                    function_id INT NOT NULL,
                    observation_id INT NOT NULL);

CREATE TABLE IF NOT EXISTS user_function (user_function_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
                                          type_function VARCHAR(30) NOT NULL,
                                          permission_id INT NOT NULL);

CREATE TABLE IF NOT EXISTS permission(permission_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
                                      permission VARCHAR(30) NOT NULL);

CREATE TABLE IF NOT EXISTS complaint (complaint_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
                    complaint_number VARCHAR(100) NOT NULL,
                    complaint_date DATE NOT NULL,
                    complaint_creation_date DATETIME NOT NULL,
                    scan_complaint_id INT NOT NULL,
                    users_id INT NOT NULL,
                    place_id INT NOT NULL,
                    state_service_id INT NOT NULL);

CREATE TABLE IF NOT EXISTS place (place_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
                    place_code VARCHAR(50) NOT NULL,
                    place_name VARCHAR(200) NOT NULL,
                    town_id INT NOT NULL,
                    place_kind_id INT NOT NULL,
                    users_id INT NOT NULL);

CREATE TABLE IF NOT EXISTS observations (observation_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
                    observation VARCHAR(255) NOT NULL,
                    id_users INT NOT NULL);

CREATE TABLE IF NOT EXISTS scan_complaint (scann_complaint_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
                    scan_complaint_link VARCHAR(100) NOT NULL);

CREATE TABLE IF NOT EXISTS state_service (state_service_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
                    Type_service VARCHAR(50) NOT NULL);

CREATE TABLE IF NOT EXISTS town (town_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
                    post_code VARCHAR(20) NOT NULL,
                    city VARCHAR(100) NOT NULL,
                    street_number VARCHAR(20) NOT NULL,
                    street VARCHAR(200) NOT NULL);

CREATE TABLE IF NOT EXISTS place_kind (place_kind_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
                    type_kind VARCHAR(30) NOT NULL);

# insert datas into tables for testing future request

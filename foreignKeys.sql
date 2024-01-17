-- Active: 1705485833143@@mysql-x-cyl.alwaysdata.net@3306@x-cyl_gestion_vols

#create foreign key according to class diagram

ALTER TABLE brand
DROP CONSTRAINT FK_category_id;
ALTER TABLE brand
ADD CONSTRAINT FK_category_id FOREIGN KEY (category_id) REFERENCES category(category_id);


ALTER TABLE type_model
ADD brand_id INT NOT NULL;
ALTER TABLE type_model
ADD CONSTRAINT FK_brand_id FOREIGN KEY (brand_id) REFERENCES brand(brand_id);


ALTER TABLE model
ADD table_model_id INT NOT NULL;
ALTER TABLE model
ADD CONSTRAINT FK_type_model_id FOREIGN KEY (type_model_id) REFERENCES type_model(type_model_id);


ALTER TABLE report_of_theft
ADD replaced_items_id INT NOT NULL;
ALTER TABLE report_of_theft
ADD CONSTRAINT FK_replaced_items_id FOREIGN KEY (replaced_items_id) REFERENCES replaced_by(replaced_items_id);


ALTER TABLE user_function
ADD permission_id INT NOT NULL;
ALTER TABLE user_function
ADD CONSTRAINT FK_permission_id FOREIGN KEY (permission_id) REFERENCES permission(permission_id);


ALTER TABLE observations
ADD CONSTRAINT FR_users_id FOREIGN KEY (users_id) REFERENCES users(users_id);

ALTER TABLE users
ADD CONSTRAINT FK_user_function_id FOREIGN KEY (user_function_id) REFERENCES user_function(user_function_id);

ALTER TABLE complaint
ADD CONSTRAINT FK_users_id FOREIGN KEY (users_id) REFERENCES users(users_id);
ALTER TABLE complaint
ADD CONSTRAINT FK_place_id FOREIGN KEY (place_id) REFERENCES place(place_id);

ALTER TABLE complaint
ADD CONSTRAINT FK_state_service_id FOREIGN KEY(state_service_id) REFERENCES state_service(state_service_id);

ALTER TABLE complaint
ADD CONSTRAINT FK_scan_complaint_id FOREIGN KEY(scan_complaint_id) REFERENCES scan_complaint(scann_complaint_id);

ALTER TABLE place
ADD CONSTRAINT FK_town_id FOREIGN KEY(town_id) REFERENCES town(town_id);
ALTER TABLE place
ADD CONSTRAINT FK_place_kind_id FOREIGN KEY(place_kind_id) REFERENCES place_kind(place_kind_id);
ALTER TABLE place
ADD CONSTRAINT FK_users_place_id FOREIGN KEY(users_id) REFERENCES users(users_id);
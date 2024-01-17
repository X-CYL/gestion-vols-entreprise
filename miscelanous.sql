

# deleting and modify tables

ALTER TABLE brand
DROP CONSTRAINT FK_category_id;

ALTER TABLE brand
DROP type_model_id;

ALTER TABLE users
DROP observation_id;

ALTER TABLE users
CHANGE function_id  user_function_id INT NOT NULL;

ALTER TABLE brand
ADD category_id INT NOT NULL;

ALTER TABLE report_of_theft
DROP replaced_by_id;

ALTER TABLE observations
CHANGE id_users users_id INT NOT NULL;
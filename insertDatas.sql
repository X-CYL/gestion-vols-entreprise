-- Active: 1705485833143@@mysql-x-cyl.alwaysdata.net@3306@x-cyl_gestion_vols

#insertion data for testing tables and futur joins
INSERT INTO category (category)
VALUE("ponçage");

INSERT INTO brand (brand, category_id)
VALUE("leica", 1),
     ("hilti", 2),
     ("milwaukee", 2),
     ("enar", 4),
     ("flex", 5),
     ("topcon", 1);
     
INSERT INTO type_model(type_model, brand_id)
VALUE("laser", 1),
     ("niveau", 1),
     ("laser", 2),
     ("niveau", 2),
     ("station robot", 1),
     ("station robot", 2),
     ("aiguille vibrante", 4),
     ("convertisseur", 4),
     ("ponceuse plafond", 5);


SELECT * FROM type_model;


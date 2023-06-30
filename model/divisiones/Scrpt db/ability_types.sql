DROP TABLE IF EXISTS ability_types;
-- Crear la tabla ability_types
CREATE TABLE ability_types (
    id SERIAL PRIMARY KEY,
    type VARCHAR(255)
);

-- Inserts
INSERT INTO ability_types (type) VALUES ('unit');
INSERT INTO ability_types (type) VALUES ('waregear');
INSERT INTO ability_types (type) VALUES ('faction');
INSERT INTO ability_types (type) VALUES ('sub-ability');
INSERT INTO ability_types (type) VALUES ('weapon');
INSERT INTO ability_types (type) VALUES ('core');
INSERT INTO ability_types (type) VALUES ('deployment');
INSERT INTO ability_types (type) VALUES ('damage');

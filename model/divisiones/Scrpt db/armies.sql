DROP TABLE IF EXISTS armies;

-- Creación de tabla
CREATE TABLE armies (
  id SERIAL PRIMARY KEY,
  descrip VARCHAR(255),
  name VARCHAR(255)
);

-- Inserts
INSERT INTO armies (descrip, name) VALUES
('', 'Adepta Sororita'),
('', 'Grey Knight');
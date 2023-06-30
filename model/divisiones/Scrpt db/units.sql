DROP TABLE IF EXISTS units;

CREATE TABLE units (
  id SERIAL PRIMARY KEY,
  invulnerableSave VARCHAR(10),
  leadership VARCHAR(10),
  movement VARCHAR(10),
  name VARCHAR(100),
  OC VARCHAR(10), 
  salvation VARCHAR(10),
  toughness VARCHAR(10),
  wounds VARCHAR(10),
  army_id INT REFERENCES armies (id)
);


INSERT INTO units (invulnerableSave, leadership, movement, name, OC, salvation, toughness, wounds, army_id)
VALUES ('6', '7', '6', 'Battle Sisters Squad', '2', '3', '3', '1', 1);

INSERT INTO units (invulnerableSave, leadership, movement, name, OC, salvation, toughness, wounds, army_id)
VALUES ('4', '6', '6', 'Triumph of Saint Katherine', '6', '3', '3', '18', 1);

INSERT INTO units (invulnerableSave, leadership, movement, name, OC, salvation, toughness, wounds, army_id)
VALUES (NULL, '6', '6"', 'PURGATION SQUAD', '1',  '2', '4', '2', 2);

INSERT INTO units (invulnerableSave, leadership, movement, name, OC, salvation, toughness, wounds, army_id)
VALUES 
-- MARINES
(NULL, '6', '6', 'PURGATION SQUAD', '1', '2', '4', '2', 2),
(NULL, '6', '6', 'STRIKE SQUAD', '2', '2', '4', '2', 2),
(NULL, '6', '6', 'PURIFIER SQUAD', '1', '2', '4', '2', 2),
('6', '8', '6', 'SERVITORS', '0', '4', '4', '1', 2),
(NULL, '6', '12', 'INTERCEPTOR SQUAD', '1', '2', '4', '2', 2),
(NULL, '6', '6', '', '1', '2', '4', '2', 2),
--PJS MARINES
(4, '6', '6', 'CASTELLAN CROWE', '1', '2', '4', '5', 2),
(NULL, '6', '6', 'BROTHERHOOD CHAMPION', '1', '2', '4', '4', 2),
(NULL, '6', '5', 'BROTHERHOOD TECHMARINE', '1', '2', '4', '4', 2),

--PERSONAJES EXTERMINADORES
('4', '6', '5', 'KALDOR DRAIGO', '1', '2', '5', '7', 2),
('4', '6', '5', 'GRAND MASTER VOLDUS', '1', '2', '6', '7', 2),
('4', '6', '5', 'GRAND MASTER', '1', '2', '5', '7', 2),
('4', '6', '5', 'BROTHER-CAPTAIN STERN', '1', '2', '5', '6', 2),
('4', '6', '5', 'BROTHER-CAPTAIN', '1', '2', '5', '6', 2),
('4', '6', '5', 'BROTHERHOOD LIBRARIAN', '1', '2', '5', '5', 2),
('4', '6', '5', 'BROTHERHOOD CHAPLAIN', '1', '2', '5', '5', 2),

--EXTERMINADORES Y PALACAS
('4', '6', '5', 'BROTHERHOOD TERMINATOR SQUAD', '1', '2', '5', '3', 2),
('4', '6', '5', 'PALADIN SQUAD', '1', '2', '5', '5', 2),

--DREADKNIGHTS
('4', '6', '8', 'GRAND MASTER IN NEMESIS DREADKNIGHT', '4', '2', '8', '13', 2),
('4', '6', '8', 'NEMESIS DREADKNIGHT', '4', '2', '8', '13', 2),

--VEHICULOS VARIOS
(NULL, '6', '6', 'GREY KNIGHTS VENERABLE DREADNOUGHT', '3', '3', '9', '8', 2),
(NULL, '6', '10', 'GREY KNIGHTS LAND RAIDER', '5', '2', '12', '16', 2),
(NULL, '6', '10', 'GREY KNIGHTS LAND RAIDER CRUSADER', '5', '2', '12', '16', 2),
(NULL, '6', '10', 'GREY KNIGHTS LAND RAIDER REDEEMER', '5', '2', '12', '16', 2),
(NULL, '6', '12', 'GREY KNIGHTS RHINO', '2', '3', '9', '10', 2),
(NULL, '6', '12', 'GREY KNIGHTS RAZORBACK', '2', '3', '9', '10', 2),



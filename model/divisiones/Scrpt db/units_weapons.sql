DROP TABLE IF EXISTS units_weapons;

CREATE TABLE units_weapons (
  unit_id INT REFERENCES units(id),
  weapon_id INT REFERENCES weapons(id),
  PRIMARY KEY (unit_id, weapon_id)
);
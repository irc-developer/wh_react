DROP TABLE IF EXISTS units_abilities;

CREATE TABLE units_abilities (
  unit_id INT REFERENCES units(id),
  ability_id INT REFERENCES abilities(id),
  PRIMARY KEY (unit_id, ability_id)
);
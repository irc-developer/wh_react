DROP TABLE IF EXISTS weapons_abilities;

CREATE TABLE weapons_abilities (
  weapon_id INT REFERENCES weapons(id),
  ability_id INT REFERENCES abilities(id),
  PRIMARY KEY (weapon_id, ability_id)
);
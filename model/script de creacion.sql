-- Tabla: Stratagem
CREATE TABLE Stratagem (
  id SERIAL PRIMARY KEY,
  cost VARCHAR(255),
  detachment VARCHAR(255),
  effect TEXT,
  flavor_text TEXT,
  name VARCHAR(255),
  target VARCHAR(255),
  type VARCHAR(255),
  when VARCHAR(255)
);

-- Tabla: ArmyRule
CREATE TABLE ArmyRule (
  id SERIAL PRIMARY KEY,
  army VARCHAR(255),
  descrip TEXT,
  mechanic TEXT,
  name VARCHAR(255)
);

-- Tabla: DetachmentRule
CREATE TABLE DetachmentRule (
  id SERIAL PRIMARY KEY,
  army_faction VARCHAR(255),
  detachment VARCHAR(255),
  flavor_text TEXT,
  name VARCHAR(255),
  rule_text TEXT
);

-- Tabla: Ability
CREATE TABLE Ability (
  id SERIAL PRIMARY KEY,
  ability_id INT,
  designers_note TEXT,
  name VARCHAR(255),
  rule_text TEXT,
  type VARCHAR(255)
);

-- Tabla: Keyword
CREATE TABLE Keyword (
  id SERIAL PRIMARY KEY,
  descript TEXT,
  name VARCHAR(255),
  type VARCHAR(255)
);

-- Tabla: Weapon
CREATE TABLE Weapon (
  id SERIAL PRIMARY KEY,
  armorPenetration VARCHAR(255),
  attacks VARCHAR(255),
  damage VARCHAR(255),
  name VARCHAR(255),
  range VARCHAR(255),
  strength VARCHAR(255),
  toHit VARCHAR(255)
);

-- Tabla: UnitComposition
CREATE TABLE UnitComposition (
  id SERIAL PRIMARY KEY,
  has_sergeant BOOLEAN,
  max INT,
  min INT
);

-- Tabla: EquippedWith
CREATE TABLE EquippedWith (
  id SERIAL PRIMARY KEY,
  text VARCHAR(255)
);

-- Tabla: WargearOptions
CREATE TABLE WargearOptions (
  id SERIAL PRIMARY KEY,
  text VARCHAR(255)
);

-- Tabla: Unit
CREATE TABLE Unit (
  id SERIAL PRIMARY KEY,
  invulnerableSave VARCHAR(255),
  leadership VARCHAR(255),
  movement VARCHAR(255),
  name VARCHAR(255),
  OC VARCHAR(255),
  quantity VARCHAR(255),
  salvation VARCHAR(255),
  toughness VARCHAR(255),
  unit_composition_id INT REFERENCES UnitComposition(id),
  wounds VARCHAR(255)
);

-- Tabla: Unit_Ability (relación muchos a muchos entre Unit y Ability)
CREATE TABLE Unit_Ability (
  unit_id INT REFERENCES Unit(id),
  ability_id INT REFERENCES Ability(id),
  PRIMARY KEY (unit_id, ability_id)
);

-- Tabla: Unit_Keyword (relación muchos a muchos entre Unit y Keyword)
CREATE TABLE Unit_Keyword (
  unit_id INT REFERENCES Unit(id),
  keyword_id INT REFERENCES Keyword(id),
  PRIMARY KEY (unit_id, keyword_id)
);

-- Tabla: Unit_EquippedWith (relación muchos a muchos entre Unit y EquippedWith)
CREATE TABLE Unit_EquippedWith (
  unit_id INT REFERENCES Unit(id),
  equipped_with_id INT REFERENCES EquippedWith(id),
  PRIMARY KEY (unit_id, equipped_with_id)
);

-- Tabla: Unit_WargearOptions (relación muchos a muchos entre Unit y WargearOptions)
CREATE TABLE Unit_WargearOptions (
  unit_id INT REFERENCES Unit(id),
  wargear_options_id INT REFERENCES WargearOptions(id),
  PRIMARY KEY (unit_id, wargear_options_id)
);

-- Tabla: Unit_Weapon (relación muchos a muchos entre Unit y Weapon)
CREATE TABLE Unit_Weapon (
  unit_id INT REFERENCES Unit(id),
  weapon_id INT REFERENCES Weapon(id),
  PRIMARY KEY (unit_id, weapon_id)
);

-- Tabla: Army
CREATE TABLE Army (
  id SERIAL PRIMARY KEY,
  descript TEXT,
  name VARCHAR(255)
);

-- Tabla: ArmyRule_Army (relación muchos a muchos entre ArmyRule y Army)
CREATE TABLE ArmyRule_Army (
  army_rule_id INT REFERENCES ArmyRule(id),
  army_id INT REFERENCES Army(id),
  PRIMARY KEY (army_rule_id, army_id)
);

-- Tabla: DetachmentRule_Army (relación muchos a muchos entre DetachmentRule y Army)
CREATE TABLE DetachmentRule_Army (
  detachment_rule_id INT REFERENCES DetachmentRule(id),
  army_id INT REFERENCES Army(id),
  PRIMARY KEY (detachment_rule_id, army_id)
);

-- Tabla: Stratagem_Army (relación muchos a muchos entre Stratagem y Army)
CREATE TABLE Stratagem_Army (
  stratagem_id INT REFERENCES Stratagem(id),
  army_id INT REFERENCES Army(id),
  PRIMARY KEY (stratagem_id, army_id)
);

-- Tabla: Unit_Army (relación muchos a muchos entre Unit y Army)
CREATE TABLE Unit_Army (
  unit_id INT REFERENCES Unit(id),
  army_id INT REFERENCES Army(id),
  PRIMARY KEY (unit_id, army_id)
);

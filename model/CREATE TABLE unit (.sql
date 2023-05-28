CREATE TABLE unit (
    id SERIAL PRIMARY KEY,
    name TEXT,
    movement TEXT,
    toughness TEXT,
    salvation TEXT,
    wounds TEXT,
    leadership TEXT,
    objective_control TEXT,
    invulnerable_save TEXT
);
CREATE TABLE keyword (
    id SERIAL PRIMARY KEY,
    name TEXT,
    type TEXT
);
CREATE TABLE unit_keyword (
    id SERIAL PRIMARY KEY,
    unit_id INTEGER REFERENCES unit(id),
    keyword_id INTEGER REFERENCES keyword(id)
);
CREATE TABLE ability (
    id SERIAL PRIMARY KEY,
    name TEXT,
    description TEXT,
    type TEXT
);
CREATE TABLE unit_ability (
    id SERIAL PRIMARY KEY,
    unit_id INTEGER REFERENCES unit(id),
    ability_id INTEGER REFERENCES ability(id)
);
CREATE TABLE weapon (
    id SERIAL PRIMARY KEY,
    name TEXT,
    range INTEGER,
    strenght INTEGER,
    armor_penetration INTEGER,
    damage INTEGER,
    attacks INTEGER,
    to_hit TEXT
);
CREATE TABLE unit_weapon (
    id SERIAL PRIMARY KEY,
    unit_id INTEGER REFERENCES unit(id),
    weapon_id INTEGER REFERENCES weapon(id)
);
CREATE TABLE weapon_ability (
    id SERIAL PRIMARY KEY,
    weapon_id INTEGER REFERENCES weapon(id),
    ability_id INTEGER REFERENCES ability(id)
);
INSERT INTO unit (
        name,
        movement,
        toughness,
        salvation,
        wounds,
        leadership,
        objective_control,
        invulnerable_save
    )
VALUES ('Terminator Squad', "5", "5", '2+', "3", '6+', "1", '4+');

INSERT INTO keyword (name, type)
VALUES ('Infantry', 'unit'),
    ('Adeptus Astartes', 'faction');

INSERT INTO unit_keyword (unit_id, keyword_id)
VALUES (1, 1),
    (1, 2);

INSERT INTO ability (name, description, type)
VALUES ('Deep Strike', 'pueden hacer DR', 'core'),
    (
        'Oath of Moment',
        'Repiten todo contra una unidad seleccionada',
        'faction'
    ),
    (
        'Teleport Homer',
        'que se teleportan sin gastar CP',
        'unit'
    );

INSERT INTO unit_ability (unit_id, ability_id)
VALUES (1, 1),
    (1, 2),
    (1, 3);

INSERT INTO weapon (
        name,
        range,
        strenght,
        armor_penetration,
        damage,
        attacks,
        to_hit
    )
VALUES ('Assault Cannon', 24, 6, 0, 1, 6, '3+');

INSERT INTO unit_weapon (unit_id, weapon_id)

VALUES (1, 1);

INSERT INTO ability (name, description, type)
VALUES (
        'devastating wounds',
        'Hacen mortales a seises',
        'weapon'
    );

INSERT INTO weapon_ability (weapon_id, ability_id)
VALUES (1, 1);
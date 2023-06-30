DROP TABLE IF EXISTS weapons;
-- Crear la tabla "weapons"
CREATE TABLE weapons (
    id SERIAL PRIMARY KEY,
    armor_penetration VARCHAR(10),
    attacks VARCHAR(10),
    damage VARCHAR(10),
    name VARCHAR(100),
    range VARCHAR(20),
    strength VARCHAR(10),
    to_hit VARCHAR(10)
);

-- Inserts para la tabla "weapons"
INSERT INTO weapons (armor_penetration, attacks, damage, name, range, strength, to_hit)
VALUES ('0', '2', '2', 'Artificer-crafted storm bolter', '24', '4', '3+');

INSERT INTO weapons (armor_penetration, attacks, damage, name, range, strength, to_hit)
VALUES ('0', '1', '1', 'Bolt pistol', '12', '4', '3+');

INSERT INTO weapons (armor_penetration, attacks, damage, name, range, strength, to_hit)
VALUES ('0', '1', '1', 'Boltgun', '24', '4', '3+');

INSERT INTO weapons (armor_penetration, attacks, damage, name, range, strength, to_hit)
VALUES ('-1', '3', '2 ', 'Heavy Bolter', '36', '5', '4+');

INSERT INTO weapons (armor_penetration, attacks, damage, name, range, strength, to_hit)
VALUES ('-4', '1', 'D6', 'Meltagun', '12', '9', '3+');

INSERT INTO weapons (armor_penetration, attacks, damage, name, range, strength, to_hit)
VALUES ('0', 'D6', '1', 'Ministorum flamer', '12', '5', 'N/A');

INSERT INTO weapons (armor_penetration, attacks, damage, name, range, strength, to_hit)
VALUES ('-1', 'D6', '1', 'Ministorum heavy flamer', '12', '6', 'N/A');

INSERT INTO weapons (armor_penetration, attacks, damage, name, range, strength, to_hit)
VALUES ('-4', '2', 'D6', 'Multimelta', '18', '9', '4+');

INSERT INTO weapons (armor_penetration, attacks, damage, name, range, strength, to_hit)
VALUES ('0', '3', '1', 'Chainsword', 'Melee', '3', '4+');

INSERT INTO weapons (armor_penetration, attacks, damage, name, range, strength, to_hit)
VALUES ('0', '1', '1', 'Close Combat', 'Melee', '3', '4+');

INSERT INTO weapons (armor_penetration, attacks, damage, name, range, strength, to_hit)
VALUES ('-2', '2', '1', 'Power weapon', 'Melee', '4', '4+');

INSERT INTO weapons (armor_penetration, attacks, damage, name, range, strength, to_hit)
VALUES ('-2', '5', '3', 'Lance of Illumination (Strike)', 'Melee', '8', '2+');

INSERT INTO weapons (armor_penetration, attacks, damage, name, range, strength, to_hit)
VALUES ('-1', '10', '1', 'Lance of Illumination (Sweep)', 'Melee', '5', '2+');

INSERT INTO weapons (armor_penetration, attacks, damage, name, range, strength, to_hit)
VALUES ('0', '3D6 ', '1', 'Exorcist Conflagration Rockets', '36', '5', '3+');

INSERT INTO weapons (armor_penetration, attacks, damage, name, range, strength, to_hit)
VALUES ('-2', 'D6+2', 'D6', 'Exorcist Missile Launcher', '36', '10', '3+');

INSERT INTO weapons (armor_penetration, attacks, damage, name, range, strength, to_hit)
VALUES ('-2', '18', '1', 'Relic weapons', 'Melee', '5', '2+');

INSERT INTO weapons (armor_penetration, attacks, damage, name, range, strength, to_hit)
VALUES ('-1', 'D6', '1', 'Incinerator', '12"', '6', 'N/A');

INSERT INTO weapons (armor_penetration, attacks, damage, name, range, strength, to_hit)
VALUES ('0', '6', '1', 'Psilencer', '24"', '5', '3+');

INSERT INTO weapons (armor_penetration, attacks, damage, name, range, strength, to_hit)
VALUES ('-1', '3', '2', 'Psycannon', '24"', '8', '3+');

INSERT INTO weapons (armor_penetration, attacks, damage, name, range, strength, to_hit)
VALUES ('0', '2', '1', 'Storm bolter', '24"', '4', '3+');

INSERT INTO weapons (armor_penetration, attacks, damage, name, range, strength, to_hit)
VALUES ('0', '3', '1', 'Close combat weapon', 'Melee', '4', '3+');

INSERT INTO weapons (armor_penetration, attacks, damage, name, range, strength, to_hit)
VALUES ('-2', '3', '2', 'Nemesis force weapon', 'Melee', '6', '3+');

INSERT INTO weapons (armor_penetration, attacks, damage, name, range, strength, to_hit)
VALUES ('0', '12', '1', 'Gatling psilencer', '24"', '6', '3+');

INSERT INTO weapons (armor_penetration, attacks, damage, name, range, strength, to_hit)
VALUES ('-1', '2D6', '1', 'Heavy incinerator', '18"', '6', 'N/A');

INSERT INTO weapons (armor_penetration, attacks, damage, name, range, strength, to_hit)
VALUES ('-1', '6', '3', 'Heavy psycannon', '24"', '10', '3+');

INSERT INTO weapons (armor_penetration, attacks, damage, name, range, strength, to_hit)
VALUES ('-1', '6', '1', 'Dreadfists', 'Melee', '6', '3+');

INSERT INTO weapons (armor_penetration, attacks, damage, name, range, strength, to_hit)
VALUES ('-3', '5', '1D6+1', 'Nemesis daemon greathammer', 'Melee', '14', '4+');

INSERT INTO weapons (armor_penetration, attacks, damage, name, range, strength, to_hit)
VALUES ('', '5', 'D6', 'Nemesis greatsword - strike', 'Melee', '10', '3+');

INSERT INTO weapons (armor_penetration, attacks, damage, name, range, strength, to_hit)
VALUES ('-1', '1', '1', 'PURIFYING FLAME', '18"', '4', '3+');

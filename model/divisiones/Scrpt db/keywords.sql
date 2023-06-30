DROP TABLE IF EXISTS keywords;

CREATE TABLE keywords (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    descript VARCHAR(255),
    type VARCHAR(255) NOT NULL
);

INSERT INTO keywords (name, descript, type) VALUES
    ('ADEPTA SORORITAS', 'ADEPTA SORORITAS', 1),
    ('INFANTRY', 'INFANTRY', 2),
    ('GRENADES', 'GRENADES', 2),
    ('CHARACTER', 'CHARACTER', 2),
    ('EPIC HERO', 'EPIC HEROES cannot be given any Enhancements. Your army cannot include the same EPIC HERO more than once.', 2),
    ('IMPERIUM', 'IMPERIUM', 2),
    ('TRIUMPH OF SAINT KATHERINE', 'TRIUMPH OF SAINT KATHERINE', 2),
    ('PSYKER', '', 2),
    ('PURGATION SQUAD', '', 2),
    ('GREY KNIGHTS', '', 1),
    ( 'VEHICLE', '', 2),
    ( 'WALKER', '', 2),
    ( 'GRAND MASTER IN NEMESIS DREADKNIGHT', '', 2);

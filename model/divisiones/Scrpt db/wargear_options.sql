DROP TABLE IF EXISTS wargear_options;
-- Crear la tabla "weapons"
CREATE TABLE wargear_options (
    id SERIAL PRIMARY KEY,
    descript VARCHAR(200),
    unit_id INT REFERENCES units(id) --Cada línea es una entrada del data
);

/*

All models in this unit can each have their fleshborer replaced with 1 Termagant devourer.
■ All models in this unit can each have their fleshborer replaced with 1 Termagant spinefists.
*/
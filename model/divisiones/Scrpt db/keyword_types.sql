CREATE TABLE keyword_types (
    id SERIAL PRIMARY KEY,
    type VARCHAR(255) NOT NULL
);

INSERT INTO keyword_types (type) VALUES
    ('faction'),
    ('unit');

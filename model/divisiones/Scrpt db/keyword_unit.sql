DROP TABLE IF EXISTS units_keywords;

CREATE TABLE units_keywords (
  id SERIAL PRIMARY KEY,
  unit_id INT REFERENCES units (id),
  keyword_id INT REFERENCES keywords (id)
);

-- The World We Make: first-class denominator definitions
-- A rate without its population base can be numerically correct and conceptually wrong.

CREATE TABLE denominator_definitions (
  denominator_id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  definition TEXT NOT NULL,
  population_scope TEXT,
  geography_scope TEXT,
  time_scope TEXT,
  inclusion_rules TEXT,
  exclusion_rules TEXT,
  unit TEXT,
  source_id TEXT REFERENCES sources(source_id),
  definition_version TEXT,
  confidence TEXT,
  notes TEXT
);

CREATE TABLE variable_denominators (
  variable_id TEXT NOT NULL REFERENCES variables(variable_id),
  denominator_id TEXT NOT NULL REFERENCES denominator_definitions(denominator_id),
  valid_from TEXT,
  valid_to TEXT,
  source_specific BOOLEAN DEFAULT FALSE,
  notes TEXT,
  PRIMARY KEY (variable_id, denominator_id, valid_from)
);

-- Examples: total population, working-age population, labour force, households,
-- employed people, internet users, voters, residents, births, person-years,
-- land area and searchers. Never assume similarly named percentages share a base.

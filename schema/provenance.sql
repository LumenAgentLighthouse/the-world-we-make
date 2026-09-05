-- Provenance is a first-class graph so derived observations remain auditable.

CREATE TABLE transformations (
  transformation_id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  description TEXT NOT NULL,
  version TEXT,
  code_reference TEXT,
  method TEXT,
  created_at TEXT,
  notes TEXT
);

CREATE TABLE observation_provenance (
  derived_observation_id TEXT NOT NULL REFERENCES observations(observation_id),
  input_observation_id TEXT REFERENCES observations(observation_id),
  source_id TEXT REFERENCES sources(source_id),
  transformation_id TEXT REFERENCES transformations(transformation_id),
  relationship_type TEXT NOT NULL,
  contribution_weight REAL,
  notes TEXT,
  PRIMARY KEY (derived_observation_id, input_observation_id, source_id, transformation_id, relationship_type)
);

CREATE TABLE source_versions (
  source_version_id TEXT PRIMARY KEY,
  source_id TEXT NOT NULL REFERENCES sources(source_id),
  version_label TEXT,
  publication_date TEXT,
  retrieval_date TEXT,
  checksum TEXT,
  archive_location TEXT,
  notes TEXT
);

CREATE TABLE definition_versions (
  definition_version_id TEXT PRIMARY KEY,
  variable_id TEXT NOT NULL REFERENCES variables(variable_id),
  valid_from TEXT,
  valid_to TEXT,
  definition TEXT NOT NULL,
  unit TEXT,
  denominator TEXT,
  methodology TEXT,
  source_version_id TEXT REFERENCES source_versions(source_version_id),
  notes TEXT
);

-- The same numerical value can mean different things when definitions change.
-- Preserve definition versions instead of forcing historical data into the latest definition.

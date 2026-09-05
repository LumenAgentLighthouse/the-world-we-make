CREATE TABLE geographic_systems (
  geography_system_id TEXT PRIMARY KEY,
  country TEXT,
  system_name TEXT NOT NULL,
  geography_type TEXT NOT NULL,
  native_identifier TEXT,
  parent_system_id TEXT,
  valid_from TEXT,
  valid_to TEXT,
  boundary_source_id TEXT REFERENCES sources(source_id),
  comparability_notes TEXT,
  confidence TEXT
);

CREATE TABLE geographic_crosswalks (
  crosswalk_id TEXT PRIMARY KEY,
  from_geography_id TEXT NOT NULL REFERENCES geographic_systems(geography_system_id),
  to_geography_id TEXT NOT NULL REFERENCES geographic_systems(geography_system_id),
  method TEXT NOT NULL,
  overlap_fraction REAL,
  population_weight REAL,
  area_weight REAL,
  validity TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  notes TEXT
);

CREATE TABLE dataset_catalogue (
  dataset_id TEXT PRIMARY KEY,
  source_id TEXT NOT NULL REFERENCES sources(source_id),
  publisher TEXT,
  dataset_name TEXT NOT NULL,
  landing_url TEXT,
  data_url TEXT,
  licence TEXT,
  geographic_coverage TEXT,
  temporal_coverage TEXT,
  frequency TEXT,
  update_pattern TEXT,
  access_method TEXT,
  machine_readable BOOLEAN,
  historical_depth TEXT,
  known_limitations TEXT,
  last_checked TEXT
);

CREATE TABLE source_claims (
  claim_id TEXT PRIMARY KEY,
  source_id TEXT NOT NULL REFERENCES sources(source_id),
  claim TEXT NOT NULL,
  claim_type TEXT,
  geographic_scope TEXT,
  temporal_scope TEXT,
  evidence_location TEXT,
  confidence TEXT,
  notes TEXT
);

-- Sources describe what can be measured; the observation layer records what was actually extracted.
-- Keep the two separate so source discovery can happen before extraction.

-- The World We Make: versioned small-area geography, contradictions and null knowledge.
-- Conflicts are preserved; the schema does not require a winner.

CREATE TABLE geography_units (
  geography_id TEXT PRIMARY KEY,
  place_id TEXT REFERENCES places(place_id),
  native_code TEXT,
  native_name TEXT,
  geography_type TEXT NOT NULL,
  parent_geography_id TEXT,
  valid_from TEXT,
  valid_to TEXT,
  boundary_version TEXT,
  geometry_source TEXT,
  native_definition TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  notes TEXT
);

CREATE TABLE geography_crosswalks (
  crosswalk_id TEXT PRIMARY KEY,
  source_geography_id TEXT NOT NULL REFERENCES geography_units(geography_id),
  target_geography_id TEXT NOT NULL REFERENCES geography_units(geography_id),
  valid_from TEXT,
  valid_to TEXT,
  relationship_type TEXT NOT NULL,
  overlap_share REAL,
  population_share REAL,
  area_share REAL,
  transformation_method TEXT,
  reversible BOOLEAN,
  confidence TEXT,
  source_id TEXT REFERENCES sources(source_id),
  notes TEXT
);

CREATE TABLE evidence_contradictions (
  contradiction_id TEXT PRIMARY KEY,
  subject_type TEXT NOT NULL,
  subject_id TEXT NOT NULL,
  measure_type TEXT,
  source_a_id TEXT REFERENCES sources(source_id),
  source_b_id TEXT REFERENCES sources(source_id),
  observation_a_id TEXT REFERENCES observations(observation_id),
  observation_b_id TEXT REFERENCES observations(observation_id),
  value_a_numeric REAL,
  value_b_numeric REAL,
  unit_a TEXT,
  unit_b TEXT,
  contradiction_type TEXT NOT NULL,
  same_concept_assessment TEXT,
  possible_explanation TEXT,
  resolution_status TEXT NOT NULL,
  preferred_value_reason TEXT,
  decisive_evidence_source_id TEXT REFERENCES sources(source_id),
  recorded_at TEXT,
  notes TEXT
);

CREATE TABLE null_results (
  null_result_id TEXT PRIMARY KEY,
  question_hash TEXT NOT NULL,
  question TEXT NOT NULL,
  scope TEXT,
  search_period TEXT,
  geography_scope TEXT,
  variables_checked TEXT,
  sources_checked TEXT,
  result_type TEXT NOT NULL,
  result_summary TEXT NOT NULL,
  limitations TEXT,
  evidence_type TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  created_at TEXT,
  expires_at TEXT,
  notes TEXT
);

-- resolution_status examples: UNRESOLVED, EXPLAINED_BY_DEFINITION, EXPLAINED_BY_TIME,
-- EXPLAINED_BY_GEOGRAPHY, RESOLVED, SUPERSEDED, INCOMPARABLE.
-- A contradiction is retained even after a resolution; resolution explains the relationship
-- rather than silently deleting the original evidence.

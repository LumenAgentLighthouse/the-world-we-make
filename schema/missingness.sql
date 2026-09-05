-- The World We Make: explicit missingness and negative-space observations
-- Missing data are states about measurement, not zeros and not evidence of absence.

CREATE TABLE observation_missingness (
  missingness_id TEXT PRIMARY KEY,
  place_id TEXT REFERENCES places(place_id),
  time_id TEXT REFERENCES time_periods(time_id),
  variable_id TEXT NOT NULL REFERENCES variables(variable_id),
  status TEXT NOT NULL,
  reason TEXT,
  detection_method TEXT,
  expected_coverage TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  notes TEXT
);

-- Recommended status values:
-- NOT_COLLECTED, NOT_APPLICABLE, SUPPRESSED, UNAVAILABLE, BELOW_DETECTION,
-- INCOMPATIBLE_DEFINITION, BOUNDARY_MISMATCH, NOT_YET_INGESTED, UNKNOWN.
-- A missingness record must not be interpreted as an observed zero or absence.

CREATE TABLE negative_space_observations (
  negative_space_id TEXT PRIMARY KEY,
  place_id TEXT REFERENCES places(place_id),
  time_id TEXT REFERENCES time_periods(time_id),
  variable_id TEXT NOT NULL REFERENCES variables(variable_id),
  absence_claim TEXT NOT NULL,
  detection_method TEXT,
  search_scope TEXT,
  evidence_type TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  caveat TEXT,
  notes TEXT
);

-- Use negative_space_observations only where the collection method can defend
-- an absence claim. Lack of data belongs in observation_missingness instead.

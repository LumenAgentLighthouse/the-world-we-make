-- The World We Make: initial relational core
-- Domain-specific tables can extend this model without weakening provenance.

CREATE TABLE places (
  place_id TEXT PRIMARY KEY,
  country TEXT NOT NULL,
  admin1 TEXT,
  admin2 TEXT,
  place_name TEXT NOT NULL,
  place_type TEXT,
  latitude REAL,
  longitude REAL,
  population REAL,
  boundary_version TEXT,
  urban_rural TEXT,
  notes TEXT
);

CREATE TABLE time_periods (
  time_id TEXT PRIMARY KEY,
  period_start TEXT NOT NULL,
  period_end TEXT,
  year INTEGER,
  month INTEGER,
  quarter INTEGER,
  season TEXT,
  data_frequency TEXT
);

CREATE TABLE sources (
  source_id TEXT PRIMARY KEY,
  publisher TEXT,
  dataset_name TEXT,
  url TEXT,
  access_date TEXT,
  geographic_coverage TEXT,
  temporal_coverage TEXT,
  method TEXT,
  license TEXT,
  known_biases TEXT,
  definition_notes TEXT
);

CREATE TABLE variables (
  variable_id TEXT PRIMARY KEY,
  domain TEXT NOT NULL,
  variable_name TEXT NOT NULL,
  definition TEXT NOT NULL,
  unit TEXT,
  preferred_frequency TEXT,
  sensitivity TEXT,
  causal_role TEXT,
  known_confounders TEXT,
  notes TEXT
);

CREATE TABLE observations (
  observation_id TEXT PRIMARY KEY,
  place_id TEXT REFERENCES places(place_id),
  time_id TEXT REFERENCES time_periods(time_id),
  variable_id TEXT NOT NULL REFERENCES variables(variable_id),
  value_numeric REAL,
  value_text TEXT,
  unit TEXT,
  category TEXT,
  sub_category TEXT,
  evidence_type TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  status TEXT NOT NULL,
  missing_reason TEXT,
  caveat TEXT,
  notes TEXT
);

CREATE TABLE events (
  event_id TEXT PRIMARY KEY,
  place_id TEXT REFERENCES places(place_id),
  start_date TEXT NOT NULL,
  end_date TEXT,
  event_type TEXT NOT NULL,
  description TEXT,
  scale TEXT,
  actor TEXT,
  population_affected REAL,
  expected_effect TEXT,
  direct_effect TEXT,
  observed_effect TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT
);

CREATE TABLE cultural_phenomena (
  trend_id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  domain TEXT NOT NULL,
  description TEXT,
  status TEXT,
  notes TEXT
);

CREATE TABLE cultural_variants (
  variant_id TEXT PRIMARY KEY,
  trend_id TEXT NOT NULL REFERENCES cultural_phenomena(trend_id),
  place_id TEXT REFERENCES places(place_id),
  valid_from TEXT,
  valid_to TEXT,
  origin_place_id TEXT REFERENCES places(place_id),
  production_location TEXT,
  creator_origin TEXT,
  ownership_origin TEXT,
  language TEXT,
  parent_variant_id TEXT REFERENCES cultural_variants(variant_id),
  alteration_description TEXT,
  evidence_type TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT
);

CREATE TABLE cultural_flow_observations (
  flow_id TEXT PRIMARY KEY,
  trend_id TEXT REFERENCES cultural_phenomena(trend_id),
  variant_id TEXT REFERENCES cultural_variants(variant_id),
  origin_place_id TEXT REFERENCES places(place_id),
  destination_place_id TEXT REFERENCES places(place_id),
  time_id TEXT REFERENCES time_periods(time_id),
  measure_type TEXT NOT NULL,
  value_numeric REAL,
  unit TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  notes TEXT
);

CREATE TABLE language_terms (
  word_id TEXT PRIMARY KEY,
  canonical_form TEXT NOT NULL,
  language TEXT,
  earliest_known_date TEXT,
  earliest_known_place TEXT,
  origin_language TEXT,
  origin_place TEXT,
  etymology TEXT,
  original_meaning TEXT,
  current_meaning TEXT,
  status TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT
);

CREATE TABLE language_term_movements (
  movement_id TEXT PRIMARY KEY,
  word_id TEXT NOT NULL REFERENCES language_terms(word_id),
  source_language TEXT,
  destination_language TEXT,
  source_place TEXT,
  destination_place TEXT,
  arrival_date TEXT,
  adoption_start TEXT,
  adoption_rate REAL,
  usage_measure TEXT,
  semantic_change TEXT,
  spelling_change TEXT,
  pronunciation_change TEXT,
  grammatical_adaptation TEXT,
  derivative_forms TEXT,
  hybrid_terms TEXT,
  return_flow BOOLEAN,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT
);

-- Evidence status is intentionally categorical rather than a single quality score.
-- KNOWN, PARTIALLY_KNOWN, INFERRED, UNKNOWN, UNMEASURABLE

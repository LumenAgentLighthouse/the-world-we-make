-- The World We Make: local trust, daily life, care, sleep and social structure.
-- These are multidimensional observations, not a single cohesion/wellbeing score.

CREATE TABLE local_social_cohesion_observations (
  cohesion_observation_id TEXT PRIMARY KEY,
  place_id TEXT REFERENCES places(place_id),
  time_id TEXT REFERENCES time_periods(time_id),
  measure_type TEXT NOT NULL,
  value_numeric REAL,
  unit TEXT,
  population_scope TEXT,
  instrument TEXT,
  question_definition TEXT,
  evidence_type TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  notes TEXT
);

CREATE TABLE local_mutual_aid_observations (
  mutual_aid_observation_id TEXT PRIMARY KEY,
  place_id TEXT REFERENCES places(place_id),
  time_id TEXT REFERENCES time_periods(time_id),
  activity_type TEXT,
  participant_count REAL,
  activity_count REAL,
  frequency TEXT,
  beneficiary_scope TEXT,
  formal_or_informal TEXT,
  evidence_type TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  notes TEXT
);

CREATE TABLE time_use_observations (
  time_use_observation_id TEXT PRIMARY KEY,
  place_id TEXT REFERENCES places(place_id),
  time_id TEXT REFERENCES time_periods(time_id),
  activity_type TEXT NOT NULL,
  minutes_per_day REAL,
  share_of_day REAL,
  population_scope TEXT,
  age_scope TEXT,
  sex_scope TEXT,
  weekday_or_weekend TEXT,
  paid_or_unpaid TEXT,
  formal_or_informal TEXT,
  evidence_type TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  notes TEXT
);

CREATE TABLE care_economy_observations (
  care_observation_id TEXT PRIMARY KEY,
  place_id TEXT REFERENCES places(place_id),
  time_id TEXT REFERENCES time_periods(time_id),
  care_type TEXT NOT NULL,
  provider_type TEXT NOT NULL,
  hours REAL,
  recipients REAL,
  capacity REAL,
  cost_numeric REAL,
  cost_unit TEXT,
  population_scope TEXT,
  formal_or_informal TEXT,
  paid_or_unpaid TEXT,
  evidence_type TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  notes TEXT
);

CREATE TABLE sleep_environment_observations (
  sleep_observation_id TEXT PRIMARY KEY,
  place_id TEXT REFERENCES places(place_id),
  time_id TEXT REFERENCES time_periods(time_id),
  measure_type TEXT NOT NULL,
  value_numeric REAL,
  unit TEXT,
  measurement_method TEXT,
  time_window TEXT,
  population_scope TEXT,
  evidence_type TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  notes TEXT
);

CREATE TABLE environmental_stressor_observations (
  stressor_observation_id TEXT PRIMARY KEY,
  place_id TEXT REFERENCES places(place_id),
  time_id TEXT REFERENCES time_periods(time_id),
  stressor_type TEXT NOT NULL,
  value_numeric REAL,
  unit TEXT,
  duration TEXT,
  spatial_resolution TEXT,
  measurement_method TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  notes TEXT
);

-- Deliberately no universal "social cohesion score" or "quality of life score" is defined here.
-- Each observation retains its question, population scope, instrument and provenance.

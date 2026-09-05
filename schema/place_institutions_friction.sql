-- The World We Make: local capability, exit/voice, administrative friction, waiting and market choice.

CREATE TABLE knowledge_transmission_observations (
  transmission_id TEXT PRIMARY KEY,
  place_id TEXT REFERENCES places(place_id),
  time_id TEXT REFERENCES time_periods(time_id),
  skill_domain TEXT NOT NULL,
  transmission_type TEXT NOT NULL,
  mentor_count REAL,
  learner_count REAL,
  hours REAL,
  completion_count REAL,
  formal_or_informal TEXT,
  intergenerational BOOLEAN,
  evidence_type TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  notes TEXT
);

CREATE TABLE exit_voice_observations (
  exit_voice_id TEXT PRIMARY KEY,
  place_id TEXT REFERENCES places(place_id),
  time_id TEXT REFERENCES time_periods(time_id),
  subject_type TEXT NOT NULL,
  option_type TEXT NOT NULL,
  measure_type TEXT,
  value_numeric REAL,
  unit TEXT,
  cost_or_barrier TEXT,
  population_scope TEXT,
  evidence_type TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  notes TEXT
);

CREATE TABLE administrative_friction_observations (
  friction_id TEXT PRIMARY KEY,
  place_id TEXT REFERENCES places(place_id),
  time_id TEXT REFERENCES time_periods(time_id),
  service_or_process TEXT NOT NULL,
  task_type TEXT NOT NULL,
  elapsed_hours REAL,
  visits_count REAL,
  forms_count REAL,
  fees_numeric REAL,
  fee_unit TEXT,
  unofficial_payment_reported BOOLEAN,
  failed_or_repeated_attempts REAL,
  population_scope TEXT,
  evidence_type TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  notes TEXT
);

CREATE TABLE waiting_time_observations (
  waiting_id TEXT PRIMARY KEY,
  place_id TEXT REFERENCES places(place_id),
  time_id TEXT REFERENCES time_periods(time_id),
  service_type TEXT NOT NULL,
  wait_stage TEXT NOT NULL,
  wait_value REAL,
  unit TEXT,
  percentile TEXT,
  population_scope TEXT,
  evidence_type TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  notes TEXT
);

CREATE TABLE local_market_concentration (
  concentration_id TEXT PRIMARY KEY,
  place_id TEXT REFERENCES places(place_id),
  time_id TEXT REFERENCES time_periods(time_id),
  market_type TEXT NOT NULL,
  provider_count REAL,
  active_provider_count REAL,
  largest_provider_share REAL,
  top_n_share REAL,
  concentration_measure TEXT,
  geography_scope TEXT,
  evidence_type TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  notes TEXT
);

CREATE TABLE intergenerational_contact_observations (
  intergenerational_id TEXT PRIMARY KEY,
  place_id TEXT REFERENCES places(place_id),
  time_id TEXT REFERENCES time_periods(time_id),
  contact_type TEXT NOT NULL,
  measure_type TEXT,
  value_numeric REAL,
  unit TEXT,
  age_groups TEXT,
  geography_radius TEXT,
  household_or_neighbourhood TEXT,
  evidence_type TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  notes TEXT
);

CREATE TABLE body_state_observations (
  body_state_id TEXT PRIMARY KEY,
  place_id TEXT REFERENCES places(place_id),
  time_id TEXT REFERENCES time_periods(time_id),
  measure_type TEXT NOT NULL,
  value_numeric REAL,
  unit TEXT,
  age_scope TEXT,
  sex_scope TEXT,
  sampling_method TEXT,
  clinical_or_population_measure TEXT,
  evidence_type TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  notes TEXT
);

CREATE TABLE local_price_baskets (
  basket_id TEXT PRIMARY KEY,
  place_id TEXT REFERENCES places(place_id),
  time_id TEXT REFERENCES time_periods(time_id),
  basket_name TEXT NOT NULL,
  basket_definition TEXT,
  total_cost REAL,
  currency TEXT,
  household_scope TEXT,
  item_count REAL,
  rent_included BOOLEAN,
  energy_included BOOLEAN,
  transport_included BOOLEAN,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  notes TEXT
);

CREATE TABLE local_price_items (
  basket_item_id TEXT PRIMARY KEY,
  basket_id TEXT NOT NULL REFERENCES local_price_baskets(basket_id),
  item_category TEXT NOT NULL,
  item_description TEXT,
  quantity REAL,
  unit TEXT,
  price REAL,
  currency TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  notes TEXT
);

-- Exit, voice, friction and concentration are observable dimensions; avoid collapsing them into one local power score.

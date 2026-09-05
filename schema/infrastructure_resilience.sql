-- The World We Make: infrastructure fragility, recovery, repair and disaster memory.

CREATE TABLE infrastructure_assets (
  asset_id TEXT PRIMARY KEY,
  place_id TEXT REFERENCES places(place_id),
  asset_type TEXT NOT NULL,
  operator_type TEXT,
  ownership_type TEXT,
  capacity_numeric REAL,
  capacity_unit TEXT,
  commissioning_date TEXT,
  status TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  notes TEXT
);

CREATE TABLE infrastructure_failure_events (
  failure_id TEXT PRIMARY KEY,
  asset_id TEXT REFERENCES infrastructure_assets(asset_id),
  place_id TEXT REFERENCES places(place_id),
  start_time TEXT,
  end_time TEXT,
  failure_type TEXT,
  severity TEXT,
  population_affected REAL,
  service_loss_numeric REAL,
  service_loss_unit TEXT,
  cause_description TEXT,
  evidence_type TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  notes TEXT
);

CREATE TABLE infrastructure_recovery_events (
  recovery_id TEXT PRIMARY KEY,
  failure_id TEXT REFERENCES infrastructure_failure_events(failure_id),
  repair_start TEXT,
  service_restored TEXT,
  fully_repaired TEXT,
  recovery_duration_hours REAL,
  repair_actor TEXT,
  repair_actor_type TEXT,
  external_assistance BOOLEAN,
  cost_numeric REAL,
  cost_unit TEXT,
  evidence_type TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  notes TEXT
);

CREATE TABLE repair_maintenance_capacity (
  repair_capacity_id TEXT PRIMARY KEY,
  place_id TEXT REFERENCES places(place_id),
  time_id TEXT REFERENCES time_periods(time_id),
  repair_domain TEXT NOT NULL,
  provider_count REAL,
  skilled_worker_count REAL,
  apprenticeship_or_training_capacity REAL,
  mobile_or_local TEXT,
  formal_or_informal TEXT,
  service_area TEXT,
  evidence_type TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  notes TEXT
);

CREATE TABLE disaster_memory_preparedness (
  preparedness_id TEXT PRIMARY KEY,
  place_id TEXT REFERENCES places(place_id),
  time_id TEXT REFERENCES time_periods(time_id),
  hazard_type TEXT NOT NULL,
  prior_experience_level TEXT,
  lived_experience_window TEXT,
  preparedness_measure TEXT,
  value_numeric REAL,
  unit TEXT,
  plan_exists BOOLEAN,
  drills_or_training TEXT,
  household_preparedness TEXT,
  institutional_memory TEXT,
  evidence_type TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  notes TEXT
);

-- Failure, restoration and who performed the repair are separate from asset existence.
-- Do not infer resilience merely from infrastructure presence or nominal capacity.

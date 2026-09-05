-- The World We Make: explicit observation timing and measurement transitions
-- Do not force every series into annual observations.

CREATE TABLE time_metadata (
  time_metadata_id TEXT PRIMARY KEY,
  time_id TEXT NOT NULL REFERENCES time_periods(time_id),
  observation_start TEXT NOT NULL,
  observation_end TEXT,
  publication_date TEXT,
  reference_date TEXT,
  frequency TEXT,
  aggregation_method TEXT,
  seasonality_status TEXT,
  lag_from_event TEXT,
  revision_status TEXT,
  source_vintage TEXT,
  notes TEXT
);

CREATE TABLE measurement_transitions (
  transition_id TEXT PRIMARY KEY,
  variable_id TEXT REFERENCES variables(variable_id),
  place_id TEXT REFERENCES places(place_id),
  effective_date TEXT NOT NULL,
  transition_type TEXT NOT NULL,
  old_definition TEXT,
  new_definition TEXT,
  old_method TEXT,
  new_method TEXT,
  old_boundary_version TEXT,
  new_boundary_version TEXT,
  old_reporting_rule TEXT,
  new_reporting_rule TEXT,
  comparability_effect TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  notes TEXT
);

-- Transition types can include survey redesign, classification change, law change,
-- administrative-system change, boundary revision, denominator change, seasonal
-- adjustment change, estimation-model change and reporting-rule change.

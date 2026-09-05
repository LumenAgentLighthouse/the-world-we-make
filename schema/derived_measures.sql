-- The World We Make: derived measures
-- Derived measures must preserve the inputs, units, time window and caveats.

CREATE TABLE derived_measures (
  derived_measure_id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  definition TEXT NOT NULL,
  formula TEXT,
  input_variables TEXT NOT NULL,
  denominator_definition TEXT,
  geographic_level TEXT,
  time_window TEXT,
  interpretation TEXT,
  known_limitations TEXT,
  causal_status TEXT NOT NULL DEFAULT 'DESCRIPTIVE',
  notes TEXT
);

-- Examples of intentionally non-moralised measures:
-- local production retention
-- local consumption coverage
-- import dependency
-- housing cost burden
-- job-advertised-to-employed ratio
-- recorded-crime-to-victimisation divergence
-- diagnosis-to-incidence divergence
-- cultural exposure-to-adoption gap
-- cultural return-flow intensity
-- vocabulary borrowing rate
-- criminal-justice intensity
-- place engagement concentration
-- population growth versus built-environment growth

-- causal_status examples:
-- DESCRIPTIVE, ASSOCIATIONAL, QUASI_EXPERIMENTAL, CAUSAL_CLAIM_REVIEWED

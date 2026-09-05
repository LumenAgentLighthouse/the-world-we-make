-- The World We Make: measurement metadata extension
-- Use this when a published statistic is a rate, ratio, estimate, index or bounded value.
-- Keep the original observation intact; this table records how it was measured.

CREATE TABLE observation_measurements (
  observation_id TEXT PRIMARY KEY REFERENCES observations(observation_id),
  numerator_value REAL,
  numerator_unit TEXT,
  denominator_value REAL,
  denominator_unit TEXT,
  denominator_definition TEXT,
  estimate_type TEXT,
  lower_bound REAL,
  upper_bound REAL,
  uncertainty_unit TEXT,
  index_base TEXT,
  seasonal_adjustment TEXT,
  inflation_adjustment TEXT,
  population_standardisation TEXT,
  sampling_method TEXT,
  weighting_method TEXT,
  modelled_estimate BOOLEAN,
  national_estimate BOOLEAN,
  methodology_version TEXT,
  definition_version TEXT,
  boundary_version TEXT,
  source_vintage TEXT,
  comparability_notes TEXT
);

-- This prevents common category errors such as treating a percentage as a count,
-- comparing incompatible denominators, or assuming two similarly named indicators
-- were produced with the same population, boundary or methodology.

-- The World We Make: competing security and coercive-capacity providers
-- Record observed provision/control without assuming legitimacy or criminality.

CREATE TABLE security_providers (
  provider_id TEXT PRIMARY KEY,
  place_id TEXT REFERENCES places(place_id),
  provider_type TEXT NOT NULL,
  provider_name_or_code TEXT,
  valid_from TEXT,
  valid_to TEXT,
  function TEXT,
  coverage_scope TEXT,
  funding_source TEXT,
  coercive_capacity TEXT,
  population_reliance TEXT,
  relationship_to_state TEXT,
  relationship_to_other_providers TEXT,
  evidence_type TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  notes TEXT
);

CREATE TABLE security_provider_observations (
  observation_id TEXT PRIMARY KEY,
  provider_id TEXT NOT NULL REFERENCES security_providers(provider_id),
  time_id TEXT REFERENCES time_periods(time_id),
  measure_type TEXT NOT NULL,
  value_numeric REAL,
  unit TEXT,
  category TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  caveat TEXT,
  notes TEXT
);

-- provider_type may include state, police, military, private_security,
-- community, customary, militia, insurgent, criminal, religious, or hybrid.
-- These categories describe observed organisational function; they do not by
-- themselves establish legality, legitimacy, threat, or culpability.

-- The World We Make: explicit system-state / regime-shift layer
-- States are observations or classifications with evidence, not causal explanations.

CREATE TABLE system_states (
  state_id TEXT PRIMARY KEY,
  place_id TEXT REFERENCES places(place_id),
  state_family TEXT NOT NULL,
  state_label TEXT NOT NULL,
  valid_from TEXT,
  valid_to TEXT,
  transition_type TEXT,
  trigger_description TEXT,
  evidence_type TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  alternative_interpretations TEXT,
  notes TEXT
);

CREATE TABLE system_state_dimensions (
  state_dimension_id TEXT PRIMARY KEY,
  state_id TEXT NOT NULL REFERENCES system_states(state_id),
  dimension TEXT NOT NULL,
  category TEXT,
  value_numeric REAL,
  unit TEXT,
  evidence_type TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  notes TEXT
);

-- state_family can cover economic, demographic, political, institutional,
-- ecological, conflict, infrastructure, cultural or mixed system states.
-- Examples include boom, stagnation, decline, reconstruction, displacement,
-- rapid urbanisation, institutional breakdown, consolidation, recovery,
-- fragmentation and regime transition. Avoid treating these labels as universal
-- definitions: preserve the source definition and dimensional evidence.

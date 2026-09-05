-- The World We Make: local cultural production and human capability stocks
-- Capacity is distinct from output, consumption and formal qualification counts.

CREATE TABLE local_cultural_capacity (
  capacity_id TEXT PRIMARY KEY,
  place_id TEXT REFERENCES places(place_id),
  time_id TEXT REFERENCES time_periods(time_id),
  capacity_type TEXT NOT NULL,
  organisation_or_facility_count REAL,
  active_participant_count REAL,
  output_count REAL,
  survival_duration REAL,
  unit TEXT,
  evidence_type TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  caveat TEXT,
  notes TEXT
);

CREATE TABLE human_capability_stocks (
  capability_stock_id TEXT PRIMARY KEY,
  place_id TEXT REFERENCES places(place_id),
  time_id TEXT REFERENCES time_periods(time_id),
  capability_type TEXT NOT NULL,
  capability_level TEXT,
  holder_population REAL,
  active_practitioner_count REAL,
  transmission_rate REAL,
  retirement_or_exit_rate REAL,
  institutional_memory_indicator REAL,
  maintenance_capacity_indicator REAL,
  evidence_type TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  caveat TEXT,
  notes TEXT
);

-- Examples: repair, fabrication, farming, food preservation, construction,
-- machinery maintenance, emergency organisation, local journalism, theatre,
-- music, amateur sport, crafts, language transmission and institutional memory.
-- Formal education/qualification counts should not be treated as substitutes.

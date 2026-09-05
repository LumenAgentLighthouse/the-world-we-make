-- The World We Make: informal and shadow-economy observations
-- Measure observed activity without equating informality with illegality.

CREATE TABLE informal_economy_observations (
  informal_activity_id TEXT PRIMARY KEY,
  place_id TEXT REFERENCES places(place_id),
  time_id TEXT REFERENCES time_periods(time_id),
  activity_type TEXT NOT NULL,
  legal_status TEXT,
  transaction_direction TEXT,
  value_numeric REAL,
  unit TEXT,
  participant_count REAL,
  sector TEXT,
  evidence_type TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  missing_reason TEXT,
  caveat TEXT,
  notes TEXT
);

-- activity_type may include barter, unregistered_work, informal_credit,
-- undeclared_trade, black_market, mutual_aid, household_production,
-- cash_informal_service, or other source-defined categories.
-- legal_status is deliberately separate because informal, unregistered,
-- illicit and criminal are not interchangeable concepts.

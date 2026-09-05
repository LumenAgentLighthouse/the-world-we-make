-- Cultural phenomena are modelled as evolving variants and reciprocal flows.

CREATE TABLE cultural_variant_states (
  state_id TEXT PRIMARY KEY,
  variant_id TEXT NOT NULL REFERENCES cultural_variants(variant_id),
  place_id TEXT REFERENCES places(place_id),
  time_id TEXT REFERENCES time_periods(time_id),
  exposure REAL,
  consumption REAL,
  attention REAL,
  economic_penetration REAL,
  participation REAL,
  adoption REAL,
  local_reproduction REAL,
  hybridisation REAL,
  persistence REAL,
  decline REAL,
  visibility_status TEXT,
  participation_status TEXT,
  commercial_status TEXT,
  notes TEXT
);

CREATE TABLE cultural_variant_relations (
  relation_id TEXT PRIMARY KEY,
  from_variant_id TEXT NOT NULL REFERENCES cultural_variants(variant_id),
  to_variant_id TEXT NOT NULL REFERENCES cultural_variants(variant_id),
  relation_type TEXT NOT NULL,
  start_date TEXT,
  end_date TEXT,
  evidence TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  notes TEXT
);

CREATE TABLE cultural_origins (
  origin_id TEXT PRIMARY KEY,
  variant_id TEXT NOT NULL REFERENCES cultural_variants(variant_id),
  origin_type TEXT NOT NULL,
  place_id TEXT REFERENCES places(place_id),
  country_code TEXT,
  language_code TEXT,
  evidence TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT
);

CREATE TABLE cultural_adoption_events (
  adoption_event_id TEXT PRIMARY KEY,
  variant_id TEXT NOT NULL REFERENCES cultural_variants(variant_id),
  place_id TEXT REFERENCES places(place_id),
  start_date TEXT,
  peak_date TEXT,
  decline_date TEXT,
  adoption_measure TEXT,
  adoption_value REAL,
  unit TEXT,
  evidence_type TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  notes TEXT
);

-- Language words/terms need their own temporal and geographic history.
CREATE TABLE language_term_states (
  state_id TEXT PRIMARY KEY,
  word_id TEXT NOT NULL REFERENCES language_terms(word_id),
  language TEXT,
  place_id TEXT REFERENCES places(place_id),
  time_id TEXT REFERENCES time_periods(time_id),
  frequency REAL,
  frequency_unit TEXT,
  meaning TEXT,
  semantic_distance REAL,
  spelling TEXT,
  pronunciation TEXT,
  grammatical_role TEXT,
  adoption_status TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT
);

CREATE TABLE language_term_relations (
  relation_id TEXT PRIMARY KEY,
  from_word_id TEXT NOT NULL REFERENCES language_terms(word_id),
  to_word_id TEXT REFERENCES language_terms(word_id),
  relation_type TEXT NOT NULL,
  source_language TEXT,
  destination_language TEXT,
  start_date TEXT,
  end_date TEXT,
  semantic_change TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT
);

CREATE TABLE language_borrowing_flows (
  flow_id TEXT PRIMARY KEY,
  source_language TEXT NOT NULL,
  destination_language TEXT NOT NULL,
  time_id TEXT REFERENCES time_periods(time_id),
  domain TEXT,
  new_terms_count REAL,
  adopted_terms_count REAL,
  obsolete_terms_count REAL,
  reciprocal_terms_count REAL,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  notes TEXT
);

-- A return flow is not necessarily the same as the original borrowing.
-- Keep it explicit so altered forms can be traced back through the relation graph.

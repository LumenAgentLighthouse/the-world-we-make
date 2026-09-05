-- The World We Make: local attention and information ecology
-- Separate being discussed from being locally listened to.

CREATE TABLE place_information_observations (
  information_observation_id TEXT PRIMARY KEY,
  place_id TEXT REFERENCES places(place_id),
  time_id TEXT REFERENCES time_periods(time_id),
  platform_or_medium TEXT NOT NULL,
  content_origin_scope TEXT,
  audience_scope TEXT,
  attention_direction TEXT,
  article_or_content_count REAL,
  local_contributor_count REAL,
  external_contributor_count REAL,
  local_attention_share REAL,
  external_attention_share REAL,
  topic_diversity REAL,
  persistence REAL,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  caveat TEXT,
  notes TEXT
);

-- Useful distinction: ABOUT_A_PLACE, BY_A_PLACE, FOR_A_PLACE and WITH_A_PLACE.
-- A place can receive high external attention while having little local reporting,
-- contribution or agenda-setting capacity. These are separate observations, not
-- a single information-desert score.

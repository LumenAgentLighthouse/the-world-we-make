-- Metadata used by the public location explorer.
-- This is navigation/description metadata, not a substitute for observations.

CREATE TABLE explorer_topics (
  topic_id TEXT PRIMARY KEY,
  label TEXT NOT NULL,
  description TEXT NOT NULL,
  icon TEXT,
  sort_order INTEGER DEFAULT 0
);

CREATE TABLE explorer_topic_links (
  topic_id TEXT NOT NULL REFERENCES explorer_topics(topic_id),
  related_topic_id TEXT NOT NULL REFERENCES explorer_topics(topic_id),
  relationship_type TEXT NOT NULL DEFAULT 'RELATED_DOMAIN',
  evidence_status TEXT NOT NULL DEFAULT 'NAVIGATION_ONLY',
  notes TEXT,
  PRIMARY KEY (topic_id, related_topic_id)
);

CREATE TABLE explorer_place_topics (
  place_id TEXT NOT NULL,
  topic_id TEXT NOT NULL REFERENCES explorer_topics(topic_id),
  availability_status TEXT NOT NULL DEFAULT 'UNKNOWN',
  observation_count INTEGER DEFAULT 0,
  last_observed_year INTEGER,
  notes TEXT,
  PRIMARY KEY (place_id, topic_id)
);

-- availability_status values should be interpreted as data coverage states,
-- not claims about the real-world presence or absence of the topic:
-- KNOWN, PARTIALLY_KNOWN, INFERRED, UNKNOWN, UNMEASURABLE.
-- Related-topic links are navigational unless evidence_status explicitly says
-- they represent a documented relationship in the interaction graph.

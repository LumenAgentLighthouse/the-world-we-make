-- The World We Make: general interaction / relationship graph
--
-- The project describes the world as interacting systems, but observations alone
-- do not preserve the edges between those systems. This layer stores directed or
-- undirected relationships independently of any one domain.
--
-- subject_id/object_id are stable identifiers in their respective entity systems;
-- subject_type/object_type declare which system owns the identifier. This is
-- intentionally polymorphic because the graph must connect places, organisations,
-- people/households (where lawful), cultural variants, events, infrastructure and
-- other domain entities without forcing them into one physical table.

CREATE TABLE relationship_types (
  relationship_type_id TEXT PRIMARY KEY,
  name TEXT NOT NULL UNIQUE,
  definition TEXT NOT NULL,
  directionality TEXT NOT NULL DEFAULT 'DIRECTED',
  unit TEXT,
  notes TEXT
);

CREATE TABLE system_relationships (
  relationship_id TEXT PRIMARY KEY,
  subject_type TEXT NOT NULL,
  subject_id TEXT NOT NULL,
  relationship_type_id TEXT NOT NULL REFERENCES relationship_types(relationship_type_id),
  object_type TEXT NOT NULL,
  object_id TEXT NOT NULL,
  valid_from TEXT,
  valid_to TEXT,
  observed_at TEXT,
  strength REAL,
  strength_unit TEXT,
  evidence_type TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  status TEXT NOT NULL DEFAULT 'OBSERVED',
  mechanism TEXT,
  alternative_explanations TEXT,
  caveat TEXT,
  notes TEXT
);

CREATE TABLE relationship_observations (
  relationship_observation_id TEXT PRIMARY KEY,
  relationship_id TEXT NOT NULL REFERENCES system_relationships(relationship_id),
  observation_id TEXT REFERENCES observations(observation_id),
  contribution_type TEXT,
  contribution_weight REAL,
  notes TEXT
);

CREATE TABLE relationship_events (
  relationship_event_id TEXT PRIMARY KEY,
  relationship_id TEXT NOT NULL REFERENCES system_relationships(relationship_id),
  event_id TEXT REFERENCES events(event_id),
  relation_to_event TEXT NOT NULL,
  confidence TEXT,
  notes TEXT
);

-- status should distinguish at least OBSERVED, INFERRED, HYPOTHESISED, CONTRADICTED
-- and HISTORICAL_UNKNOWN rather than silently turning an inferred edge into fact.
-- strength is deliberately optional: many useful relationships are categorical,
-- binary, ordinal or simply known to exist.
-- A relationship may be time-bounded, repeated, reciprocal, branching or cyclic.
-- Do not infer causality from the existence of an edge; causal evidence belongs in
-- the evidence_type/mechanism fields and, where appropriate, the analysis layer.

-- The World We Make: machine-generated analysis record
-- Analysis is a claim about the data, not a fact about the world.

CREATE TABLE agent_analyses (
  analysis_id TEXT PRIMARY KEY,
  created_at TEXT NOT NULL,
  agent_id TEXT,
  dataset_version TEXT,
  question TEXT NOT NULL,
  scope TEXT,
  method TEXT NOT NULL,
  finding TEXT NOT NULL,
  finding_status TEXT NOT NULL,
  evidence_summary TEXT,
  supporting_observations TEXT,
  alternative_explanations TEXT,
  confounders TEXT,
  reverse_causality TEXT,
  selection_bias TEXT,
  measurement_change TEXT,
  missing_data_effect TEXT,
  falsification_test TEXT,
  robustness_notes TEXT,
  causal_language_allowed BOOLEAN NOT NULL DEFAULT FALSE,
  human_review_status TEXT NOT NULL DEFAULT 'UNREVIEWED',
  source_refs TEXT,
  notes TEXT
);

-- finding_status examples:
-- SIGNAL, PATTERN, ANOMALY, ASSOCIATION, HYPOTHESIS, CAUSAL_EVIDENCE, REJECTED
-- human_review_status examples:
-- UNREVIEWED, REVIEWED, ACCEPTED, REVISED, REJECTED
-- Agents must not promote correlation to causation merely by writing stronger prose.

# Decision 0011 — General interaction graph

## Status
Accepted

## Decision

Add a general, provenance-aware interaction graph alongside the long-form observation model.

## Rationale

The project explicitly models the world as interacting systems and asks agents to discover relationships, feedback loops and transitions. The existing observation model preserves measurements well, but an observation is not itself an edge between entities.

Without a general relationship layer, cross-domain connections risk being reconstructed ad hoc by each analysis. That makes direction, timing, persistence, reciprocity and evidence status easy to lose.

The new `schema/interactions.sql` layer therefore treats relationships as first-class objects while leaving domain-specific entities in their existing tables.

## Design principles

- relationships may connect different entity types;
- direction must be explicit where direction matters;
- validity through time must be representable;
- strength is optional and must retain units where numeric;
- observed, inferred and hypothesised relationships must remain distinguishable;
- relationships can be linked to observations and events without turning those links into causal claims;
- reciprocal, cyclic, branching, disappearing and reappearing relationships must remain representable;
- provenance and alternative explanations travel with the edge.

## Consequences

Analyses can operate over both values and topology. This enables network questions such as dependency, diffusion, reciprocity, propagation and structural change without requiring every domain to invent its own incompatible relationship model.

The polymorphic entity references intentionally trade strict SQL foreign-key enforcement for cross-domain flexibility. Domain identifiers remain owned by their respective entity tables, and validation should be handled by ingestion/audit tooling.

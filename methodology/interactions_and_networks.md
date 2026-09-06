# Interactions and networks

## Purpose

The World We Make is intended to represent interacting systems, not just collections of independent measurements. A place, institution, business, cultural form, infrastructure asset or other entity can affect, exchange with, depend on, compete with, imitate, connect to or otherwise relate to another entity.

The interaction layer therefore stores **edges as first-class research objects**.

## Why observations are not enough

A pair of observations can show that two quantities changed together, but they do not preserve the structure of the relationship itself. For example:

- migration can connect an origin and destination;
- a supply chain can connect producer, port and destination;
- a cultural variant can influence, mutate from or return to another variant;
- an employer can connect a workplace to a labour market and a place;
- infrastructure can connect places through transport, energy, water or communications;
- an intervention can connect an organisation, beneficiaries and secondary beneficiaries;
- an event can interrupt or alter an existing relationship.

These structures should remain queryable without forcing every relationship into a domain-specific table.

## Relationship representation

Each relationship has:

- subject entity type and identifier;
- relationship type;
- object entity type and identifier;
- validity interval where known;
- observation time where relevant;
- optional strength and unit;
- evidence type and confidence;
- source provenance;
- status (`OBSERVED`, `INFERRED`, `HYPOTHESISED`, `CONTRADICTED`, `HISTORICAL_UNKNOWN`);
- optional mechanism description;
- alternative explanations and caveats.

The graph is deliberately polymorphic. Entity systems remain responsible for their own identifiers; the relationship layer provides the connective tissue between them.

## Direction and reciprocity

Direction matters. `origin → destination`, `producer → consumer`, `institution → population` and `population → institution` are not interchangeable.

When evidence supports reciprocal relationships, represent both directions rather than assuming symmetry. A relationship may also change direction through time.

## Time

Relationships are often transient. Preserve `valid_from` and `valid_to` where possible rather than treating an observed edge as permanently true.

Repeated observations of the same relationship should remain distinguishable. A relationship can strengthen, weaken, disappear, reappear, split into variants or merge with another relationship.

## Strength

Do not require every edge to have a numeric strength. Useful relationships may be:

- binary (exists / does not exist);
- categorical (trade, migration, influence, dependence);
- ordinal (weak / moderate / strong);
- numeric (volume, frequency, rate, distance, share);
- unknown but evidenced.

If a numeric strength is used, preserve its unit and denominator where relevant.

## Evidence is not causality

An edge is not automatically a causal claim.

`A → B` may mean that A sends something to B, that A is connected to B, that A is documented as influencing B, or that an analysis hypothesises a mechanism. The relationship type and evidence fields must make that distinction explicit.

Causal conclusions should remain in the analysis layer and retain their supporting observations and transformations.

## Events and relationships

Events can create, interrupt, strengthen, weaken or redirect relationships. The `relationship_events` table allows an agent to connect an edge to an event without claiming that the event caused the change.

Example:

`factory closure → employment relationship weakens → migration relationship increases`

The graph should preserve the sequence while leaving causal interpretation open to analysis.

## Discovery use

The interaction graph enables questions that a flat observation model makes difficult:

- Which relationships repeatedly appear before a place enters a new system state?
- Which cultural forms repeatedly return to their apparent source after local mutation?
- Which places become increasingly dependent on a small number of external nodes?
- Which infrastructure failures propagate across otherwise unrelated domains?
- Which relationships disappear from records before the underlying phenomenon disappears?
- Where do reciprocal flows become asymmetric?
- Which apparently unrelated domains share the same network pathways?

The standing rule remains: **the graph should make surprising structure discoverable without encoding the conclusion in advance.**

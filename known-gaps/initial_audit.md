# Initial architecture audit

This is a living list, not a claim that these gaps are the only ones.

## High-priority gaps

### Identity and longitudinal linkage

We need a principled way to link observations belonging to the same anonymised person/household/business/place through time without creating an unrestricted personal-identification system.

### Boundary and topology history

Place boundaries are not static. We need historical polygons, boundary-change events and explicit crosswalk uncertainty.

### Observation provenance graph

Added in `schema/provenance.sql`. Every derived measure should be traceable to inputs and transformations.

### Cultural variant graph

Added in `schema/cultural_language.sql`. A cultural object/practice can mutate, branch, return and hybridise.

### Language evolution

Added in `schema/cultural_language.sql`. Words can be borrowed, altered and borrowed back.

### Denominator registry

Future work should formalise denominators as first-class metadata so percentages cannot silently change their population base.

### Measurement-method transitions

Need a standard way to encode changes in collection method, survey instrument, classification, law, reporting rules and administrative systems.

### Negative evidence

We need methods for representing meaningful absence while distinguishing true absence from failure to observe.

### Selection and survivorship

Historical records disproportionately preserve things that were important, wealthy, institutionalised or documented. Source survival itself may need measurement.

### Temporal resolution mismatch

Annual socioeconomic data, daily weather, election events and minute-scale online activity cannot be casually merged. Transformations need explicit temporal aggregation rules.

### Causal leakage

Derived variables and AI analyses can accidentally encode the hypothesis they are meant to test. Transformations need metadata and review.

### Data licensing and access drift

A dataset may become unavailable, change licence or change methodology. Source versions and archival references should be maintained where lawful.

### Scale mismatch

Country, city, neighbourhood, household and individual observations can produce ecological fallacies if mixed without care.

## Standing instruction

Whenever a new domain is added, ask what it is missing internally before declaring the domain complete.

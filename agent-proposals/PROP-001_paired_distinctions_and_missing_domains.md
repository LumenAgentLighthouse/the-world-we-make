# Agent Audit Proposal: Paired Distinctions and Missing Domains

## Proposal ID
PROP-001

## Date
2026-09-05

## Observation
The project's measurement rules require important concepts to remain distinct, but the initial seed implementation represented several with single proxies.

Required distinctions include:
- Employment: employed people / vacancies / advertised jobs / filled jobs
- Housing: stock / occupied / available
- Crime: occurring / reported / recorded / arrests / prosecutions / convictions
- Health: incidence / prevalence / diagnosis / mortality
- Culture: exposure / consumption / adoption / production / influence

Additional documented domains included education, drugs/alcohol, agriculture/food, transport, environment, technology, place engagement, charities, politics, and businesses.

## Proposed implementation

1. Expand variable catalogues with paired distinctions.
2. Add observations where defensible data exists.
3. Expand geographic coverage.
4. Add missing domain variables and observations.
5. Add directory documentation for sources, geographies, crosswalks, events, analyses, decisions, and changelog.
6. Track resulting gaps in the gap register.

## Evidence

The project's own `variables/README.md`, `schema/README.md`, and core architecture require these distinctions to reduce proxy substitution and preserve discovery potential.

## Expected benefit

Improved semantic integrity, broader discovery surface, better geographic coverage, and lower risk of spurious relationships caused by proxy variables.

## Review status

Implemented in stages; retain this proposal as provenance for the change.

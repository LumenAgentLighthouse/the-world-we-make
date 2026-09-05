# Data release manifest

This repository is an evolving research dataset, not a claim that all domains have equal coverage.

## Current state

- observation seeds: World Bank / OWID-derived global indicators
- source provenance: recorded alongside seed files
- geographic coverage: currently uneven and intentionally not presented as globally complete
- temporal coverage: mixed by indicator; source-specific periods are preserved
- energy intake: source and extraction rules documented; reproducible extracts should pin an upstream commit/date
- automated validation: CSV structural checks run for data changes

## Release principles

A release should state:

1. repository commit
2. included source snapshots or source access dates
3. schema version
4. variable-registry version
5. known gaps and exclusions
6. transformations applied
7. licensing constraints
8. validation status
9. changes from the previous release

A source being public does not automatically mean its data can be redistributed. Third-party licensing remains authoritative.

The project should prefer a small, auditable, reproducible release over an enormous copied archive whose provenance or licensing cannot be maintained.

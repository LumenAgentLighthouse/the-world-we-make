# Source intake: Our World in Data Energy

## Source

- `source_id`: owid_energy
- publisher: Our World in Data
- dataset: Energy Data
- repository: https://github.com/owid/energy-data
- coverage: global locations, annual time series
- access note: dataset is updated regularly; use a pinned release/commit when creating a reproducible extract
- licensing: OWID-produced material is CC BY; third-party source data retain their original terms

## Why it belongs in the project

Energy connects physical, economic, environmental and household systems. Useful indicators include electricity generation and consumption, energy mix, fossil-fuel production, renewables, per-capita consumption, energy intensity and emissions-related measures.

## Intake rule

Do not copy the entire upstream dataset into this repository merely because it is open. Prefer small, documented extracts or release snapshots with the upstream commit/date recorded. Preserve the underlying source attribution for each indicator because the OWID dataset combines multiple upstream sources.

## Known methodological cautions

- annual energy data are not equally complete for every location and year
- regional aggregates are not equivalent to countries
- per-capita indicators depend on the population series used by the source
- source revisions can change historical values
- different energy indicators can have different underlying sources and definitions

Reference: OWID Energy Data README and codebook.

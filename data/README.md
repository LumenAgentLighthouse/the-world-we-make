# Data

This directory contains ingested observations and source manifests.

## First seed release

`seed_world_bank_2024.csv` is a deliberately small, auditable seed dataset using World Bank World Development Indicators. It is not presented as a representative sample of the world; it is the first machine-readable ingestion used to exercise the project's provenance and observation model.

The seed currently contains country-level 2024 observations for population, GDP per capita and life expectancy where the cited World Bank comparison pages expose all three values.

### Rules

- Preserve source definitions and units.
- Never silently convert estimates into facts.
- Keep source identifiers attached to observations.
- Do not mix different vintages or definitions under one variable without recording the distinction.
- Missing observations are preferable to invented values.
- This seed is a starting point, not the finished dataset.

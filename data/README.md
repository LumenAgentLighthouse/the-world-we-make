# Data

This directory contains ingested observations and source manifests.

## Seed releases

`seed_world_bank_2024.csv` is the first deliberately small, auditable seed using World Bank World Development Indicators. It contains country-level 2024 observations for population, GDP per capita and life expectancy.

`seed_global_indicators_2025.csv` adds a second cross-domain seed using current Our World in Data presentations of ILO/World Bank unemployment estimates, World Bank electricity-access data and ITU/World Bank fixed-broadband data. It deliberately spans different years and measurement types rather than pretending that every variable belongs to one common vintage.

`seed_gdp_per_capita_2024_ppp.csv` adds a wider 2024 cross-country GDP-per-capita series in constant international dollars at 2021 prices, using World Bank WDI data as presented by Our World in Data. The current seed is intentionally small but geographically broader than the original seven-country seed.

`seed_expanded_observations.csv` adds a broader country-level connectivity and energy layer: Internet-user share for the latest World Bank/ITU observations and renewable electricity generation share from the current Our World in Data electricity-mix dataset. It covers the expanded country registry and is directly consumable by World Lens.

The seed files are not representative samples of the world. They are ingestion exercises intended to prove that observations can be stored with source, definition, unit, time, geography, uncertainty and methodological caveats intact before scaling collection.

## Rules

- Preserve source definitions and units.
- Never silently convert estimates into facts.
- Keep source identifiers attached to observations.
- Do not mix different vintages or definitions under one variable without recording the distinction.
- Missing observations are preferable to invented values.
- Distinguish counts from rates and subscriptions from unique users.
- Preserve nearest-year substitutions and modeled estimates as methodological metadata rather than hiding them.
- Keep third-party licensing and attribution requirements with source metadata.
- The seed is a starting point, not the finished dataset.

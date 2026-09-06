# Data

This directory contains ingested observations and source manifests.

## Seed releases

`seed_world_bank_2024.csv` is the first deliberately small, auditable seed using World Bank World Development Indicators. It contains country-level 2024 observations for population, GDP per capita and life expectancy.

`seed_global_indicators_2025.csv` adds a second cross-domain seed using current Our World in Data presentations of ILO/World Bank unemployment estimates, World Bank electricity-access data and ITU/World Bank fixed-broadband data. It deliberately spans different years and measurement types rather than pretending that every variable belongs to one common vintage.

`seed_gdp_per_capita_2024_ppp.csv` adds a wider 2024 cross-country GDP-per-capita series in constant international dollars at 2021 prices, using World Bank WDI data as presented by Our World in Data. The current seed is intentionally small but geographically broader than the original seven-country seed.

`seed_expanded_observations.csv` adds a broader country-level connectivity and energy layer: Internet-user share for the latest World Bank/ITU observations and renewable electricity generation share from the current Our World in Data electricity-mix dataset. It covers the expanded country registry and is directly consumable by World Lens.

`cultural_archive_sources.csv` is the source register for the expanded cultural/archive layer. It records where information came from, coverage, access method, rights, known biases and intended use.

`cultural_archive_seed_observations.csv` contains a deliberately small set of verified archival/cultural observations from those sources. These include archive scale, temporal anchors, catalogue structure and concrete cultural-record counts where the source itself publishes them. They are not presented as measurements of society unless the source actually supports that interpretation.

`cultural_archive_ingestion_queue.csv` lists the next record-level extraction targets, join keys, intended files, access method and any authentication/rights blockers. It is the bridge from verified source discovery to larger machine-readable ingestion.

The seed files are not representative samples of the world. They are ingestion exercises intended to prove that observations can be stored with source, definition, unit, time, geography, uncertainty and methodological caveats intact before scaling collection.

## Provenance rule for archival material

Every extracted archival/cultural record should retain its original source identifier, source URL or stable identifier, collection title, publication/creation date where known, geographic references, extraction method, OCR/transcription confidence, rights statement and any relevant selection bias. Archive attention, catalogue presence or intelligence reporting must not silently become a claim that an underlying real-world event occurred.

## Rules

- Preserve source definitions and units.
- Never silently convert estimates into facts.
- Keep source identifiers attached to observations.
- Do not mix different vintages or definitions under one variable without recording the distinction.
- Missing observations are preferable to invented values.
- Distinguish counts from rates and subscriptions from unique users.
- Preserve nearest-year substitutions and modeled estimates as methodological metadata rather than hiding them.
- Keep third-party licensing and attribution requirements with source metadata.
- Treat archive/catalogue counts as measurements of the archive, not automatically measurements of society.
- The seed is a starting point, not the finished dataset.

# Schema

The project uses a long-form, provenance-preserving model. A single wide table is deliberately avoided because observations vary by place, time, source, definition, frequency and certainty.

## Core entities

### Places
`place_id`, `country`, `admin1`, `admin2`, `place_name`, `place_type`, `latitude`, `longitude`, `population`, `boundary_version`, `urban_rural`, `notes`

### Time
`time_id`, `period_start`, `period_end`, `year`, `month`, `quarter`, `season`, `data_frequency`

### Variables
`variable_id`, `domain`, `variable_name`, `definition`, `unit`, `preferred_frequency`, `sensitivity`, `causal_role`, `known_confounders`, `notes`

### Observations
`observation_id`, `place_id`, `time_id`, `variable_id`, `value`, `unit`, `category`, `sub_category`, `evidence_type`, `source_id`, `confidence`, `status`, `missing_reason`, `caveat`, `notes`

### Sources
`source_id`, `publisher`, `dataset_name`, `url`, `access_date`, `geographic_coverage`, `temporal_coverage`, `method`, `license`, `known_biases`, `definition_notes`

## Domain layers

The schema is expected to expand through linked domain tables rather than forcing every domain into the generic observation table. Initial domains include:

- population and migration
- fertility and mortality
- households and housing
- employment and job listings
- education and career trajectories
- health and medical conditions
- healthcare services, utilisation and costs
- drugs and alcohol
- crime, policing and criminal justice
- economy, markets and household finances
- property and built environment
- businesses and organisations
- charities and interventions
- government, institutions, law and political behaviour
- transport and movement
- environment, weather, ecology and energy
- agriculture, food, production and trade
- technology and innovation
- information, news and search behaviour
- culture, media and language
- place engagement and collective attention
- place outputs
- cross-border cultural flows

## Events

`event_id`, `place_id`, `start_date`, `end_date`, `event_type`, `description`, `scale`, `actor`, `population_affected`, `expected_effect`, `direct_effect`, `observed_effect`, `source_id`, `confidence`

Events are change points, not automatic causal explanations.

## Cultural flows

Cultural phenomena require a temporal network model. A useful conceptual sequence is:

`origin → encounter → exposure → adoption → localisation → mutation → re-export → re-adoption → further mutation → decline/transformation/revival`

Represent variants separately where a cultural form changes materially between locations or periods.

## Language evolution

Track words and expressions as moving cultural objects where evidence permits: emergence, origin, borrowing, destination adoption, geographic spread, semantic change, grammatical adaptation, derivatives, hybrid terms, reciprocal borrowing, obsolescence and revival.

## Measurement discipline

Always distinguish concepts that look similar but are not equivalent, including:

- population vs households
- employment vs jobs available vs jobs advertised vs jobs filled
- housing stock vs occupied vs available housing
- crime occurring vs reported vs recorded vs prosecuted
- drug use vs drug seizures
- disease incidence vs diagnosis vs prevalence vs mortality
- search interest vs consumption
- attention vs physical presence
- party identity vs observed political behaviour
- cultural origin vs ownership vs production location vs language vs influence
- population growth vs physical growth

## Provenance

An observation without a usable provenance trail should not silently acquire the status of a measured fact. Preserve source, method, definition, uncertainty, coverage and known limitations.

## Status

Use:

`KNOWN`, `PARTIALLY_KNOWN`, `INFERRED`, `UNKNOWN`, `UNMEASURABLE`

These describe evidence status, not whether a phenomenon is important.
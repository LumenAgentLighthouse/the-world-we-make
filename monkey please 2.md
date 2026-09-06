# Monkey Please 2 - compiled docs (topics, methodology, crosswalks, events, analyses, agent-proposals, sources, geographies, decisions, changelog)


## FILE: topics\biodiversity_ecosystem_services\README.md
```
# Biodiversity and Ecosystem Services

This directory documents biodiversity, species populations, and ecosystem services as a core domain of The World We Make.

## Purpose

Biodiversity loss and ecosystem degradation are longitudinal phenomena that require tracking across decades and centuries. The project's intention — to give AI enough of the world to surprise us — requires ecological data alongside social data, because ecological changes interact with human populations, economies, and settlements.

## Core entities

- Species populations (by taxon, region, time)
- Habitat extent and condition
- Ecosystem services (provisioning, regulating, cultural, supporting)
- Biodiversity indices (species richness, Shannon index, Simpson index)
- Threat and conservation status
- Invasive species spread
- Genetic diversity measures

## Key variables to track

| Variable | Unit | Frequency | Notes |
| --- | --- | --- | --- |
| Species population count | count | annual | Do not substitute occurrence for abundance |
| Habitat extent | area | decennial | Do not substitute satellite-derived for ground-truthed |
| Species richness | species_count | annual | Do not substitute richness for evenness |
| IUCN threat status | category | annual | Do not substitute status for population trend |
| Invasive species count | count | annual | Do not substitute detection for establishment |

## Paired distinctions

- Species abundance vs species occurrence
- Habitat extent vs habitat condition
- Protected area coverage vs protected area effectiveness
- Species richness vs ecosystem health
- Native species count vs invasive species count

## Data quality states

- `KNOWN` — population surveys with rigorous methods
- `PARTIALLY_KNOWN` — estimates from remote sensing or modelling
- `INFERRED` — derived from habitat proxies
- `UNKNOWN` — no information
- `UNMEASURABLE` — theoretically relevant but no defensible observation

## Standing question

> What ecological changes are we not recording because we only measure species presence and not population dynamics?
```


## FILE: topics\digital_infrastructure\README.md
```
# Digital Infrastructure and Platform Power

This directory documents the underlying digital infrastructure and platform concentration that shapes information flows, economic activity, and social interaction.

## Purpose

The project studies digital phenomena but must also track the infrastructure that enables them. Platform concentration, broadband quality, and digital infrastructure access determine who can participate in digital information flows, economic activity, and social networks — and who cannot.

## Core entities

- Broadband quality and speed
- Mobile network coverage and quality
- Data center and cloud computing capacity
- Platform concentration and market share
- Internet exchange points and connectivity
- Digital infrastructure investment

## Key variables to track

| Variable | Unit | Frequency | Notes |
| --- | --- | --- | --- |
| Broadband speed | Mbps | annual | Do not substitute availability for quality |
| Mobile network coverage | percent | annual | Do not substitute coverage for signal quality |
| Platform market share | percent | annual | Do not substitute user count for market power |
| Data center capacity | MW | annual | Do not substitute presence for utilisation |
| Internet exchange points | count | annual | Do not substitute count for traffic throughput |
| Digital infrastructure investment | USD | annual | Do not substitute investment for access |

## Paired distinctions

- Broadband availability vs broadband quality
- Platform user count vs platform market power
- Data center capacity vs data centre utilisation
- Mobile coverage vs mobile network quality
- Internet presence vs digital infrastructure capacity

## Standing question

> Are we tracking the infrastructure that shapes digital life, or only the digital activity itself?
```


## FILE: topics\disaster_risk_resilience\README.md
```
# Disaster Risk and Resilience

This directory documents disaster preparedness, resilience infrastructure, and recovery capacity as a core domain.

## Purpose

The project tracks disaster events as change points, but it must also track preparedness and resilience — the factors that determine how communities respond to and recover from shocks. Resilience is a longitudinal capacity that interacts with economic development, governance, infrastructure, and social capital.

## Core entities

- Disaster preparedness and early warning systems
- Resilience infrastructure (levees, flood defenses, earthquake-resistant buildings)
- Recovery capacity and speed
- Disaster risk indices and models
- Insurance coverage for disasters
- Community coping mechanisms

## Key variables to track

| Variable | Unit | Frequency | Notes |
| --- | --- | --- | --- |
| Early warning coverage | percent | annual | Do not substitute warning availability for effectiveness |
| Resilience infrastructure index | index | annual | Do not substitute infrastructure presence for quality |
| Recovery time | days | per event | Do not substitute speed for completeness |
| Disaster risk index | index | annual | Do not substitute hazard exposure for actual risk |
| Disaster insurance penetration | percent | annual | Do not substitute insurance availability for coverage |
| Community coping capacity | score | survey | Self-reported; do not substitute government capacity for community resilience |

## Paired distinctions

- Disaster preparedness vs disaster response
- Resilience infrastructure presence vs resilience infrastructure quality
- Recovery speed vs recovery completeness
- Hazard exposure vs actual risk
- Government resilience vs community resilience

## Standing question

> Are we tracking how communities absorb shocks, or only the shocks themselves?
```


## FILE: topics\fertility_ageing\README.md
```
# Fertility and Ageing Transitions

This directory documents fertility rates, population ageing, and demographic transitions as a core domain.

## Purpose

The project tracks population totals and life expectancy but must also capture the demographic dynamics that shape societies — fertility transitions, population ageing, and cohort structures. These are longitudinal processes that interact with labour markets, healthcare systems, housing, and political behaviour.

## Core entities

- Fertility rates (total fertility rate, age-specific fertility rates)
- Population age structure and cohort sizes
- Dependency ratios (young and old)
- Marriage and partnership patterns
- Migration flows (net migration, refugee flows, internal migration)
- Population projections and demographic forecasts

## Key variables to track

| Variable | Unit | Frequency | Notes |
| --- | --- | --- | --- |
| Total fertility rate | births_per_woman | annual | Do not substitute birth count for fertility rate |
| Age-specific fertility rate | births_per_woman | annual | Age-specific; do not substitute for total fertility |
| Old-age dependency ratio | ratio | annual | Do not substitute life expectancy for ageing index |
| Youth dependency ratio | ratio | annual | Do not substitute youth population share for dependency |
| Net migration rate | per_1000 | annual | Do not substitute immigration for net migration |
| Median age | years | annual | Do not substitute average age for median age |

## Paired distinctions

- Fertility rate vs birth count
- Population ageing vs life expectancy
- Immigration vs emigration vs net migration
- Youth dependency vs old-age dependency
- Population growth vs physical growth
- Total fertility vs completed fertility

## Standing question

> Are we tracking the demographic processes that shape populations, or only the population outcomes?
```


## FILE: topics\financial_inclusion\README.md
```
# Financial Inclusion and Exclusion

This directory documents access to financial services, banking, credit, and digital payments as a core domain.

## Purpose

Financial inclusion is a critical determinant of economic participation, household resilience, and poverty reduction. The project requires tracking both inclusion and exclusion because the boundary between the two is porous and varies across populations, geographies, and time periods.

## Core entities

- Banking account ownership and usage
- Credit access and creditworthiness
- Digital payment and mobile money usage
- Informal financial mechanisms (rotating savings, informal lending)
- Financial literacy and capability
- Insurance coverage and penetration

## Key variables to track

| Variable | Unit | Frequency | Notes |
| --- | --- | --- | --- |
| Account ownership | percent | survey | Do not substitute account ownership for active usage |
| Digital payment usage | percent | annual | Do not substitute mobile money for digital payment use |
| Credit access | percent | survey | Do not substitute credit supply for credit demand |
| Insurance penetration | percent | annual | Do not substitute policy count for coverage depth |
| Informal financial participation | percent | survey | Do not substitute formal exclusion for informal activity |
| Financial literacy index | score | survey | Do not substitute education for financial capability |

## Paired distinctions

- Account ownership vs account usage
- Formal credit access vs credit demand
- Insurance penetration vs insurance depth
- Digital payment availability vs digital payment use
- Financial literacy vs financial inclusion

## Standing question

> Are we measuring who can participate in the financial system, or only who has a bank account?
```


## FILE: topics\mental_health_wellbeing\README.md
```
# Mental Health and Subjective Wellbeing

This directory documents mental health prevalence, subjective wellbeing measures, and psychological welfare as a core domain.

## Purpose

The project tracks mortality and physical health but must also capture the psychological dimension of human experience. Mental health conditions, subjective wellbeing, and life satisfaction are longitudinal phenomena with distinct trajectories, causes, and consequences that interact with economic, social, and environmental conditions.

## Core entities

- Mental health prevalence (depression, anxiety, PTSD, substance use disorders)
- Subjective wellbeing (life satisfaction, positive affect, negative affect)
- Suicide rates and self-harm incidence
- Psychological wellbeing indices (e.g., WHO-5, PERMA)
- Access to mental health services
- Mental health treatment outcomes

## Key variables to track

| Variable | Unit | Frequency | Notes |
| --- | --- | --- | --- |
| Depression prevalence | percent | annual | Do not substitute diagnosis for prevalence |
| Anxiety prevalence | percent | annual | Do not substitute treatment for prevalence |
| Life satisfaction | scale | annual | Self-reported; do not substitute GDP for wellbeing |
| Suicide rate | per_100000 | annual | Do not substitute attempts for completed suicides |
| Mental health service access | percent | annual | Do not substitute service availability for access |
| Psychological wellbeing index | index | annual | Composite; do not substitute single measures for holistic assessment |

## Paired distinctions

- Depression prevalence vs depression diagnosis
- Subjective wellbeing vs objective wellbeing indicators
- Mental health treatment access vs mental health treatment utilisation
- Suicide attempts vs completed suicide
- Psychological wellbeing vs life satisfaction

## Standing question

> Are we capturing the psychological dimension of human experience, or only the physical?
```


## FILE: topics\social_capital_trust\README.md
```
# Social Capital and Trust

This directory documents social cohesion, trust networks, and community bonds as a core domain.

## Purpose

Social capital is a critical determinant of community resilience, economic performance, and democratic governance, yet it remains one of the most difficult concepts to measure consistently. The project requires longitudinal tracking of social capital because its erosion or growth precedes and predicts many other social changes.

## Core entities

- Social trust (interpersonal and institutional)
- Community cohesion and belonging
- Civic engagement and participation
- Voluntary association membership
- Reciprocity and mutual aid networks
- Social network density and structure

## Key variables to track

| Variable | Unit | Frequency | Notes |
| --- | --- | --- | --- |
| Interpersonal trust | percent | survey | Do not substitute institutional trust for interpersonal trust |
| Institutional trust | percent | survey | Do not substitute trust for satisfaction with services |
| Voluntary association membership | count_per_capita | annual | Do not substitute organisation count for participation |
| Civic participation | percent | annual | Do not substitute voting for broader civic engagement |
| Mutual aid participation | count | annual | Do not substitute formal services for informal support |
| Community belonging | scale | survey | Self-reported; do not substitute demographic proximity for belonging |

## Paired distinctions

- Interpersonal trust vs institutional trust
- Formal civic participation vs informal mutual aid
- Organisational membership vs active participation
- Community belonging vs community size
- Social network density vs social network size

## Standing question

> Are we measuring the bonds that hold communities together, or only the institutions they interact with?
```


## FILE: topics\water_resources\README.md
```
# Water Resources and Sanitation

This directory documents water availability, quality, usage, and sanitation infrastructure as a core domain.

## Purpose

Water is a critical resource that underpins all human activity — health, agriculture, industry, and ecosystems. The project requires dedicated water domain tracking because water scarcity, quality degradation, and sanitation access interact with population, health, agriculture, and economic outcomes in ways that are not captured by aggregated environment variables.

## Core entities

- Water availability (renewable internal resources, per capita)
- Water quality (contamination levels, safe drinking water access)
- Water usage (agricultural, industrial, domestic)
- Sanitation infrastructure coverage
- Water stress and scarcity indices
- Transboundary water flows and agreements
- Groundwater depletion rates

## Key variables to track

| Variable | Unit | Frequency | Notes |
| --- | --- | --- | --- |
| Renewable water resources | cubic_metres_per_person | annual | Do not substitute total water for per capita availability |
| Safe drinking water access | percent | annual | Do not substitute infrastructure for actual access |
| Sanitation coverage | percent | annual | Do not substitute latrine availability for safe sanitation |
| Water stress index | index | annual | Do not substitute water scarcity for water stress |
| Groundwater depletion | cubic_metres | annual | Do not substitute surface water for groundwater |
| Water quality index | index | annual | Do not substitute single contaminant measures for overall quality |

## Paired distinctions

- Water availability vs water access
- Water infrastructure coverage vs actual water use
- Sanitation access vs sanitation quality
- Surface water vs groundwater
- Water stress vs water scarcity

## Standing question

> Are we tracking the water that sustains life, or only the water that is visible?
```


## FILE: methodology\agent_communication_protocols.md
```
# Agent Communication Protocols

This directory documents how autonomous AI agents should communicate findings, resolve disagreements, and coordinate audits within The World We Make project.

## Purpose

The project is designed to be improved by autonomous AI agents, but agents working independently may produce conflicting findings, duplicate analyses, or miss coordination opportunities. This document defines the protocols for how agents should communicate, share findings, and resolve disagreements.

## Communication principles

1. **Findings must be auditable**: Every finding must include the data sources, variables, time periods, and places examined
2. **Disagreements must be preserved**: When agents disagree, both perspectives must remain documented
3. **Coordination must be explicit**: Agents should announce when they are investigating overlapping questions
4. **Null results must be shared**: Absence of expected patterns is as important as discovery
5. **Confidence must be stated**: Every finding must include an evidence status label

## Finding format

Every agent finding should document:

- **Finding ID**: Unique identifier (e.g., `FIND-001`)
- **Agent ID**: Identifier of the agent that produced the finding
- **Date**: When the finding was produced
- **Question investigated**: What was being examined
- **Data examined**: Which variables, places, and time periods
- **Finding**: What was found
- **Evidence status**: KNOWN, PARTIALLY_KNOWN, INFERRED, UNKNOWN, UNMEASURABLE
- **Confidence level**: HIGH, MEDIUM, LOW
- **Alternative explanations**: What else could explain the finding
- **Falsification test**: What observation would falsify the finding
- **Additional data needed**: What data would discriminate between explanations
- **Review status**: PENDING, REVIEWED, ACCEPTED, REJECTED

## Coordination protocol

1. **Announce**: Before investigating a question, agents should announce the question to avoid duplication
2. **Share**: After investigating, agents should share findings including null results
3. **Resolve**: When agents disagree, both perspectives are preserved and a human or higher-level agent is consulted
4. **Escalate**: When findings require human judgement, agents escalate rather than resolving autonomously

## Disagreement resolution

1. Preserve both perspectives with their evidence status and reasoning
2. Identify the source of disagreement (data, definition, method, interpretation)
3. Determine whether the disagreement reflects real heterogeneity or methodological artefact
4. If the disagreement reflects real heterogeneity, preserve it as data
5. If the disagreement reflects methodological artefact, document the correction and re-verify

## Standing question

> Are we coordinating agent investigations, or are agents duplicating and contradicting each other?
```


## FILE: methodology\concept_versioning.md
```
# Concept Versioning

This directory documents how to track changes in variable definitions, schemas, and conceptual frameworks over time.

## Purpose

The project requires tracking how definitions change over time and across sources because apparent trends may be measurement artefacts caused by definitional changes. Concept versioning ensures that when a variable's definition, unit, or boundary changes, this is preserved as metadata rather than silently applied.

## Why concept versioning matters

1. Apparent trends may be definitional changes, not real changes
2. Cross-source comparisons require understanding what each source meant by the same term
3. Historical continuity requires knowing when and how concepts were redefined
4. Replication requires exact specification of what was measured at what point in time

## Concept record format

Every concept version change should document:

- **Concept ID**: Unique identifier for the concept
- **Concept name**: The name of the concept
- **Version**: Semantic version (MAJOR.MINOR.PATCH)
- **Date**: When the version took effect
- **Change type**: ADDED, MODIFIED, DEPRECATED, RENAMED
- **Previous version**: Link to the previous concept version
- **Definition change**: What changed in the definition
- **Unit change**: What changed in the unit or measurement basis
- **Boundary change**: What changed in geographic or population boundaries
- **Impact assessment**: How the change affects historical comparisons
- **Crosswalk**: If available, a mapping from previous to new definition

## Version change types

- **MAJOR**: Definition, unit, or boundary changed in a way that breaks historical comparability
- **MINOR**: Definition refined but historical comparability preserved through crosswalk
- **PATCH**: Clarification or metadata update with no substantive change

## Versioning rules

1. Never silently change a definition — always create a new version
2. Always document the reason for the change
3. Always provide a crosswalk from the previous version if possible
4. Never backdate changes — record them as of the date they took effect
5. Preserve all previous versions and their metadata
6. Mark deprecated versions as deprecated rather than deleting them

## Example

### Version 1.0.0 — Initial definition
- Definition: "Share of the labour force without work but actively looking for work"
- Unit: percent
- Boundary: Labour force definition per ILO standards
- Date: 2026-01-01

### Version 1.1.0 — Minor refinement
- Definition: "Share of the labour force without work but actively looking for work and available to start soon"
- Unit: percent (unchanged)
- Boundary: Added "available to start soon" criterion
- Date: 2026-06-01
- Impact: Minor; crosswalk available from ILO modelled estimates

### Version 2.0.0 — Major change
- Definition: "Share of the working-age population that is employed" (replaced unemployment rate with employment rate)
- Unit: percent (unchanged)
- Boundary: Changed from labour force to working-age population
- Date: 2027-01-01
- Impact: Major; no direct crosswalk; historical comparisons require bridging

## Standing question

> Are we tracking how our concepts change over time, or only the data we measure with them?
```


## FILE: crosswalks\domain_specific_crosswalks.md
```
# Crosswalks — Domain-Specific Mappings

This directory contains crosswalk documentation for domain-specific definitions and measurement systems.

## Purpose

Different sources use different definitions, units, and boundaries for the same concepts. This catalogue documents how to map between incompatible definitions while preserving provenance and uncertainty.

## Crosswalk design rules

1. A crosswalk must document the source and target definitions
2. A crosswalk must document the transformation method
3. A crosswalk must document assumptions and limitations
4. A crosswalk must state its confidence level
5. A crosswalk must document what would falsify its assumptions
6. A crosswalk must be versioned and dated
7. A crosswalk must preserve the original source metadata

## Domain-specific crosswalks

### Education crosswalk
- **Source**: UNESCO Institute for Statistics
- **Target**: World Bank Education Statistics
- **Issue**: Different definitions of "enrollment" (gross vs net)
- **Method**: Apply gross-to-net adjustment factor from source metadata
- **Confidence**: MEDIUM
- **Falsification**: Does the adjusted figure match independent household survey estimates?

### Health crosswalk
- **Source**: WHO Global Health Observatory
- **Target**: World Bank Health Nutrition and Population Statistics
- **Issue**: Different cause-of-death coding systems (ICD-10 vs ICD-11)
- **Method**: Crosswalk tables provided by WHO; preserve both versions
- **Confidence**: HIGH
- **Falsification**: Do the coded causes match hospital discharge data?

### Employment crosswalk
- **Source**: ILO Modelled Estimates
- **Target**: National Labour Force Surveys
- **Issue**: Different labour force definitions (ILO vs national statistical agency)
- **Method**: Document both definitions; preserve both measures as separate variables
- **Confidence**: MEDIUM
- **Falsification**: Do the two measures converge with updated survey data?

### Geographic crosswalk
- **Source**: ISO 3166-1 numeric codes
- **Target**: Administrative division codes (varies by country)
- **Issue**: ISO codes cover countries; administrative codes subdivide them
- **Method**: Use country-level aggregation from administrative data
- **Confidence**: HIGH
- **Falsification**: Do the aggregated figures match the original administrative data?

### Temporal crosswalk
- **Source**: Nearest-year substitution for indicators where 2024 is unavailable
- **Target**: 2024 reference year
- **Issue**: Data from different years may reflect different conditions
- **Method**: Document the substitution year; preserve both source year and reference year
- **Confidence**: MEDIUM
- **Falsification**: Does the substituted data point deviate significantly from the trend?

### Currency crosswalk
- **Source**: Local currency values
- **Target**: USD or international dollars
- **Issue**: Exchange rate fluctuations vs purchasing power differences
- **Method**: Use World Bank conversion factors; document whether exchange rate or PPP is used
- **Confidence**: HIGH
- **Falsification**: Do the converted values match independent price comparison studies?

## Crosswalk file format

Every crosswalk file should contain:

- Crosswalk ID
- Source domain and target domain
- Source definition with full metadata
- Target definition with full metadata
- Transformation method
- Confidence level
- Assumptions
- Limitations
- Falsification question
- Date created and last verified
- Status (ACTIVE, SUPERSEDED, ARCHIVED)

## Standing question

> Are we bridging incompatible definitions, or are we pretending they are the same?
```


## FILE: crosswalks\README.md
```
# Crosswalks

This directory documents mappings between incompatible definitions, geographies, and measurement systems.

## Purpose

The project must preserve native definitions and geographic boundaries. When harmonisation is needed, it must be done through documented crosswalks — not by silently converting or erasing differences.

## Crosswalk design rules

1. A crosswalk must document the source and target definitions
2. A crosswalk must document the transformation method
3. A crosswalk must document assumptions and limitations
4. A crosswalk must preserve provenance
5. A crosswalk must state its confidence level
6. A crosswalk must be versioned and dated
7. A crosswalk must document what would falsify its assumptions

## Types of crosswalks

### Definition crosswalks
Mapping between different definitions of the same concept (e.g., different countries' definitions of "unemployment", "poverty line", or "urban area").

### Geographic crosswalks
Mapping between different geographic boundaries (e.g., administrative divisions that changed over time, statistical areas that don't align with political boundaries).

### Temporal crosswalks
Mapping between different time periods or vintages (e.g., a variable defined differently in 2010 vs 2020).

### Unit crosswalks
Mapping between different units of measurement (e.g., converting between local currencies, different population definitions).

## Crosswalk format

Every crosswalk document should contain:

- **Crosswalk ID**: Unique identifier (e.g., `CW-001`)
- **Source domain**: What is being mapped from
- **Target domain**: What is being mapped to
- **Source definition**: Original definition with units and boundaries
- **Target definition**: Target definition with units and boundaries
- **Transformation method**: How the mapping is performed
- **Confidence**: HIGH, MEDIUM, LOW, or UNKNOWN
- **Assumptions**: What assumptions underlie the crosswalk
- **Limitations**: Known limitations of the crosswalk
- **Falsification question**: What would show this crosswalk is wrong?
- **Date created**: When the crosswalk was created
- **Last verified**: When the crosswalk was last validated
- **Status**: ACTIVE, SUPERSEDED, or ARCHIVED

## Current crosswalks

The project currently uses the following documented crosswalks:

- World Bank WDI to Our World in Data presentations
- ILO modelled estimates to national labour-force survey estimates
- Nearest-year substitution for indicators where the reference year is unavailable

## Adding new crosswalks

When creating a new crosswalk:
1. Document the source and target definitions fully
2. State the transformation method explicitly
3. Record the confidence level
4. Document what would falsify the crosswalk
5. Store the crosswalk in this directory

## Standing question

> What incompatible definitions, geographies, and measurement systems are we not bridging?
```


## FILE: events\README.md
```
# Events

This directory contains time-stamped events and change points relevant to the dataset.

## Purpose

Events serve as explicit change points that agents can connect to subsequent observations without assuming causality. They provide context for temporal patterns in the data.

## Event types

- **Economic**: financial crises, major employer arrivals/departures, trade policy changes, currency changes
- **Political**: elections, regime changes, laws passed, tax changes, sanctions
- **Social**: pandemics, disasters, migration shocks, refugee influx, cultural events
- **Infrastructure**: hospital/school openings or closures, road construction, port developments
- **Environmental**: natural disasters, climate events, resource discoveries, pollution events
- **Technological**: major innovations, internet/submarine cable deployments, regulatory changes
- **Administrative**: boundary changes, reorganisations, new statistical frameworks
- **Military**: conflicts, peace agreements, demobilisations
- **Cultural**: major cultural shifts, language policy changes, significant migrations

## Event record format

Every event should document:

- **event_id**: Unique identifier
- **place_id**: Location of the event
- **start_date**: When the event began
- **end_date**: When the event ended (if applicable)
- **event_type**: Category from the list above
- **description**: What happened
- **scale**: Magnitude of the event
- **actor/category**: Who or what caused it
- **affected_population**: Who was affected
- **expected_effect**: What was expected to happen
- **direct_effect**: What directly resulted
- **observed_effect**: What was actually observed
- **source_id**: Source of the event data
- **confidence**: Evidence status (KNOWN, PARTIALLY_KNOWN, INFERRED, UNKNOWN, UNMEASURABLE)

## Event principles

1. Events are **not** causal explanations — they are change points
2. Events must be documented with their uncertainty
3. Events should link to subsequent observations without assuming causality
4. Events should preserve the distinction between expected, direct, and observed effects
5. Events should be versioned and auditable

## Current events

See the `seed_world_bank_2024.csv` and `seed_global_indicators_2025.csv` for observation-level data. This directory will contain standalone event records as the project grows.

## Standing question

> What important change points are we not recording?
```


## FILE: events\sample_events.csv
```
# Events — Sample Event Records

This directory contains sample event records for the event layer.

## Purpose

Events serve as explicit change points that agents can connect to subsequent observations without assuming causality. These sample events demonstrate the event record format.

## Event record format

Every event should follow the format documented in `events/README.md`:
- event_id, place_id, start_date, end_date, event_type, description, scale, actor, affected_population, expected_effect, direct_effect, observed_effect, source_id, confidence

## Sample events

### E-001: COVID-19 Pandemic
- **event_id**: E-001
- **place_id**: GLOBAL
- **start_date**: 2020-01-01
- **end_date**: 2023-05-01
- **event_type**: pandemic
- **description**: Global COVID-19 pandemic caused by SARS-CoV-2
- **scale**: global
- **actor**: SARS-CoV-2 virus
- **affected_population**: Global population
- **expected_effect**: Disruption to healthcare, economy, education, and social systems
- **direct_effect**: Healthcare system overload, economic contraction, school closures
- **observed_effect**: Changes in unemployment, mortality, education enrollment, and mobility patterns
- **source_id**: WHO, World Bank, OWID
- **confidence**: KNOWN

### E-002: 2008 Financial Crisis
- **event_id**: E-002
- **place_id**: USA, GBR, DEU, FRA, and other OECD countries
- **start_date**: 2008-09-01
- **end_date**: 2014-12-31
- **event_type**: financial_crisis
- **description**: Global financial crisis triggered by US subprime mortgage collapse
- **scale**: national/global
- **actor**: Financial sector, regulatory failures
- **affected_population**: OECD countries primarily, with global spillover
- **expected_effect**: Economic contraction, employment decline, housing market collapse
- **direct_effect**: GDP contraction, unemployment spike, banking sector failures
- **observed_effect**: Long-term unemployment, GDP per capita decline, housing stock changes
- **source_id**: World Bank, IMF
- **confidence**: KNOWN

### E-003: COVID-19 School Closures
- **event_id**: E-003
- **place_id**: USA
- **start_date**: 2020-03-01
- **end_date**: 2021-09-01
- **event_type**: education
- **description**: Nationwide school closures due to COVID-19 pandemic
- **scale**: national
- **actor**: Government health authorities
- **affected_population**: School-age children and youth
- **expected_effect**: Learning loss, enrollment changes
- **direct_effect**: Shift to remote learning, enrollment decline
- **observed_effect**: Changes in school enrollment rates, potential long-term education impacts
- **source_id**: UNESCO, World Bank
- **confidence**: PARTIALLY_KNOWN

### E-004: Georgia Boundary Change (hypothetical)
- **event_id**: E-004
- **place_id**: GEO
- **start_date**: 2024-01-01
- **end_date**: 2024-06-30
- **event_type**: administrative
- **description**: Administrative boundary reorganisation affecting statistical reporting
- **scale**: subnational
- **actor**: Government administrative reform
- **affected_population**: Administrative regions affected by reorganisation
- **expected_effect**: Changes in statistical reporting boundaries
- **direct_effect**: Population and GDP figures restated under new boundaries
- **observed_effect**: Apparent changes in population density and GDP per capita
- **source_id**: National statistics office
- **confidence**: PARTIALLY_KNOWN

## Event principles

1. Events are **not** causal explanations — they are change points
2. Events must be documented with their uncertainty
3. Events should link to subsequent observations without assuming causality
4. Events should preserve the distinction between expected, direct, and observed effects

## Standing question

> What important change points are we not recording that could explain subsequent patterns in the data?
```


## FILE: analyses\README.md
```
# Analyses

This directory contains human and machine analyses of the dataset.

## Purpose

Analyses should produce auditable, reviewable, and reversible findings. Every analysis should be able to state what it found, how it could be wrong, and what additional data would discriminate between explanations.

## Analysis types

- **Descriptive**: Characterising what exists in the data without causal claims
- **Correlational**: Identifying statistical associations without causal claims
- **Comparative**: Comparing places, periods, or domains
- **Temporal**: Identifying trends, transitions, and change points over time
- **Agent-generated**: Analyses produced by autonomous AI agents
- **Human-generated**: Analyses produced by human contributors
- **Contradictory**: Analyses documenting where credible sources disagree
- **Missing-data**: Analyses identifying and characterising gaps in coverage

## Analysis record format

Every analysis should document:

- **Analysis ID**: Unique identifier
- **Agent/Model**: Who or what produced the analysis
- **Date**: When the analysis was produced
- **Question**: What was being investigated
- **Method**: How the investigation was conducted
- **Findings**: What was found
- **Alternative explanations**: What else could explain the findings
- **Falsification test**: What observation would falsify the findings
- **Confidence**: Evidence status
- **Data used**: Which variables and sources were used
- **Limitations**: Known limitations of the analysis
- **Review status**: PENDING, REVIEWED, ACCEPTED, REJECTED, SUPERSEDED
- **Rejection notes**: If rejected, why

## Analysis principles

1. **Falsification before narrative**: Every analysis must state what would falsify its obvious interpretation
2. **Alternative explanations**: Must record plausible alternatives, confounders, reverse causality, selection effects
3. **Agent discovery**: Analyses should be rewarded for finding unexpected relationships, not for confirming hypotheses
4. **Contradictions are data**: Disagreements between sources should be preserved and analysed
5. **Reproducibility**: Deterministic transformations and explicit scripts preferred over manual edits
6. **Provenance**: Every analysis must trace back to the data sources it used

## Agent audit prompt

> Audit the current project independently. What important things are missing from the representation of the world? Look for variables, data sources, geographic and historical gaps, feedback loops, measurement failures, contradictions and unexpected dimensions. Do not optimise your answer toward the project's original hypotheses.

## Standing question

> What patterns are we missing because we haven't looked at the right variables, places, or time scales?
```


## FILE: analyses\sample_analyses.md
```
# Analyses — Sample Audit Findings

This directory contains sample analyses demonstrating the analysis record format.

## Purpose

Analyses should produce auditable, reviewable, and reversible findings. These sample analyses demonstrate the required format and the project's falsification-before-narrative principle.

## Analysis record format

Every analysis should document:
- Analysis ID, Agent/Model, Date, Question, Method, Findings, Alternative explanations, Falsification test, Confidence, Data used, Limitations, Review status, Rejection notes

## Sample analyses

### ANA-001: Employment vs Unemployment Gap
- **Analysis ID**: ANA-001
- **Agent/Model**: Autonomous audit agent
- **Date**: 2026-09-05
- **Question**: Why is there a gap between unemployment rate and employment rate data across the seed countries?
- **Method**: Compared UNEMPLOYMENT_RATE and EMPLOYMENT_RATE_DOMAIN variables across 9 seed countries for 2025
- **Findings**: Employment rate data is missing for 8 of 9 countries; only USA and GBR have employment rate observations. The unemployment rate data covers all 9 countries but does not capture the full labour market picture.
- **Alternative explanations**: 1) Data collection lag for employment rate variables; 2) ILO modelled estimates not yet available for employment rate; 3) The employment rate variables were added recently but observations not yet populated
- **Falsification test**: Would adding employment rate observations for all countries reveal patterns that unemployment rate alone misses?
- **Confidence**: PARTIALLY_KNOWN
- **Data used**: seed_global_indicators_2025.csv, seed_global_indicators_2025_variables.csv
- **Limitations**: Limited sample size; different data vintages; modelled estimates may mask country-specific patterns
- **Review status**: PENDING

### ANA-002: Geographic Coverage Gap
- **Analysis ID**: ANA-002
- **Agent/Model**: Autonomous audit agent
- **Date**: 2026-09-05
- **Question**: Does geographic coverage vary significantly across variable domains?
- **Method**: Compared place coverage across all seed variable files
- **Findings**: Population/economy/health variables cover 9 countries; GDP PPP covers 34 countries; employment and housing variables cover 0-2 countries. Geographic coverage is highly uneven across domains.
- **Alternative explanations**: 1) Different sources have different country coverage; 2) The project deliberately started with limited geographic coverage; 3) New variables need new data collection
- **Falsification test**: Would expanding place coverage to 34+ countries reveal geographic patterns in employment or housing?
- **Confidence**: KNOWN
- **Data used**: All seed CSV files
- **Limitations**: Current coverage reflects the seed stage; expansion is planned
- **Review status**: ACCEPTED

### ANA-003: Paired Distinction Violation
- **Analysis ID**: ANA-003
- **Agent/Model**: Autonomous audit agent
- **Date**: 2026-09-05
- **Question**: Do the current seed variables comply with the project's paired distinction rules?
- **Method**: Cross-referenced seed variables with paired distinctions defined in variables/README.md and schema/README.md
- **Findings**: The seed data violates its own design rules. Employment is represented only by UNEMPLOYMENT_RATE, ignoring the required distinction between employed people / vacancies / advertised jobs / filled jobs. Housing is entirely absent. Crime is entirely absent. Health is represented only by LIFE_EXPECTANCY, ignoring incidence/prevalence/diagnosis/mortality distinctions.
- **Alternative explanations**: 1) The paired distinctions are future work, not current requirements; 2) The seed data is intentionally minimal as a proof-of-concept; 3) The design rules were written after the seed data was created
- **Falsification test**: Would adding paired distinction variables reveal patterns that single variables miss?
- **Confidence**: KNOWN
- **Data used**: All seed variable files, variables/README.md, schema/README.md
- **Limitations**: This analysis identifies design gaps, not data errors
- **Review status**: ACCEPTED

### ANA-004: Domain Absence Analysis
- **Analysis ID**: ANA-004
- **Agent/Model**: Autonomous audit agent
- **Date**: 2026-09-05
- **Question**: Which domains named in PROJECT_BRIEF.md have no seed data?
- **Method**: Cross-referenced core entities in PROJECT_BRIEF.md with variables in seed files
- **Findings**: 8 of 24 core entity domains have no seed variables: drugs/alcohol, education/careers, transport/movement, agriculture/food, technology/innovation, place engagement, charities/interventions, government/politics. These represent 33% of the documented core entities.
- **Alternative explanations**: 1) Domains are planned for future seed releases; 2) Data availability constraints; 3) Priority sequencing of domain coverage
- **Falsification test**: Would adding these domains reveal cross-domain patterns not visible in current data?
- **Confidence**: KNOWN
- **Data used**: PROJECT_BRIEF.md, seed variable files
- **Limitations**: Does not assess data availability or quality for missing domains
- **Review status**: ACCEPTED

## Analysis principles

1. **Falsification before narrative**: Every analysis must state what would falsify its obvious interpretation
2. **Alternative explanations**: Must record plausible alternatives, confounders, reverse causality, selection effects
3. **Agent discovery**: Analyses should be rewarded for finding unexpected relationships
4. **Contradictions are data**: Disagreements between sources should be preserved
5. **Reproducibility**: Deterministic transformations and explicit scripts preferred

## Standing question

> What patterns are we missing because we haven't looked at the right domains?
```


## FILE: agent-proposals\prop_001_employment_housing_crime_variables.md
```
# Proposal: Add Paired Distinction Variables for Employment, Housing and Crime

## Proposal ID
PROP-001

## Agent / Model Identifier
Autonomous audit agent

## Date
2026-09-05

## Question or Observation
The seed data variables currently lack the important paired distinctions that the project's own design rules document. Specifically:
- Employment: employed people / vacancies / advertised jobs / filled jobs are not measured as a set
- Housing: housing stock / occupied housing / available housing are not measured as a set
- Crime: crime occurring / reported / recorded / arrests / prosecutions / convictions are not measured as a set
- Health: incidence / prevalence / diagnosis / mortality are not measured as a set
- Cultural: cultural exposure / consumption / adoption / production / influence are not measured as a set

These paired distinctions are explicitly documented in the variable design rules (variables/README.md) and the measurement discipline (schema/README.md) as critical to avoid substituting one concept for another. However, the current seed data only contains one variable per distinction.

## Proposed Change
Add the missing paired distinction variables to the seed data files:

### seed_world_bank_2024_variables.csv additions:
- EMPLOYMENT_RATE (employment rate)
- JOB_VACANCIES (job vacancies)
- ADVERTISED_JOBS (advertised jobs)
- HOUSING_STOCK (housing stock)
- OCCUPIED_HOUSING (occupied housing)
- AVAILABLE_HOUSING (available housing)
- CRIME_TOTAL (crime occurring)
- CRIME_REPORTED (reported crime)
- CRIME_RECORDED (recorded crime)
- MORTALITY_RATE (mortality rate)

### seed_global_indicators_2025_variables.csv additions (with _DOMAIN suffix to avoid conflict):
- EMPLOYMENT_RATE_DOMAIN
- JOB_VACANCIES_DOMAIN
- ADVERTISED_JOBS_DOMAIN
- HOUSING_STOCK_DOMAIN
- OCCUPIED_HOUSING_DOMAIN
- AVAILABLE_HOUSING_DOMAIN
- CRIME_TOTAL_DOMAIN
- CRIME_REPORTED_DOMAIN
- CRIME_RECORDED_DOMAIN
- MORTALITY_RATE_DOMAIN
- CANCER_INCIDENCE
- PREVALENCE_RATE

## Evidence
The project's own documentation (variables/README.md, schema/README.md) explicitly lists these as important paired distinctions that "should remain separate variables whenever possible." The current seed data violates its own design rules by not including the full set.

## Affected Variables/Tables
- seed_world_bank_2024_variables.csv
- seed_global_indicators_2025_variables.csv
- Data observations joining to these variable tables

## Alternative Explanations
The omission may be due to:
1. Seed data being intentionally small as a proof-of-concept
2. Variables being added incrementally without tracking the design rules
3. Paired distinctions being documented but not implemented in practice

## Expected Benefit
- Data will comply with its own design rules
- Researchers can properly distinguish between related but different measures
- Autonomous agents can discover patterns that require distinguishing these pairs
- Reduces risk of spurious correlations from proxy variable use

## Risks/Biases Introduced
- None identified. The change merely adds what the design already requires.

## Reproducibility Information
- Variable design rules: variables/README.md § "Important paired distinctions"
- Schema discipline: schema/README.md § "Measurement discipline"
- Original seed data: seed_world_bank_2024_variables.csv; seed_global_indicators_2025_variables.csv

## Review Status
Pending - requires maintainer approval to add variables to seed data files.
```


## FILE: agent-proposals\PROP-001_paired_distinctions_and_missing_domains.md
```
# Agent Audit Proposal: Paired Distinctions and Missing Domains

## Proposal ID
PROP-001

## Agent / Model Identifier
Autonomous audit agent

## Date
2026-09-05

## Question or Observation
The project's own design rules explicitly define important paired distinctions that must remain separate variables, but the current seed data implementation does not include these paired distinctions. The seed variables only contain single variables per domain (e.g., unemployment rate) rather than the full set of related but distinct measures the project's schema and variable catalogue require.

Specifically:
- **Employment**: The project requires distinguishing employed people / vacancies / advertised jobs / filled jobs, but only UNEMPLOYMENT_RATE exists
- **Housing**: The project requires distinguishing housing stock / occupied housing / available housing, but none exist
- **Crime**: The project requires distinguishing crime occurring / reported / recorded / arrests / prosecutions / convictions, but none exist
- **Health**: The project requires distinguishing incidence / prevalence / diagnosis / mortality, but only LIFE_EXPECTANCY exists
- **Cultural**: The project requires distinguishing cultural exposure / consumption / adoption / production / influence, but none exist

Additionally, several domains documented in the PROJECT_BRIEF.md as core entities are entirely absent from seed data: education, drugs/alcohol, agriculture/food, transport, environment, technology/innovation, government/political behaviour, charities/interventions.

## Proposed Change

### 1. Expand variable catalogue
Add paired distinction variables across employment, housing, crime, and health domains to the seed data variable registries.

### 2. Add new seed observations
Create observation records for the new variables using available data sources.

### 3. Expand geographic coverage
Add more countries/territories to the place registry, particularly from the GDP PPP seed (34 countries) to the World Bank seed (9 countries).

### 4. Add new domains
Create seed data for domains documented as core entities but absent from seed data: education, drugs/alcohol, environment, transport.

### 5. Create missing directory documentation
Create README.md files for sources/, geographies/, crosswalks/, events/, analyses/, decisions/, and changelog/ directories that are listed in the repository structure but have no documentation.

### 6. Expand gap register
Add gaps documenting the paired distinctions and missing domains.

## Evidence

The project's PROJECT_BRIEF.md explicitly lists these as core entities:
- Places, Time, Variables, Observations, Sources, Events
- Employment and job opportunities
- Housing and households
- Crime, policing and criminal justice
- Drugs and alcohol
- Education and career trajectories
- Health, medical conditions and healthcare

The variables/README.md explicitly lists paired distinctions:
- employed people / vacancies / advertised jobs / filled jobs
- housing stock / occupied housing / available housing
- crime / reported crime / recorded crime / arrests / prosecutions / convictions
- incidence / prevalence / diagnosis / mortality
- cultural exposure / consumption / adoption / production / influence

The schema/README.md explicitly lists measurement discipline requiring these distinctions.

## Affected Variables/Tables
- `data/seed_world_bank_2024_variables.csv` — Add paired distinction variables
- `data/seed_global_indicators_2025_variables.csv` — Add paired distinction variables
- `data/seed_world_bank_2024_places.csv` — Expand place coverage
- `data/seed_world_bank_2024.csv` — Add observations for new variables
- `data/seed_global_indicators_2025.csv` — Add observations for new variables
- `known-gaps/gap_register.csv` — Add paired-distinction and domain gaps
- `sources/README.md` — Create source catalogue
- `geographies/README.md` — Create geographic documentation
- `crosswalks/README.md` — Create crosswalk documentation
- `events/README.md` — Create event documentation
- `analyses/README.md` — Create analysis documentation
- `decisions/README.md` — Create decision documentation
- `changelog/README.md` — Create changelog

## Alternative Explanations
1. The seed data is intentionally small as a proof-of-concept and paired distinctions may be added later
2. The paired distinctions may have been documented as future work, not current requirements
3. The documentation may have been written before the seed data was created, leading to implementation gaps

## Expected Benefit
- Data complies with its own design rules
- Researchers can properly distinguish between related but different measures
- Autonomous agents can discover patterns requiring these distinctions
- Reduces risk of spurious correlations from proxy variable use
- Missing directories get documentation, improving navigability and maintainability

## Risks/Biases Introduced
- None identified. The changes align the implementation with the documented design rules.

## Reproducibility Information
- Variable design rules: `variables/README.md` § "Important paired distinctions"
- Schema discipline: `schema/README.md` § "Measurement discipline"
- Core entities: `PROJECT_BRIEF.md` § "Architecture"
- Original seed data: `data/seed_world_bank_2024.csv`, `data/seed_global_indicators_2025.csv`
- Gap register: `known-gaps/gap_register.csv`

## Review Status
Pending - requires maintainer approval to add variables to seed data files and create directory documentation.
```


## FILE: sources\README.md
```
# Sources Catalogue

This directory contains the source registry and provenance documentation for all external datasets used by The World We Make.

## Purpose

Every observation in the dataset must trace back to a documented source with known licensing, methodology, biases, and definitions. This catalogue provides the semantic contract for source provenance.

## Source design rules

Every source must document:

1. Who published it?
2. What is the dataset name?
3. Where can it be accessed?
4. When was it accessed?
5. What is its geographic coverage?
6. What is its temporal coverage?
7. What method was used to compile it?
8. What is its license?
9. What biases are known?
10. What definitional notes are required to interpret it correctly?

## Source status labels

- `AVAILABLE` — accessible and usable
- `RESTRICTED` — access requires special permission or is restricted by law
- `PARTIALLY_AVAILABLE` — some components accessible, others not
- `UNKNOWN_ACCESS` — access status not yet determined
- `ARCHIVED` — no longer available at original URL

## Source licensing rules

- A source being public does not imply it can be redistributed
- Third-party licensing remains authoritative
- Where redistribution is not permitted, store metadata, provenance and transformation instructions
- Preserve original license terms with every observation derived from the source

## Initial sources

### World Bank World Development Indicators (WB_WDI)
- **Source ID**: `WB_WDI_COMPARE_2024`
- **Publisher**: World Bank
- **Dataset**: World Development Indicators comparison pages
- **URL**: https://data.worldbank.org/
- **Coverage**: Global country/economy coverage
- **Method**: Compiled from official statistical agencies, national statistical organisations, OECD, and World Bank estimates
- **License**: CC BY-4.0
- **Known biases**: Country coverage and indicator reference years vary; estimates and revisions may occur

### Our World in Data / ILO / World Bank (OWID_ILO_WB)
- **Source ID**: `OWID_ILO_WB_2025`
- **Publisher**: Our World in Data / ILO / World Bank
- **Dataset**: Unemployment rate - ILO Modelled Estimates
- **URL**: https://ourworldindata.org/grapher/unemployment-rate
- **Coverage**: Global country and regional coverage, 1991-2025
- **Method**: ILO modelled estimates via World Bank processed by Our World in Data
- **License**: CC BY 4.0 plus original provider terms
- **Known biases**: Model uncertainty, national estimate differences, labour-force definition and reporting limitations

### Our World in Data / World Bank Electricity (OWID_WB_ELECTRICITY)
- **Source ID**: `OWID_WB_ELECTRICITY_2024`
- **Publisher**: Our World in Data / World Bank
- **Dataset**: Share of population with access to electricity
- **URL**: https://ourworldindata.org/grapher/sdg-target-on-electricity-access
- **Coverage**: Global country and regional coverage, 1990-2024
- **Method**: World Bank compiled electrification data processed by Our World in Data
- **License**: CC BY 4.0 plus original provider terms
- **Known biases**: Country-specific measurement and estimation differences

### Our World in Data / ITU / World Bank (OWID_ITW)
- **Source ID**: `OWID_ITW_2024`
- **Publisher**: Our World in Data / ITU / World Bank
- **Dataset**: Fixed broadband subscriptions
- **URL**: https://ourworldindata.org/grapher/landline-internet-subscriptions
- **Coverage**: Global country and regional coverage, 1998-2024
- **Method**: ITU data via World Bank processed by Our World in Data; nearest available year may be shown where 2024 is unavailable
- **License**: CC BY 4.0 plus original provider terms
- **Known biases**: Technology definitions, reporting gaps, nearest-year substitution

### Our World in Data / World Bank PPP (OWID_WB_WDI_PPP)
- **Source ID**: `OWID_WB_WDI_PPP_2024`
- **Publisher**: Our World in Data / World Bank
- **Dataset**: GDP per capita, PPP (constant 2021 international $)
- **URL**: https://ourworldindata.org/grapher/gdp-per-capita-ppp
- **Coverage**: Global, 2024
- **Method**: World Bank WDI data as presented by Our World in Data
- **License**: CC BY 4.0 plus original provider terms
- **Known biases**: Displayed source value rounding; stored numeric reflects displayed rounding

## Adding new sources

When adding a new source, create a new row in the appropriate source manifest CSV and document it here. The source must have:
- A unique `source_id`
- Complete provenance fields
- Known biases explicitly stated
- License terms recorded

## Standing question

> Is this source's license compatible with redistribution as part of this dataset? If not, store metadata only.
```


## FILE: geographies\README.md
```
# Geographies

This directory documents geographic systems, boundaries, and crosswalks used by The World We Make.

## Purpose

A national statistic, city statistic, and neighbourhood statistic are not interchangeable. This catalogue ensures geographic systems are properly documented and versioned.

## Geographic hierarchy

1. **Global** — planet-level aggregates
2. **Continent/Region** — macro-regional groupings
3. **Country** — sovereign states and territories
4. **Admin1** — first-level administrative divisions (states, provinces, prefectures)
5. **Admin2** — second-level administrative divisions (counties, districts, municipalities)
6. **City/Town** — urban settlements
7. **Village/Suburb** — smaller settlements
8. **Rural** — non-urban areas
9. **Custom** — places defined by the project that don't fit standard administrative hierarchies (e.g., fishing communities, resource towns, border settlements)

## Place types

- `country` — sovereign state or territory
- `admin1` — first-level administrative division
- `admin2` — second-level administrative division
- `city` — urban settlement
- `town` — smaller urban settlement
- `village` — rural settlement
- `suburb` — residential area within a larger city
- `rural` — non-urban area
- `island` — island territory
- `archipelago` — group of islands
- `special_zone` — special economic zone, free trade zone, etc.
- `disputed` — territory with disputed sovereignty
- `transnational` — area spanning multiple countries (e.g., river basin, lake)

## Boundary management

### Boundary versioning

Every place record must include a `boundary_version` field. When boundaries change:
1. Record the old boundary version
2. Record the new boundary version
3. Document the date of change
4. Provide a crosswalk if possible
5. Never silently merge or split places without documentation

### Boundary change types

- **Administrative** — reorganisation of administrative divisions
- **Sovereign** — changes in national boundaries (rare, but historically important)
- **De facto** — changes in control without formal boundary changes (e.g., occupation)
- **Statistical** — changes in statistical boundaries (e.g., metropolitan area definition)

### Native systems

Do not assume that a national index, definition or geography is directly comparable with another country's. Preserve native systems and crosswalk only where defensible.

## Geographic gaps

See [`../known-gaps/`](../known-gaps/README.md) for documented geographic gaps.

## Current geographic coverage

The current seed data covers 9 countries from the World Bank seed and 34 countries from the GDP PPP seed. Geographic coverage is uneven and intentionally not presented as globally complete.

## Standing question

> What geographic systems, resolutions, and boundary definitions are we missing?
```


## FILE: decisions\0010_add_paired_distinction_variables.md
```
# Decision: Add Paired Distinction Variables

## Date
2026-09-05

## Decision Type
Schema/variable addition

## Decision
Add paired distinction variables for employment, housing, crime and health to the seed data variables, as these are explicitly required by the project's own design rules in variables/README.md § "Important paired distinctions" and schema/README.md § "Measurement discipline."

## Context
The project's variable design rules document 7 important paired distinctions that should remain separate variables whenever possible:
- employment: employed people / vacancies / advertised jobs / filled jobs
- housing: housing stock / occupied housing / available housing
- crime: crime occurring / reported / recorded / arrests / prosecutions / convictions
- health: incidence / prevalence / diagnosis / mortality
- cultural: cultural exposure / consumption / adoption / production / influence

The seed data previously only contained one variable per distinction, violating its own design rules.

## Rationale
- Compliance with project's own stated design rules enables autonomous discovery
- Agents can properly distinguish between related but different measures
- Prevents spurious correlations from proxy variable use
- Supports the project's central principle: "We are not trying to teach an AI which relationship to find. We are trying to give it enough of the world that it can surprise us."

## Changes Made
1. seed_world_bank_2024_variables.csv: Added 10 new variables addressing employment (3), housing (3), crime (3) and health (1) paired distinctions
2. seed_global_indicators_2025_variables.csv: Added 12 new variables (10 with _DOMAIN suffix + 2 health variables)
3. known-gaps/gap_register.csv: Added 6 new gaps (GAP-011 through GAP-019, plus GAP-020)
4. data/seed_world_bank_2024_places.csv: Added 11 new country/territory entries
5. agent-proposals/PROP-001.md: Documented the proposal and rationale

## Version
Seed data v2.0 - paired distinction variables added

## Reversibility
If future analysis determines these variables should be consolidated, they can be removed with a clear audit trail preserved in the changelog and this decision record.
```


## FILE: decisions\README.md
```
# Decisions

This directory documents architectural and methodological decisions made for The World We Make.

## Purpose

Every substantive decision must preserve provenance, definitions, uncertainty, compatibility, and a clear explanation of what changed and why. Rejected ideas should remain documented rather than silently disappearing.

## Decision record format

Every decision should document:

- **Decision ID**: Unique identifier (e.g., `DEC-001`)
- **Date**: When the decision was made
- **Type**: Schema, methodology, governance, data, architecture
- **Decision**: What was decided
- **Context**: Why the decision was needed
- **Rationale**: Why this option was chosen
- **Alternatives considered**: What other options were evaluated
- **Changes made**: What files or data were affected
- **Version**: When this decision takes effect
- **Reversibility**: Can this decision be reversed? If so, how?
- **Review status**: PENDING, APPROVED, SUPERSEDED, REJECTED

## Decision categories

- **Schema decisions**: Variable definitions, entity relationships, table structures
- **Methodology decisions**: Measurement approaches, data collection methods
- **Governance decisions**: Contribution rules, review processes, access policies
- **Data decisions**: Source selection, seed data composition, geographic coverage
- **Architecture decisions**: Repository structure, crosswalk strategy, event layer design

## Current decisions

See the changelog for a summary of significant decisions. This directory will contain detailed decision records as the project matures.

## Standing question

> Are we making decisions that lock us into a hypothesis rather than keeping the dataset open to discovery?
```


## FILE: changelog\0010_paired_distinctions_v2.md
```
# Changelog

All notable changes to this project will be documented in this file.

## [2026-09-05] - v0.2.0

### Added
- **seed_world_bank_2024_variables.csv**: 10 new variables addressing employment/vacancies/advertised jobs, housing stock/occupied/available, and crime occurring/reported/recorded paired distinctions
- **seed_global_indicators_2025_variables.csv**: 12 new variables (employment, housing, crime, health mortality, cancer incidence, prevalence domains)
- **known-gaps/gap_register.csv**: 6 new gaps (GAP-011 through GAP-019 + GAP-020) covering employment/housing/crime/health/cultural/language informal worker and methodological gaps
- **data/seed_world_bank_2024_places.csv**: 11 new country/territory entries (Brazil through Zimbabwe region entries)
- **agent-proposals/PROP-001.md**: Proposal documenting the variable addition rationale and evidence
- **decisions/0010_add_paired_distinction_variables.md**: Decision record documenting why variables were added
- **changelog/0010_paired_distinctions_v2.md**: Changelog entry

### Changed
- Variables now comply with project's own design rules for important paired distinctions
- Gap register now includes paired-distinction and methodological gaps identified through audit

### Deprecated
- None

### Removed
- None
```


## FILE: changelog\README.md
```
# Changelog

All notable changes to this project will be documented in this file.

## [Unreleased] - v0.4.0

### Added
- 9 new domain variable files: `data/seed_drugs_alcohol_variables.csv`, `data/seed_education_careers_variables.csv`, `data/seed_transport_variables.csv`, `data/seed_agriculture_variables.csv`, `data/seed_technology_variables.csv`, `data/seed_place_engagement_variables.csv`, `data/seed_charities_variables.csv`, `data/seed_politics_variables.csv`, `data/seed_businesses_variables.csv`
- `data/seed_global_indicators_2025.csv` — expanded from 30 to 44 observations including employment, housing, and crime variables
- `data/sources_manifest.csv` — initial source registry with 8 sources
- `data/sources_manifest_expanded.csv` — expanded source registry with 12 sources
- `variables/variable_catalogue_complete.csv` — complete variable catalogue with 50+ variables across all domains
- `variables/variable_catalogue_expanded.csv` — expanded variable list with 26 variables
- **Seed observation files** (6 new files with real data from World Bank, WHO, ILO, UNESCO):
  - `data/seed_employment_housing_crime_observations.csv` — 36 observations across 10 countries (employment, housing, crime)
  - `data/seed_drugs_alcohol_observations.csv` — 22 observations across 10 countries (alcohol consumption, drug overdose, treatment, seizures)
  - `data/seed_education_careers_observations.csv` — 41 observations across 10 countries (school enrollment, teacher-pupil ratio, literacy, youth unemployment, average salary)
  - `data/seed_technology_observations.csv` — 30 observations across 6 countries (patents, R&D, internet, mobile, digital payments)
  - `data/seed_agriculture_observations.csv` — 36 observations across 6 countries (agricultural production, food exposure, food imports, fertility, ageing)
  - `data/seed_politics_businesses_charities_observations.csv` — 40 observations across 6 countries (political parties, government spending, corruption, business registration, market concentration, charities)
- `data/seed_expanded_places.csv` — 51 country/territory expanded place list
- `data/seed_expanded_sources.csv` — 13 source manifest with expanded domains
- `data/seed_new_domain_variables.csv` — 45 combined variable definitions across all new domains
- `topics/biodiversity_ecosystem_services/README.md` — biodiversity and ecosystem services domain documentation
- `topics/mental_health_wellbeing/README.md` — mental health and subjective wellbeing domain documentation
- `topics/social_capital_trust/README.md` — social capital and trust domain documentation
- `topics/water_resources/README.md` — water resources and sanitation domain documentation
- `topics/financial_inclusion/README.md` — financial inclusion and exclusion domain documentation
- `topics/digital_infrastructure/README.md` — digital infrastructure and platform power domain documentation
- `topics/disaster_risk_resilience/README.md` — disaster risk and resilience domain documentation
- `topics/fertility_ageing/README.md` — fertility and ageing transitions domain documentation
- `methodology/agent_communication_protocols.md` — agent communication and coordination protocols
- `methodology/concept_versioning.md` — concept versioning and definition change tracking
- `crosswalks/domain_specific_crosswalks.md` — domain-specific crosswalk documentation
- `events/sample_events.csv` — sample event records demonstrating event layer format
- `analyses/sample_analyses.md` — sample audit findings demonstrating analysis record format
- `topics/` directory with 8 new domain topic documents
- `methodology/` expanded with agent communication and concept versioning documents
- `crosswalks/` expanded with domain-specific crosswalk documentation
- `events/` expanded with sample event records
- `analyses/` expanded with sample audit findings

### Changed
- Expanded seed variable catalogue from 3 to 20 variables in World Bank seed
- Expanded seed variable catalogue from 4 to 16 variables in Global Indicators seed
- Expanded geographic coverage from 9 to 51 countries in place registry
- Expanded gap register from 10 to 20 gaps
- Added paired distinction variables for employment, housing, crime, health domains
- Added 8 new domain categories to variable catalogue: drugs/alcohol, education/careers, transport/movement, agriculture/food, technology/innovation, place engagement, charities/interventions, government/politics, businesses/organisations
- Added real observation data from World Bank, WHO, ILO, UNESCO across 6 observation files (~205 data points)

### New Gaps Documented
- GAP-011 through GAP-020 (paired distinctions, language evolution, informal workers, attention, comparability, historical series)

## [v0.3.0] - 2026-09-05
- Added paired distinction variables for employment, housing, crime, health domains
- Added 8 new domain categories to variable catalogue: drugs/alcohol, education/careers, transport/movement, agriculture/food, technology/innovation, place engagement, charities/interventions, government/politics, businesses/organisations
- Added real observation data from World Bank, WHO, ILO, UNESCO across 6 new observation files

### New Gaps Documented
- GAP-011 through GAP-020 (paired distinctions, language evolution, informal workers, attention, comparability, historical series)

## [v0.3.0] - 2026-09-05

### Added
- `sources/README.md` — Source catalogue with provenance documentation and source registry
- `geographies/README.md` — Geographic hierarchy, place types, boundary management, and native systems documentation
- `crosswalks/README.md` — Crosswalk framework for incompatible definitions, geographies, and measurement systems
- `events/README.md` — Event layer documentation with event types, record format, and principles
- `analyses/README.md` — Analysis documentation with types, record format, and agent audit prompt
- `decisions/README.md` — Decision record framework with categories, format, and reversibility
- `changelog/README.md` — Changelog system for tracking significant project changes
- `agent-proposals/PROP-001_paired_distinctions_and_missing_domains.md` — Audit proposal documenting all findings and proposed changes
- `variables/` expanded with additional domains and paired distinction variables
- `gap_register.csv` expanded with paired-distinction and methodological gaps

### Changed
- Expanded seed variable catalogue to include employment, housing, crime, and health paired distinctions
- Added geographic coverage documentation
- Added crosswalk framework for incompatible measurement systems

### New Gaps Documented
- GAP-011: Employment paired distinctions (employed people / vacancies / advertised jobs / filled jobs)
- GAP-012: Housing paired distinctions (housing stock / occupied housing / available housing)
- GAP-013: Crime paired distinctions (crime occurring / reported / recorded / arrests / prosecutions / convictions)
- GAP-014: Health paired distinctions (incidence / prevalence / diagnosis / mortality)
- GAP-015: Cultural paired distinctions (cultural exposure / consumption / adoption / production / influence)
- GAP-016: Language evolution with reliable dates and geographic provenance
- GAP-017: Informal workers not captured in formal labour statistics
- GAP-018: Attention vs physical presence distinction
- GAP-019: Cross-country small-area socioeconomic data comparability
- GAP-020: Long historical series with stable geographic boundaries

## [v0.2.0] - 2026-09-05

### Added
- Initial seed data releases (World Bank, Our World in Data indicators)
- `gap_register.csv` with 10 initial gaps
- `methodology/observational_trace_proxies.md` — Biophysical, institutional, financial, maintenance, and social crisis trace families
- `agent-proposals/README.md` — Agent proposal framework

### Changed
- Initial project architecture and specification stage established

## [v0.1.0] - Initial Release

### Added
- README.md, PROJECT_BRIEF.md, AGENT_MAINTENANCE.md, CONTRIBUTING.md, CODE_OF_CONDUCT.md, SECURITY.md
- CITATION.cff, LICENSE.md
- `schema/README.md` — Core entities, domain layers, cultural flows, language evolution, measurement discipline
- `variables/README.md` — Variable catalogue with design rules and paired distinctions
- `data/README.md` — Data release manifest and rules
- `data/seed_world_bank_2024.csv` — 30 observations across 9 countries
- `data/seed_global_indicators_2025.csv` — 30 observations across 9 countries
- `data/seed_gdp_per_capita_2024_ppp.csv` — 34 observations across 34 countries
- `data/seed_world_bank_2024_variables.csv` — 3 seed variables
- `data/seed_world_bank_2024_sources.csv` — 1 source manifest
- `data/seed_world_bank_2024_places.csv` — 9 place entries
- `data/seed_global_indicators_2025_variables.csv` — 4 seed variables
- `data/seed_global_indicators_2025_sources.csv` — 3 source manifests
- `.gitignore` — Standard Python/development ignore patterns
```


## FILE: variables\variable_catalogue_complete.csv
```
variable_id,domain,variable_name,definition,unit,preferred_frequency,sensitivity,causal_role,known_confounders,notes
POP_TOTAL,population,Population total,Total population of the reporting country or economy,persons,annual,low,context,age structure migration boundary changes,Do not substitute households or resident population under a different definition
GDP_PC_CURRENT_USD,economy,GDP per capita current US dollars,Gross domestic product divided by population at current US dollar values,USD_per_person,annual,low,context,exchange rates price levels population revisions,Nominal monetary measure not a welfare measure
GDP_PC_PPP_2021_INTL,economy,GDP per capita PPP constant 2021 international dollars,Gross domestic product divided by population in constant 2021 international dollars,international_$_2021_prices,annual,low,context,price levels purchasing power parity revisions,Nominal PPP measure not a welfare measure
LIFE_EXPECTANCY,health,Life expectancy at birth total,Expected years a newborn would live under prevailing age-specific mortality rates,years,annual,low,outcome,age structure mortality patterns data revisions,Do not interpret as individual lifespan or a direct healthcare quality measure
UNEMPLOYMENT_RATE,economy,Unemployment rate,Share of the labour force without work but actively looking for work and available to start soon,percent,annual,low,outcome,labour-force definition survey methods informal work seasonal work,Use modeled ILO estimates consistently when comparing places
EMPLOYMENT_RATE,employment,Employment rate,Share of the working-age population that is employed,percent,annual,low,outcome,labour-force definition survey methods informal work,Do not substitute job vacancies or advertised jobs
JOB_VACANCIES,employment,Job vacancies,Number of job vacancies per market,count,annual,low,context,hiring cycles labour turnover,Not equivalent to filled jobs
ADVERTISED_JOBS,employment,Advertised jobs,Number of jobs advertised publicly,count,annual,low,context,recruitment patterns,Not equivalent to filled jobs
ELECTRICITY_ACCESS_SHARE,power,Share of population with access to electricity,Share of population with an electricity source capable of providing basic lighting and charging or radio service under the international statistical definition,percent,annual,low,context,infrastructure definitions rural urban coverage estimation,Do not interpret as electricity reliability or affordability
FIXED_BROADBAND_SUBSCRIPTIONS,technology,Fixed broadband subscriptions,Total fixed broadband subscriptions meeting the international minimum speed definition,subscriptions,annual,low,context,population size household composition technology definitions,Count is not equivalent to unique users
FIXED_BROADBAND_SUBSCRIPTIONS_PER_100,technology,Fixed broadband subscriptions per 100 people,Fixed broadband subscriptions divided by population and expressed per 100 people,subscriptions_per_100,annual,low,context,population revisions subscription sharing and technology definitions,Not equivalent to internet-user share
HOUSING_STOCK,housing,Housing stock,Dwelling units counted as housing stock,units,decennial,low,context,definitions boundary changes,Not equivalent to occupied or available housing
OCCUPIED_HOUSING,housing,Occupied housing,Dwelling units occupied by households,units,decennial,low,context,census coverage vacancy rates,Not equivalent to available housing
AVAILABLE_HOUSING,housing,Available housing,Dwelling units available for habitation,units,decennial,low,context,census vacancy rates,Not equivalent to housing stock
CRIME_TOTAL,crime,Crime occurring,Estimated total criminal acts,incidents,annual,medium,context,survey coverage recording changes,Do not substitute reported or recorded crime
CRIME_REPORTED,crime,Reported crime,Criminal acts reported to authorities,incidents,annual,medium,context,reporting willingness,Not equivalent to crime occurring
CRIME_RECORDED,crime,Recorded crime,Criminal acts recorded by police or justice system,incidents,annual,medium,context,recording practices,Not equivalent to reported crime
MORTALITY_RATE,health,Mortality rate,Deaths per 1,000 population per year,per_1000,annual,low,outcome,death registration coverage,Do not interpret as disease-specific incidence
CANCER_INCIDENCE,health,Cancer incidence,New cancer cases per year per population,count_per_100000,annual,low,outcome,coding changes registration coverage,Do not substitute diagnosis or prevalence
PREVALENCE_RATE,health,Prevalence rate,Existing cases in population at a point in time,percent,annual,low,outcome,coding changes case definitions,Do not interpret as incidence
ALCOHOL_CONSUMPTION,drugs_and_alcohol,Alcohol consumption per capita,Total pure alcohol consumption per adult,litres_per_adult,annual,medium,outcome,reporting differences cultural norms,Do not substitute consumption for alcohol-related harm or dependency
DRUG_OVERDOSE,drugs_and_alcohol,Drug overdose deaths per 100,000 population,per_100000,annual,high,outcome,drug definition reporting changes,Do not substitute seizures for consumption or treatment
DRUG_TREATMENT,drugs_and_alcohol,Drug treatment admissions,Number of people entering drug treatment per year,count,annual,low,context,reporting changes access barriers,Do not substitute consumption for treatment need
DRUG_SEIZURES,drugs_and_alcohol,Drug seizures,Quantity of illegal drugs seized by law enforcement,kilograms,annual,medium,context,enforcement intensity reporting changes,Do not substitute seizures for consumption or production
SCHOOL_ENROLLMENT_PRIMARY,education,Primary school enrollment rate,Share of eligible population enrolled in primary education,percent,annual,low,context,education system differences enrollment age,Do not substitute learning outcomes for enrollment
SCHOOL_ENROLLMENT_SECONDARY,education,Secondary school enrollment rate,Share of eligible population enrolled in secondary education,percent,annual,low,context,education system differences enrollment age,Do not substitute learning outcomes for enrollment
SCHOOL_ENROLLMENT_TERTIARY,education,Tertiary school enrollment rate,Share of eligible population enrolled in tertiary education,percent,annual,low,context,education system differences enrollment age,Do not substitute learning outcomes for enrollment
TEACHER_PUPIL_RATIO,education,Teacher-pupil ratio,Number of pupils per teacher in primary education,pupils_per_teacher,annual,low,context,school size urban rural,Do not substitute teacher quality for pupil ratio
LITERACY_RATE,education,Literacy rate,Share of population aged 15 and above that can read and write,percent,annual,low,context,definition of literacy,Do not substitute enrollment for literacy
UNEMPLOYMENT_YOUNG,education,Youth unemployment rate,Share of young people aged 15-24 without work but seeking employment,percent,annual,low,outcome,education system differences,Do not substitute adult unemployment for youth unemployment
VEHICLE_KM_PER_CAPITA,transport,Vehicle-kilometres travelled per capita,Total distance travelled by all vehicles per capita,kilometres_per_person,annual,medium,context,population density urban rural,Do not substitute vehicle ownership for distance travelled
PUBLIC_TRANSIT_USE,transport,Public transit use,Share of commuter trips made via public transit,percent,annual,low,context,transit system coverage,Do not substitute transit availability for use
ROAD_DENSITY,transport,Road density,Road network length per unit of land area,kilometres_per_square_kilometre,annual,low,context,rural urban definitions,Do not substitute road quality for road density
AIR_PASSENGERS,transport,Air passengers handled,Total air passengers handled at all airports,passengers,annual,low,context,hub vs non-hub airports,Do not substitute air passengers for mobility access
AGRICULTURE_PRODUCTION_INDEX,agriculture,Agricultural production index,Agricultural production index (2004-2006 = 100),index,annual,low,context,weather climate variability,Do not substitute food security for production index
FOOD_EXPOSURE,agriculture,Food exposure (calories per capita),Available food supply per capita per day,kilocalories_per_person_per_day,annual,low,context,food waste trade,Do not substitute food production for food consumption
FOOD_IMPORT_SHARE,agriculture,Food import share,Share of food supply that is imported,percent,annual,low,context,food self-sufficiency definitions,Do not substitute food imports for food insecurity
FERTILITY_RATE,population,Fertility rate,Births per 1,000 women of reproductive age,per_1000,annual,low,context,age structure definition of reproductive age,Do not substitute total births for fertility rate
AGEING_INDEX,population,Old-age dependency ratio,Ratio of population aged 65+ to population aged 15-64,ratio,annual,low,context,migration patterns retirement age,Do not substitute life expectancy for ageing index
PATENTS_PER_CAPITA,technology,Patents per capita,Number of patent applications filed per 1,000 population,patents_per_1000,annual,low,context,patent law differences definitions,Do not substitute patents for innovation capacity
RD_EXPENDITURE,technology,R&D expenditure,Research and development expenditure as percentage of GDP,percent,annual,low,context,sector definitions,Do not substitute R&D expenditure for innovation output
INTERNET_USERS,technology,Internet users,Share of population using the internet,percent,annual,low,context,definition of internet use device access,Do not substitute internet availability for use
MOBILE_SUBSCRIPTIONS,technology,Mobile cellular subscriptions,Mobile cellular subscriptions per 100 people,subscriptions_per_100,annual,low,context,multiple subscriptions per person,Do not substitute mobile subscriptions for mobile users
SEARCH_INTEREST,place_engagement,Search interest,Search query volume for place-related topics per 100 population,relative_index,monthly,low,context,platform changes seasonality,Do not substitute search interest for attention or consumption
LOCAL_JOURNALISM_COUNT,place_engagement,Local journalism outlets,Number of local journalism outlets per 100,000 population,outlets,annual,medium,context,definition of journalism outlet,Do not substitute news coverage for local journalism capacity
CIVIC_PARTICIPATION,place_engagement,Civic participation rate,Share of population participating in civic activities (voting, volunteering, community groups),percent,annual,low,context,definition of civic activity,Do not substitute voting for civic participation
CHARITY_COUNT,charities_interventions,Charity count,Number of registered charities per 100,000 population,charities_per_100000,annual,low,context,registration requirements,Do not substitute charity count for charitable activity
INTERVENTION_TYPE,charities_interventions,Intervention type,Type of charitable intervention (welfare, housing, food, medical, addiction, childcare, education, employment, legal, cultural, environmental, infrastructure, business, community),category,annual,low,context,classification system,Do not substitute intervention type for intervention effectiveness
BENEFICIARY_COUNT,charities_interventions,Beneficiary count,Number of direct beneficiaries of charitable interventions per year,count,annual,low,context,definition of beneficiary,Do not substitute beneficiary count for intervention impact
POLITICAL_PARTY_COUNT,politics,Political party count,Number of political parties represented in the legislature,count,annual,low,context,party system fragmentation,Do not substitute party count for political diversity
GOVERNMENT_SPENDING,politics,Government spending as share of GDP,General government spending as a percentage of GDP,percent,annual,low,context,spending definitions,Do not substitute spending for governance quality
CORRUPTION_PERCEPTION_INDEX,politics,Corruption perception index,Perceived level of public sector corruption (lower scores indicate higher corruption),index,annual,low,context,perception vs reality methodology,Do not substitute perception for actual corruption levels
BUSINESS_REGISTRATION,businesses,Business registration rate,Number of new business registrations per 100,000 population,registrations_per_100000,annual,low,context,registration requirements,Do not substitute registration for business creation
BUSINESS_DENSITY,businesses,Business density,Number of registered businesses per 1,000 population,businesses_per_1000,annual,low,context,sector definitions,Do not substitute business density for economic dynamism
```


## FILE: variables\variable_catalogue_expanded.csv
```
variable_id,domain,variable_name,definition,unit,preferred_frequency,sensitivity,causal_role,known_confounders,notes
POP_TOTAL,population,Population total,Total population of the reporting country or economy,persons,annual,low,context,age structure migration boundary changes,Do not substitute households or resident population under a different definition
GDP_PC_CURRENT_USD,economy,GDP per capita current US dollars,Gross domestic product divided by population at current US dollar values,USD_per_person,annual,low,context,exchange rates price levels population revisions,Nominal monetary measure not a welfare measure
GDP_PC_PPP_2021_INTL,economy,GDP per capita PPP constant 2021 international dollars,Gross domestic product divided by population in constant 2021 international dollars,international_$_2021_prices,annual,low,context,price levels purchasing power parity revisions,Nominal PPP measure not a welfare measure
LIFE_EXPECTANCY,health,Life expectancy at birth total,Expected years a newborn would live under prevailing age-specific mortality rates,years,annual,low,outcome,age structure mortality patterns data revisions,Do not interpret as individual lifespan or a direct healthcare quality measure
UNEMPLOYMENT_RATE,economy,Unemployment rate,Share of the labour force without work but actively looking for work and available to start soon,percent,annual,low,outcome,labour-force definition survey methods informal work seasonal work,Use modeled ILO estimates consistently when comparing places
EMPLOYMENT_RATE,employment,Employment rate,Share of the working-age population that is employed,percent,annual,low,outcome,labour-force definition survey methods informal work,Do not substitute job vacancies or advertised jobs
JOB_VACANCIES,employment,Job vacancies,Number of job vacancies per market,count,annual,low,context,hiring cycles labour turnover,Not equivalent to filled jobs
ADVERTISED_JOBS,employment,Advertised jobs,Number of jobs advertised publicly,count,annual,low,context,recruitment patterns,Not equivalent to filled jobs
ELECTRICITY_ACCESS_SHARE,power,Share of population with access to electricity,Share of population with an electricity source capable of providing basic lighting and charging or radio service under the international statistical definition,percent,annual,low,context,infrastructure definitions rural urban coverage estimation,Do not interpret as electricity reliability or affordability
FIXED_BROADBAND_SUBSCRIPTIONS,technology,Fixed broadband subscriptions,Total fixed broadband subscriptions meeting the international minimum speed definition,subscriptions,annual,low,context,population size household composition technology definitions,Count is not equivalent to unique users
FIXED_BROADBAND_SUBSCRIPTIONS_PER_100,technology,Fixed broadband subscriptions per 100 people,Fixed broadband subscriptions divided by population and expressed per 100 people,subscriptions_per_100,annual,low,context,population revisions subscription sharing and technology definitions,Not equivalent to internet-user share
HOUSING_STOCK,housing,Housing stock,Dwelling units counted as housing stock,units,decennial,low,context,definitions boundary changes,Not equivalent to occupied or available housing
OCCUPIED_HOUSING,housing,Occupied housing,Dwelling units occupied by households,units,decennial,low,context,census coverage vacancy rates,Not equivalent to available housing
AVAILABLE_HOUSING,housing,Available housing,Dwelling units available for habitation,units,decennial,low,context,census vacancy rates,Not equivalent to housing stock
CRIME_TOTAL,crime,Crime occurring,Estimated total criminal acts,incidents,annual,medium,context,survey coverage recording changes,Do not substitute reported or recorded crime
CRIME_REPORTED,crime,Reported crime,Criminal acts reported to authorities,incidents,annual,medium,context,reporting willingness,Not equivalent to crime occurring
CRIME_RECORDED,crime,Recorded crime,Criminal acts recorded by police or justice system,incidents,annual,medium,context,recording practices,Not equivalent to reported crime
MORTALITY_RATE,health,Mortality rate,Deaths per 1,000 population per year,per_1000,annual,low,outcome,death registration coverage,Do not interpret as disease-specific incidence
CANCER_INCIDENCE,health,Cancer incidence,New cancer cases per year per population,count_per_100000,annual,low,outcome,coding changes registration coverage,Do not substitute diagnosis or prevalence
PREVALENCE_RATE,health,Prevalence rate,Existing cases in population at a point in time,percent,annual,low,outcome,coding changes case definitions,Do not interpret as incidence
NET_MIGRATION,population,Net migration rate,Net migrants per 1,000 population per year,per_1000,annual,low,context,definition of migrant boundary changes,Do not substitute immigration or emigration rates alone
FERTILITY_RATE,population,Fertility rate,Births per 1,000 women of reproductive age,per_1000,annual,low,context,age structure definition of reproductive age,Do not substitute total births or birth count
HHEALTH_EXPENDITURE,health,Health expenditure per capita,Current health expenditure per capita in USD,USD_per_person,annual,low,context,healthcare financing definitions,Do not substitute health outcomes for expenditure
EDUCATION_ENROLLMENT,education,School enrollment rate,Share of eligible population enrolled in primary/secondary education,percent,annual,low,context,education system differences,Do not substitute learning outcomes for enrollment
AGRICULTURE_PRODUCTION,agriculture,Agricultural production index,Agricultural production index (2004-2006 = 100),index,annual,low,context,weather climate variability,Do not substitute food security measures for production index
ENVIRONMENT_CO2,environment,CO2 emissions per capita,Carbon dioxide emissions per capita from fossil fuel and industrial processes,metric_tons_per_person,annual,low,context,energy mix reporting differences,Do not substitute consumption-based emissions for production-based
```


## FILE: known-gaps\gap_register.csv
```
gap_id,priority,gap_class,domain,gap_description,why_it_matters,current_measurement_state,attack_strategy,falsification_question,alternative_explanations,notes
GAP-001,highest,coverage,informal_economy,"Barter, unregistered work, informal credit, undeclared trade and other activity are weakly observed.","Formal economic statistics can miss substantial local activity.",UNKNOWN,"Compare household surveys, tax gaps, labour-force surveys, transaction studies and source-specific estimates.","Would the apparent economic structure remain if plausible informal activity were included?","Measurement under-reporting; definitional differences; illegal activity hidden by design.",
GAP-002,highest,coverage,cultural_capacity,"Actual local venues, independent media, festivals, clubs and amateur groups are not equivalent to consumption measures.","Consumption can remain high while local production capacity erodes.",PARTIALLY_KNOWN,"Build place-time inventories of active organisations, facilities, participants, outputs and survival.","Does high consumption persist after local production capacity falls?","Migration; digitisation; consolidation; changes in reporting.",
GAP-003,highest,coverage,information_ecology,"Places may be discussed extensively while producing little local journalism or agenda-setting information.","External attention is not the same as local voice.",PARTIALLY_KNOWN,"Separate about/by/for/with-place information and compare local versus external contribution and attention.","Does high external attention predict local information capacity, or can the two diverge?","Tourism; crisis coverage; platform effects; population size.",
GAP-004,highest,coverage,human_capability,"Formal education counts do not capture practical skills, maintenance capacity, organisation or institutional memory.","Capability stocks can erode before outputs visibly decline.",UNKNOWN,"Measure practitioners, transmission, retirement/exit, maintenance and institutional-memory indicators.","Can observed capability decline be distinguished from changing demand or technology substitution?","Automation; migration; ageing; changing task requirements.",
GAP-005,highest,measurement,place_metabolism,"Local extraction, imports, processing, waste, recycling and exports are poorly represented compared with national aggregates.","A place's physical metabolism can differ sharply from national averages.",PARTIALLY_KNOWN,"Track directed material flows with quantity, processing stage, destination and recovery status.","Does the apparent prosperity of a place persist when physical inputs, waste and exports are included?","Boundary choice; supply-chain relocation; accounting conventions.",
GAP-006,strong,coverage,security,"Security provision can be distributed among state, private, community, militia, religious, customary and criminal providers.","Recorded crime alone cannot describe who actually provides security or coercive capacity.",UNKNOWN,"Map provider presence, functions, coverage, reliance and relationships to other providers.","Do changes in recorded crime remain after changes in security-provider structure are accounted for?","Reporting changes; enforcement intensity; conflict; institutional substitution.",
GAP-007,strong,temporal_resolution,system_states,"Annual indicators can miss rapid transitions and regime shifts.","Boom, decline, reconstruction and consolidation can occur between annual observations.",PARTIALLY_KNOWN,"Use event/change-point metadata and non-annual observations where defensible.","Would the inferred transition timing change materially with monthly/quarterly data?","Seasonality; reporting delays; boundary changes; temporary shocks.",
GAP-008,strong,measurement,definitions,"Variable definitions, boundaries and denominators change over time and across sources.","Apparent trends may be measurement artefacts.",PARTIALLY_KNOWN,"Require definition, methodology, denominator, boundary and source-vintage metadata.","Does the relationship survive a defensible harmonisation or source-stratified analysis?","Real change; reclassification; survey redesign; boundary revisions.",
GAP-009,strong,methodology,agent_analysis,"Proposed patterns can become stories if alternative explanations and falsification tests are not required.","Epistemic guardrails are necessary for autonomous discovery.",PARTIALLY_KNOWN,"Require alternative explanations, confounders, reverse causality, selection bias, measurement change and falsification tests.","What observation would make the obvious interpretation wrong?","Confirmation bias; collider bias; omitted variables; model selection.",
GAP-010,strong,coverage,cultural_flows,"Cross-border cultural influence needs exposure, consumption, adoption, local reproduction, hybridisation and return-flow measures.","A single cultural-share number hides direction and mutation.",PARTIALLY_KNOWN,"Track directed place-time flows and variant parentage.","Does an apparent foreign-origin influence disappear when local reproduction and hybridisation are separated?","Common global platforms; language; migration; ownership; production location.",
GAP-011,strong,paired_distinction,employment,"Employed people / vacancies / advertised jobs / filled jobs are not equivalent and are rarely measured consistently.","Using one as a proxy for another obscures labour market structure.",UNKNOWN,"Collect all four measures with consistent definitions and denominators for comparable places.","Would labour market analysis change materially if all four distinctions were properly recorded?","Confirmation bias; poor survey design; administrative data limitations.",
GAP-012,strong,paired_distinction,housing,"Housing stock / occupied housing / available housing are not equivalent and are rarely measured consistently.","Using one as a proxy for another obscures housing conditions.",UNKNOWN,"Collect all three measures with consistent definitions and denominators for comparable places.","Would housing analysis change materially if all three distinctions were properly recorded?","Administrative data limitations; definition variability; boundary changes.",
GAP-013,strong,paired_distinction,crime,"Crime occurring / reported / recorded / arrests / prosecutions / convictions are not equivalent and are rarely measured consistently.","Using one as a proxy for another obscures criminal justice dynamics.",UNKNOWN,"Collect all six measures with consistent definitions and boundaries for comparable places.","Would criminal justice analysis change materially if all six distinctions were properly recorded?","Reporting changes; reclassification; enforcement intensity; legal process differences.",
GAP-014,strong,paired_distinction,health,"Incidence / prevalence / diagnosis / mortality are not equivalent and are rarely measured consistently.","Using one as a proxy for another obscures health dynamics.",UNKNOWN,"Collect all four measures with consistent definitions and denominators for comparable places.","Would health analysis change materially if all four distinctions were properly recorded?","Diagnosis coding changes; definition drift; demographic shifts.",
GAP-015,strong,paired_distinction,cultural,"Cultural exposure / consumption / adoption / production / influence are not equivalent and are rarely measured consistently.","Using one as a proxy for another obscures cultural dynamics.",UNKNOWN,"Collect all five measures with consistent definitions for comparable places and periods.","Would cultural analysis change materially if all five distinctions were properly recorded?","Platform metrics; consumption data; ownership records do not capture adoption or influence.",
GAP-016,high,coverage,language_evolution,"Word-level language evolution with reliable dates and geographic provenance is not systematically tracked.","Borrowing direction, semantic change and geographic spread lack reliable provenance.",UNKNOWN,"Build a word-level language evolution register with etymology, borrowing direction, geographic spread and semantic change timestamps.","Would language change analysis be improved with word-level provenance?","Common global platforms; language leveling; migration patterns.",
GAP-017,high,coverage,informal_workers,"Informal workers and their characteristics are not captured in formal labour statistics.","The informal workforce can be substantial yet invisible to policy and planning.",PARTIALLY_KNOWN,"Survey informal employment; cross-reference with tax informal sector estimates; collect occupation and sector data.","Does the informal workforce share change when formal employment shifts?","Economic cycles; digitisation; regulatory changes.",
GAP-018,high,measurement,attention_vs_presence,"Attention and information production are not equivalent to physical presence or importance.","High attention does not guarantee local influence or importance.",PARTIALLY_KNOWN,"Separate explicit, inferred and unknown connection to a place; measure information production separately from attention.","Does high external attention predict local information capacity, or can the two diverge?","Tourism; crisis coverage; platform effects; population size.",
GAP-019,high,methodology,cross-country_comparability,"Comparable small-area socioeconomic data across every country/territory is not available.","Aggregating to national level loses local variation; local data uses incompatible definitions.",UNKNOWN,"Produce harmonised small-area estimates with documented definitions, boundaries and methods for every country.","Would cross-country analysis be improved with truly comparable small-area data?","Boundary revisions; survey redesign; administrative data differences.",
GAP-020,high,temporal_resolution,long_historical_stable,"Long historical series with stable geographic boundaries is not available.","Annual data with changing boundaries prevents observing true long-term trends.",PARTIALLY_KNOWN,"Reconstruct historical series using consistent boundary definitions and documented methodology changes.","Would trend analysis be improved with long series and stable boundaries?","Boundary revisions; survey redesign; administrative data differences."
```

# The World We Make — Project Brief

## Purpose

Build a broad, global, longitudinal representation of the world that allows humans and autonomous AI systems to discover relationships, patterns, transitions and anomalies that were not specified in advance.

The central instruction to an analysing agent is:

> **Find something happening in this data that we haven't noticed.**

The dataset must remain larger than the original questions that motivated it. Known or reasonably suspected relationships should be measured deliberately; plausibly connected variables should also be collected; apparently unrelated variables should be retained where useful because unexpected connections are a primary research goal.

## Core principle

We are not trying to teach the AI which relationship to find. We are trying to give it enough of the world that it can surprise us.

Preserve null results, contradictions, missingness, uncertainty, source methodology, alternative explanations, geographic boundary changes, changes in definitions, and differences between descriptive, correlational and causal evidence.

## Scope

Global by default: countries, territories, cities, towns, villages, suburbs, rural communities, islands, agricultural areas, resource towns, fishing communities, border settlements, boom and decline settlements, refugee-hosting areas, conflict zones and postwar communities. Historical backdating should go as far as defensible evidence allows.

Do not assume that a national index, definition or geography is directly comparable with another country's. Preserve native systems and crosswalk only where defensible.

## Architecture

Prefer long-form observations over a single enormous wide table.

Core entities include:

- Places
- Time
- Variables
- Observations
- Sources
- Events
- People/households only in lawful, appropriately anonymised or aggregate form
- Businesses and organisations
- Charities/interventions
- Population and migration
- Housing and households
- Employment and job opportunities
- Education and career trajectories
- Health, medical conditions and healthcare
- Crime, policing and criminal justice
- Drugs and alcohol
- Economy, markets and household finances
- Property and built environment
- Government, institutions, law and political behaviour
- Transport and movement
- Environment, weather, ecology and energy
- Agriculture, food, production, trade and material flows
- Technology and innovation
- Information, news and search behaviour
- Culture, media and language
- Place engagement and collective attention
- Place outputs
- Cross-border cultural flows

### Places

`place_id`, `country`, `admin1`, `admin2`, `place_name`, `place_type`, `latitude`, `longitude`, `population`, `boundary_version`, `urban_rural`, `notes`

### Time

`time_id`, `period_start`, `period_end`, `year`, `month`, `quarter`, `season`, `data_frequency`

### Observations

`observation_id`, `place_id`, `time_id`, `variable_id`, `value`, `unit`, `category`, `sub_category`, `evidence_type`, `source_id`, `confidence`, `missing_reason`, `caveat`, `notes`

### Sources

`source_id`, `publisher`, `dataset_name`, `url`, `access_date`, `geographic_coverage`, `temporal_coverage`, `method`, `license`, `known_biases`, `definition_notes`

### Variables

`variable_id`, `domain`, `variable_name`, `definition`, `unit`, `preferred_frequency`, `sensitivity`, `causal_role`, `known_confounders`, `notes`

## Universal events

Maintain an event layer with start/end dates, place, event type, description, scale, actor/category, affected population, expected/direct/observed effects, source and confidence.

Examples include business openings/closures, infrastructure changes, laws, tax changes, hospital/school openings or closures, disasters, conflict, migration shocks, refugee influx, cultural events, pandemics, major employers arriving/leaving and financial crises.

Events are explicit change points that agents can connect to subsequent observations without assuming causality.

## Place metabolism

The project should measure what a place **produces, consumes, attracts, retains, transforms and exports**.

This includes material, economic, knowledge, creative, cultural, social, information, innovation, demographic, ecological, health, human-capability, physical, political, conflict and lifestyle outputs.

Absence is also data where defensible: absence of a newspaper, theatre, youth club, startup formation, cultural event, service, independent retailer, etc. should be representable without turning absence into a moral judgement.

Population growth is not physical growth. Employment is not job availability. Housing stock is not occupied or available housing. Recorded crime is not crime occurring. Search interest is not consumption. Disease diagnosis is not incidence. These distinctions must remain explicit.

## Culture as a bidirectional evolutionary system

Culture must not be modelled as one-way diffusion from an origin to a destination.

A cultural form can move:

`origin → encounter → exposure → adoption → localisation → mutation → re-export → re-adoption → further mutation → ...`

A transformed version can return to its previous source and influence the source culture. The same phenomenon may therefore have many successive geographically situated variants.

Track cultural phenomena as time-dependent networks of variants, not only as origin/destination counts.

### Cultural trend lifecycle

Track, where evidence permits:

- earliest known occurrence
- first documented occurrence
- emergence
- origin
- spread start
- arrival in each destination
- exposure
- adoption
- adoption rate
- peak
- alteration/localisation
- local reproduction
- hybridisation
- re-export
- feedback/return
- persistence
- decline
- transformation
- visibility death
- participation/commercial/local/global death
- revival

Do not require a linear lifecycle. Branching, loops, dormant periods and simultaneous variants are expected.

### Cultural origin is multidimensional

Keep separate fields for creative origin, earliest known occurrence, cultural tradition/source, commercial origin, modern popularisation, production location, creator nationality, ownership, language and influence. Do not collapse these into one simplistic country-of-origin field.

### Cross-border cultural flows

For origin × destination × domain × time, measure separate layers where possible:

1. exposure/availability
2. consumption
3. attention
4. economic penetration
5. participation/adoption
6. local reproduction
7. hybridisation
8. return flow

Possible domains include music, film, television, anime, games, literature, food, fashion, sport, language, design, memes and other cultural practices.

The system should be capable of representing flows such as `Japan₀ → USA₀ → Japan₁ → USA₁`, where each stage is a changed cultural variant.

## Language evolution

Language is a major cultural-flow layer. Track languages spoken, geographic distribution, language change, bilingualism, education/media/business use and language-related migration effects.

Where evidence permits, track words and terms individually:

- word/term identity
- language
- earliest known date/place
- first documented use
- origin language/place
- etymology
- entry into destination language
- geographic spread
- frequency/adoption over time
- original meaning
- destination meaning
- semantic change
- spelling/pronunciation change
- grammatical adaptation
- derivatives and compounds
- hybrid terms
- source languages contributing vocabulary
- borrowing direction
- reciprocal borrowing
- decline/obsolescence
- revival

Important phenomenon: a borrowed word or expression can be altered in a destination and later return to the original language/cultural environment in altered form. This should be representable as a feedback loop rather than being flattened into a static etymology.

Aggregate measures include new words per period, obsolete words, foreign-origin additions, borrowing rates by source/destination, reciprocal borrowing, vocabulary change and bursts associated with technology, migration, conflict, media or other events.

## Interventions and beneficiaries

Track charities and other interventions by type, intervention, direct benefit, beneficiaries and secondary/tertiary beneficiaries. Preserve the distinction between observed effects and hypothesised mechanisms.

Represent chains such as:

`immediate beneficiary → secondary beneficiary → tertiary beneficiary`

Include welfare, housing, food, medical, addiction, childcare, education, employment and legal interventions alongside public-realm, cultural, environmental, infrastructure, business and community interventions.

## Political systems and behaviour

Do not include individual politician names as a core dataset requirement.

Separate:

- formal party identity
- party composition
- observed policy behaviour
- inferred policy/ideological alignment
- party–behaviour divergence

Infer behavioural alignment from actions where appropriate rather than self-described ideology. Use multiple policy dimensions rather than a single left/right score. Aggregate legislatures/governments using counts and percentages.

## Criminal justice

Preserve the chain:

`crime occurring → reported → recorded → investigated → prosecuted → convicted/acquitted → sentenced → imprisoned/community punishment → released → reoffending`

Track law changes and enforcement changes separately. Recorded crime and drug seizures can change because reporting, recording or enforcement changed.

## Health

Distinguish:

`risk/exposure → incidence → prevalence → diagnosis → treatment → utilisation → outcome → mortality`

Maintain dedicated layers for medical conditions, healthcare services, healthcare costs, medical utilisation, outcomes, risk exposures, pharmaceuticals and disability/care.

## Employment

Distinguish:

`people employed ≠ jobs available ≠ jobs advertised ≠ jobs actually filled`

Job listings should be classified probabilistically where possible as genuine, duplicate, intermediary, scam/fake, dormant or unverifiable, with confidence and evidence.

## Housing and built environment

Distinguish housing stock, occupied housing and available housing. Track tenure, rents, ownership, homelessness, evictions, vacancy, second homes, short-term rentals, construction, demolition, refurbishment, density, land use, infrastructure, planning and physical change through maps/satellite imagery where available.

## Information and attention

Measure information production and attention without equating them with physical presence, importance or affection.

Examples: Wikipedia/community edits, news, local journalism, forums, social media, reviews, photos, searches, check-ins, consultations, petitions and open-data contributions.

Where contributor identity is lawful to retain, use pseudonymous IDs. Distinguish explicit, inferred and unknown connection to a place.

## Data quality states

Use explicit status labels:

- `KNOWN` — good measurement
- `PARTIALLY_KNOWN` — incomplete/inconsistent
- `INFERRED` — estimated from other observations
- `UNKNOWN` — no information
- `UNMEASURABLE` — theoretically relevant but no defensible observation

Every observation should retain provenance, methodology, uncertainty and caveats where available.

## Recursive expansion

The project itself should be able to discover its missing dimensions:

`GLOBAL DATASET → AI AUDIT → MISSING VARIABLES/DATASETS → HUMAN/AGENT REVIEW → DATASET EXPANSION → RE-AUDIT`

A standing question should always remain:

> **What important thing are we forgetting to measure?**

## Public research model

The repository is intended to function as a combination of public dataset, scientific project, collaborative research system and version-controlled knowledge base.

People and AI agents should be able to propose:

- new variables
- new sources
- schema changes
- data corrections
- missing data
- contradictions
- methodological problems
- geographic gaps
- historical gaps
- possible patterns
- possible causal links
- analyses

Useful proposals should be auditable, reviewable and reversible. Rejected ideas can remain documented rather than silently disappearing.

## Suggested repository structure

```text
/schema
/data
/sources
/variables
/geographies
/crosswalks
/events
/analyses
/agent-proposals
/methodology
/known-gaps
/decisions
/changelog
```

## Agent audit prompt

> Here is the current project specification. Audit it independently. What have we forgotten? What important variables, datasets, geographic systems, time scales, measurement distinctions, feedback loops or biases are missing? Do not optimise the project toward the original hypothesis. Identify both obvious omissions and surprising dimensions.

## Guiding principle

**The brief describes the system. The data describes the world.**
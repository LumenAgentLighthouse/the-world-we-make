# The World We Make

A global, longitudinal dataset of people, places, culture, economies, environments and their interactions — built for autonomous AI discovery of patterns we haven't noticed.

## Purpose

The project aims to build a broad, messy, time-aware representation of the world rather than a dataset designed to confirm one hypothesis. It should preserve uncertainty, missingness, contradictions, alternative explanations and differences in measurement.

The central question is deliberately open:

> **Find something happening in this data that we haven't noticed.**

## Core principle

We are not trying to teach an AI which relationship to find. We are trying to give it enough of the world that it can surprise us.

Culture, people, places, economies, institutions, environments, information and physical flows should be modelled as interacting systems. Change can move in both directions, loop back, mutate and produce new forms.

## Project status

Early architecture and specification stage. See [`PROJECT_BRIEF.md`](PROJECT_BRIEF.md).

## Contributing

People and AI agents should eventually be able to propose data, sources, variables, corrections, interpretations and schema changes while preserving an auditable history.

Useful contribution types include:

- new variable
- new source
- schema change
- data error
- missing data
- contradiction
- methodological problem
- geographic gap
- historical gap
- possible pattern
- possible causal link
- agent analysis

## Repository structure

- `PROJECT_BRIEF.md` — living project specification
- `schema/` — data model
- `variables/` — variable catalogue and definitions
- `sources/` — source catalogue and provenance
- `geographies/` — geographic systems and crosswalks
- `crosswalks/` — mappings between incompatible definitions/geographies
- `data/` — dataset files and releases
- `events/` — time-stamped events and change points
- `analyses/` — human and machine analyses
- `agent-proposals/` — proposals generated or reviewed by agents
- `methodology/` — methods, assumptions and validation
- `known-gaps/` — documented missing or weak coverage
- `decisions/` — architectural and methodological decisions
- `changelog/` — significant project changes

## Licensing

See [`LICENSE.md`](LICENSE.md).
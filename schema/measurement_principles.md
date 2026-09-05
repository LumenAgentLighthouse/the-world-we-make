# Measurement principles

The dataset is designed to preserve distinctions that are commonly collapsed in public statistics.

## Observation before interpretation

Store what was measured separately from what an analyst thinks it means. A derived variable must identify its inputs and transformation.

## Time

Prefer explicit intervals and frequencies. Preserve publication date separately from observation date. A source published in 2026 may describe 2024 conditions.

## Geography

Preserve the source geography and its boundary version. Crosswalks are transformations, not facts about the original geography.

## Denominators

Every rate should retain its denominator definition. A percentage of residents, households, workers, internet users, voters or searchers are not interchangeable.

## Exposure versus behaviour

Availability, attention, participation, consumption, adoption and production are separate observations.

## Event versus effect

Events identify possible change points. They do not establish causality. Expected, direct and observed effects must remain separate.

## Missingness

Missing data should not automatically become zero. Record why data are absent when known: not collected, suppressed, inaccessible, not applicable, below threshold, lost historically, incompatible definition, etc.

## Contradictions

Conflicting sources should normally coexist. Resolution should be represented as a later judgement with evidence, not by silently deleting the disagreement.

## Measurement changes

A change in an observed series may reflect a real-world change, a definition change, a collection-method change, a boundary change, a reporting change or a combination.

## Confidence

Confidence should describe confidence in the observation or transformation, not confidence in a causal interpretation.

## Status

Use the controlled evidence status values:

- `KNOWN`
- `PARTIALLY_KNOWN`
- `INFERRED`
- `UNKNOWN`
- `UNMEASURABLE`

## Provenance chain

A derived result should be traceable through:

`derived observation → transformation → input observations → source datasets → original publisher`

The provenance graph is part of the dataset, not an optional annotation.

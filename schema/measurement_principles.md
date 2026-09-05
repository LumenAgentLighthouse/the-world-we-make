# Measurement principles

The dataset is designed to preserve distinctions that are commonly collapsed in public statistics.

## Observation before interpretation

Store what was measured separately from what an analyst thinks it means. A derived variable must identify its inputs and transformation.

## Time

Prefer explicit intervals and frequencies. Preserve publication date separately from observation date. A source published in 2026 may describe 2024 conditions.

## Geography

Preserve the source geography and its boundary version. Crosswalks are transformations, not facts about the original geography.

## Denominators

Every rate, ratio, share, prevalence, incidence measure, per-capita value and index must retain an explicit denominator or reference base. The denominator is part of the claim, not presentation metadata. A percentage of residents, households, workers, internet users, voters or searchers are not interchangeable.

Agents should ask, before comparing or aggregating a rate:

1. What exactly is the numerator?
2. What exactly is the denominator/reference population or base?
3. Could a member of the denominator have been observed for the whole interval?
4. Did the denominator definition, geography, population scope or eligibility rule drift over time?
5. Is the denominator source-specific, modelled, estimated or reconstructed?

A numerically correct rate with the wrong denominator is a measurement error. Never rewrite a denominator to make a percentage comparable, complete or more favourable. If the denominator is unknown or materially changed, preserve the value but mark comparability as limited or unresolved.

## Exposure versus behaviour

Availability, attention, participation, consumption, adoption and production are separate observations.

## Event versus effect

Events identify possible change points. They do not establish causality. Expected, direct and observed effects must remain separate.

## Missingness

Missing data should not automatically become zero. Record why data are absent when known: not collected, suppressed, inaccessible, not applicable, below threshold, lost historically, incompatible definition, etc.

## Null results

A reproducible non-finding can be valuable evidence about the current limits of the dataset. Record what was searched, the scope, variables and sources checked, search period, limitations and an expiry/review point. A null result is not proof that the phenomenon does not exist.

## Contradictions

Conflicting sources should normally coexist. Resolution should be represented as a later judgement with evidence, not by silently deleting the disagreement. When two credible sources disagree, retain both observations, identify whether they actually measure the same concept, record plausible definitional, temporal, geographic, methodological or coverage explanations, and leave the contradiction explicitly unresolved until decisive evidence exists. A later preferred value must never erase the original conflict.

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

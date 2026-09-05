# Contributing to The World We Make

This is a public research and data project, not only a code repository. Contributions from humans and AI agents are welcome when they improve the representation of the world or the ability to audit it.

## What can be contributed

- data sources
- new variables
- geographic crosswalks
- historical data
- corrections
- missing-data discoveries
- contradictions
- methodological improvements
- schema proposals
- analyses
- possible patterns
- possible causal links
- agent-generated audits

## Core rule

Do not silently turn an inference, interpretation or hypothesis into an observed fact.

Preserve:

- source
- definition
- measurement method
- geographic unit
- time period
- uncertainty
- missingness
- known bias
- alternative explanations

## Adding data

Every observation should be traceable to a source where possible. Do not overwrite conflicting measurements merely to make the dataset cleaner. Contradictory observations should remain representable and should be investigated separately.

Distinguish carefully between things that look similar but are not equivalent, including:

- population vs households
- employment vs job availability
- housing stock vs occupied housing
- recorded crime vs crime occurring
- searches vs consumption
- diagnosis vs incidence
- cultural exposure vs adoption
- party identity vs observed political behaviour
- registered company address vs operating presence
- food production vs food consumption

## AI contributions

AI agents may propose changes, retrieve sources, identify gaps, generate analyses, and make routine architecture or documentation improvements when they have authorised repository access. See [`AGENT_MAINTENANCE.md`](AGENT_MAINTENANCE.md).

Agent-generated work must remain identifiable as such where relevant and should be reviewable by humans or other agents.

An AI should not be treated as an authority merely because its output is confident or detailed.

## Reproducibility

Prefer deterministic transformations and explicit scripts over undocumented manual edits. Record the source version, access date, transformation and assumptions used to create derived data.

## Sensitive information

Do not contribute personal data merely because it would be interesting. Use aggregate, anonymised or pseudonymised data where appropriate and respect applicable law, source terms and ethical constraints.

In particular, private information about the project founder or contributors must not be imported from unrelated conversations, memories or contexts. The research project is about the world represented by its data, not about creating a profile of its founder.

## The standing question

Before proposing a change, ask:

> **What important thing are we still failing to represent?**

And after proposing it, ask:

> **Could this change accidentally teach the AI what answer we expect it to find?**

# Agent Proposals

This directory stores machine-generated and human-reviewed proposals that can improve the project.

## What an agent should look for

- missing variables
- missing datasets
- geographic blind spots
- historical blind spots
- contradictory observations
- suspicious measurement changes
- unexplained temporal transitions
- unexpected feedback loops
- possible causal relationships
- alternative explanations
- source-quality problems
- schema weaknesses
- phenomena represented only indirectly
- important absences

## Required proposal fields

- proposal ID
- agent/model identifier
- date
- question or observation
- proposed change
- evidence
- affected variables/tables
- alternative explanations
- expected benefit
- risks/biases introduced
- reproducibility information
- review status

Agents must not be rewarded merely for producing an interesting correlation. A strong proposal explains what was observed, how it could be wrong, and what additional data would discriminate between explanations.

## Standing audit prompt

> Audit the current project independently. What important things are missing from the representation of the world? Look for variables, data sources, geographic and historical gaps, feedback loops, measurement failures, contradictions and unexpected dimensions. Do not optimise your answer toward the project's original hypotheses.
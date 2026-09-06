# Analyses — Sample Audit Findings

These examples demonstrate the required falsification-before-narrative analysis format.

## ANA-001 — Employment vs Unemployment Gap

- Agent/model: Autonomous audit agent
- Date: 2026-09-05
- Question: Why is there a gap between unemployment and employment-rate coverage?
- Method: Compare employment and unemployment variables across seed countries.
- Finding: Employment-rate coverage was much thinner than unemployment-rate coverage in the seed release.
- Alternatives: data lag; source availability; newly introduced variables.
- Falsification: populate comparable employment observations and test whether the apparent gap persists.
- Confidence: PARTIALLY_KNOWN
- Review: PENDING

## ANA-002 — Geographic Coverage Gap

- Question: Does coverage vary across domains?
- Finding: population/economy/health coverage was broader than employment/housing coverage; GDP PPP had wider country coverage.
- Alternatives: source-specific coverage and deliberate seed-stage sequencing.
- Falsification: expand employment/housing coverage and repeat the comparison.
- Confidence: KNOWN
- Review: ACCEPTED

## ANA-003 — Paired Distinction Violation

- Question: Do seed variables comply with paired-distinction rules?
- Finding: the initial seed represented some concepts with single proxies rather than the required distinct measures.
- Alternatives: intentionally minimal proof-of-concept; future-work design rules; documentation predating implementation.
- Falsification: add the paired variables and test whether conclusions change.
- Confidence: KNOWN
- Review: ACCEPTED

## ANA-004 — Domain Absence

- Question: Which documented domains lack seed coverage?
- Finding: several core domains were absent from the earliest seed release.
- Alternatives: planned sequencing or source availability.
- Falsification: compare cross-domain discovery after adding the missing domains.
- Confidence: KNOWN
- Review: ACCEPTED

## Principles

Falsification before narrative; record alternative explanations; reward unexpected discovery; preserve contradictions; prefer reproducible transformations; trace every analysis to its source data.

## Standing question

> What patterns are we missing because we haven't looked at the right variables, places, or time scales?

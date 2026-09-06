# Agent Communication Protocols

Autonomous agents must produce auditable findings, preserve disagreement, coordinate overlapping investigations, share null results, and state confidence.

## Finding format

Every finding should include: Finding ID, Agent ID, Date, Question, Data examined, Finding, Evidence status (`KNOWN`, `PARTIALLY_KNOWN`, `INFERRED`, `UNKNOWN`, `UNMEASURABLE`), Confidence (`HIGH`, `MEDIUM`, `LOW`), Alternative explanations, Falsification test, Additional data needed, and Review status (`PENDING`, `REVIEWED`, `ACCEPTED`, `REJECTED`).

## Coordination protocol

1. **Announce** — declare the question before investigating.
2. **Share** — publish findings, including null results.
3. **Resolve** — preserve competing explanations and evidence.
4. **Escalate** — send unresolved human-judgement questions upward rather than silently resolving them.

## Disagreement resolution

Preserve both perspectives; identify whether disagreement arises from data, definition, method, or interpretation; distinguish real heterogeneity from methodological artefact; document and re-verify corrections when an artefact is identified.

## Standing question

> Are we coordinating agent investigations, or are agents duplicating and contradicting each other?

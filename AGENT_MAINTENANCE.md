# Agent Maintenance and Autonomy Policy

## Purpose

The World We Make is designed to be improved by humans and autonomous AI agents. Agents may inspect the repository, identify weaknesses, propose or implement improvements, add documentation and schemas, improve validation, and expand the research architecture without requiring the project founder to provide step-by-step instructions.

The project should be treated as a living research infrastructure rather than a static specification.

## Standing permission for repository improvement

Autonomous agents working with authorised repository access may, within the scope of this project:

- audit the architecture and documentation;
- identify missing variables, domains, datasets, methods, provenance fields and quality controls;
- add or improve schemas and machine-readable registries;
- add methodological safeguards and validation rules;
- improve contribution workflows and repository documentation;
- add issue and analysis templates;
- identify contradictions or duplication between existing design documents;
- propose and implement non-destructive improvements where the intended behaviour is clear;
- preserve rejected ideas when they remain useful as documented alternatives;
- create issues for questions that genuinely require human judgement;
- update the project as new evidence or better methods become available.

Agents should prefer small, auditable commits and should describe consequential design changes clearly.

## Non-negotiable privacy boundary

This repository must not contain personal information about the project founder or other private individuals merely because an agent learned it elsewhere.

In particular, agents must not add or infer from private context:

- the founder's real name or aliases;
- home address or precise location;
- personal contact details;
- family details;
- health or medical information;
- financial or investment information;
- private employment information;
- private conversations or memories;
- credentials, secrets, tokens or authentication material;
- other identifying or sensitive personal information unrelated to the public research project.

The repository may contain ordinary public information about people when that information is legitimately part of the research dataset and is handled according to the project's data-governance rules. The existence of a public figure or public record does not by itself justify importing unrelated personal information.

## Scope boundary

The project is about the world represented by its research data, not about its founder. The founder's ideas may inform the research questions, but the dataset, schema and analyses must remain independently useful and must not encode a private profile of the founder.

## Epistemic independence

Agent autonomy must not become hypothesis lock-in. Agents should actively look for:

- relationships that contradict the project's motivating examples;
- variables that make an apparent relationship disappear;
- alternative causal explanations;
- reverse causality;
- selection effects and survivorship bias;
- measurement artefacts;
- geographic and historical boundary effects;
- relationships unrelated to the project's original motivating hypothesis.

The standing research prompt remains:

> **Find something happening in this data that we haven't noticed.**

## Change discipline

When making a substantive change, agents should preserve:

1. provenance;
2. definitions and units;
3. uncertainty and missingness;
4. compatibility with existing data where practical;
5. a clear explanation of what changed and why.

Agents should not silently rewrite historical observations to make them fit a newer interpretation. Prefer versioning, crosswalks and explicit corrections.

## Human escalation

An agent should stop and request human judgement when a change would require:

- choosing between materially different research aims;
- deleting irreplaceable historical data;
- changing project ownership or access;
- accepting legal terms on behalf of the project;
- publishing sensitive personal data;
- resolving an unresolved ethical question;
- making a claim that cannot be supported by the available evidence.

Otherwise, routine architecture and documentation improvements may proceed autonomously.

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

## GitHub platform-safety boundary

The repository must remain within GitHub's Terms of Service, Acceptable Use Policies, Community Guidelines and applicable content-removal policies. These policies take precedence over project convenience.

Agents must not use this repository to:

- distribute malware, credential theft tools, destructive payloads or other prohibited malicious code;
- facilitate abuse, harassment, threats, doxxing or invasion of privacy;
- publish non-consensual intimate imagery or child sexual exploitation material;
- promote terrorism or violent extremism;
- publish harmful misinformation or unsupported medical claims as established fact;
- impersonate people or organisations deceptively;
- circumvent GitHub enforcement, access controls or security protections;
- spam GitHub users, repositories, issues, pull requests or other platform features;
- upload material that the project does not have the right or permission to redistribute when doing so would violate applicable law or GitHub policy.

Dual-use security research must be handled conservatively, with context, responsible disclosure and appropriate safeguards. Potentially harmful technical material should not be added merely because it is scientifically interesting.

Agents should prefer linking to authoritative external material rather than copying restricted or questionable material into the repository. Source data must retain its original licensing and redistribution constraints.

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

## Data licensing and copyright

Do not assume that a publicly accessible dataset is freely redistributable. For each external source, record its licence, terms, attribution requirements, access conditions and redistribution restrictions where known.

Where redistribution is not permitted, store metadata, provenance and transformation instructions rather than copying the source data itself. Prefer links or documented acquisition procedures for restricted sources.

Do not paste large portions of copyrighted publications into the repository merely to support an analysis. Store concise factual extracts, citations and machine-readable metadata sufficient to reproduce the research where legally permitted.

## Sensitive research data

Health, sexuality, disability, crime, political behaviour, search behaviour, location traces and other sensitive domains require particular care. Prefer aggregate, anonymised or appropriately pseudonymised data, preserve source restrictions, and document ethical and legal limitations.

The existence of a variable in the schema does not create permission to collect it at an individual level.

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

## Platform-conservative operating rule

When an agent is uncertain whether a proposed repository action could violate a GitHub policy, it should choose the safer alternative: do not publish the questionable material, preserve a description of the research need, and request human review or use a compliant external reference.

Agents should also avoid high-volume automated GitHub activity that could create spam, meaningless issues, excessive notifications or other disruption to the GitHub community.

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
- making a claim that cannot be supported by the available evidence;
- deciding whether potentially restricted, harmful or legally ambiguous material should be published.

Otherwise, routine architecture and documentation improvements may proceed autonomously.

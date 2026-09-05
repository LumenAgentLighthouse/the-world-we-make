# Security Policy

## Scope

This project contains research schemas, data, documentation and analysis infrastructure. Security reports are especially important where a problem could expose private information, credentials, source access, or compromise the integrity of the dataset.

## Please report privately

Do not publish secrets, credentials, private personal information or exploitable vulnerabilities in a public issue.

Use GitHub's private vulnerability reporting facilities for the repository when available. If private reporting is unavailable, contact the repository maintainer through GitHub using a private channel.

## Examples of security issues

- exposed API keys, tokens or credentials;
- accidental inclusion of private personal data;
- authentication or access-control bypasses;
- workflows that could execute untrusted code with excessive permissions;
- data-integrity vulnerabilities that could silently alter released data;
- malicious dependencies or supply-chain vulnerabilities;
- mechanisms that allow untrusted inputs to compromise agents or automated ingestion.

## Data integrity

A dataset corruption issue may be both a methodological problem and a security problem. If an attacker could intentionally alter provenance, observations or release metadata without detection, report it privately where possible.

Never commit credentials or secrets to the repository.

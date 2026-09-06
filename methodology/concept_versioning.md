# Concept Versioning

Track changes in variable definitions, schemas, units, boundaries, and conceptual frameworks so measurement changes are not mistaken for real-world trends.

## Concept record

- Concept ID
- Concept name
- Semantic version
- Effective date
- Change type: ADDED, MODIFIED, DEPRECATED, RENAMED
- Previous version
- Definition change
- Unit change
- Boundary change
- Impact assessment
- Crosswalk, where available

## Version change types

- **MAJOR** — breaks historical comparability.
- **MINOR** — refines a definition while comparability can be preserved with a crosswalk.
- **PATCH** — metadata clarification without substantive change.

## Rules

1. Never silently change a definition.
2. Document why it changed.
3. Provide a crosswalk where possible.
4. Do not backdate changes.
5. Preserve previous versions.
6. Mark deprecated versions rather than deleting them.

## Standing question

> Are we tracking how our concepts change over time, or only the data we measure with them?

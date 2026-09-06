# Crosswalks — Domain-Specific Mappings

Crosswalks map incompatible definitions, units, boundaries, and measurement systems without erasing native provenance.

## Design rules

1. Document source and target definitions.
2. Document the transformation method.
3. State assumptions and limitations.
4. State confidence.
5. State what would falsify the mapping.
6. Version and date the crosswalk.
7. Preserve original source metadata.

## Initial domain crosswalks

### Education
- Source: UNESCO Institute for Statistics
- Target: World Bank Education Statistics
- Issue: gross vs net enrollment definitions
- Method: use source metadata to document any adjustment
- Confidence: MEDIUM
- Falsification: compare with independent household surveys

### Health
- Source: WHO Global Health Observatory
- Target: World Bank HNP Statistics
- Issue: cause-of-death coding differences, including ICD versions
- Method: preserve both versions and use documented WHO crosswalk tables
- Confidence: HIGH
- Falsification: compare with hospital discharge data

### Employment
- Source: ILO Modelled Estimates
- Target: national labour-force surveys
- Issue: labour-force definitions differ
- Method: preserve both as separate variables and document the definitions
- Confidence: MEDIUM
- Falsification: compare after survey revisions

### Geography
- Source: ISO 3166-1 numeric codes
- Target: national administrative division codes
- Method: aggregate administrative observations to country level only where defensible
- Confidence: HIGH
- Falsification: aggregated values should reproduce source totals

### Temporal
- Source: nearest available year
- Target: reference year
- Method: retain both source year and reference year; never silently substitute
- Confidence: MEDIUM
- Falsification: test substituted values against local trends

### Currency
- Source: local currency
- Target: USD or international dollars
- Method: use documented World Bank exchange-rate or PPP factors and retain the basis
- Confidence: HIGH
- Falsification: compare with independent price studies

## Required fields

Crosswalk ID, source domain, target domain, source definition, target definition, transformation method, confidence, assumptions, limitations, falsification question, creation/verification dates, and status.

## Standing question

> Are we bridging incompatible definitions, or are we pretending they are the same?

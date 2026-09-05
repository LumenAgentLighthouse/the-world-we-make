# Agent analysis output contract

Agent analyses are hypotheses and observations, not facts. Every analysis should be reproducible from repository data and should state what would falsify it.

## Required fields

- `analysis_id`: stable identifier
- `created_at`: UTC timestamp
- `agent`: model or system identifier
- `data_version`: repository commit or release used
- `question`: the open question investigated
- `scope`: places, periods, domains and filters included
- `observations_used`: source/observation identifiers or query definition
- `methods`: transformations, comparisons, statistical methods or graph procedures
- `finding`: concise description of the observed pattern
- `strength`: descriptive | weak_correlational | correlational | quasi_experimental | experimental | unknown
- `alternative_explanations`: plausible competing explanations
- `confounders`: known or suspected confounders
- `reverse_causality`: possible | unlikely | unknown | not_applicable
- `measurement_risks`: definition, coverage, reporting, boundary or source limitations
- `missingness`: important missing data or selection effects
- `falsification_test`: what additional evidence could disconfirm the finding
- `next_data_needed`: variables or sources that would improve the test
- `status`: exploratory | reviewed | rejected | superseded

## Rules

1. Do not convert correlation into causation.
2. Do not treat search interest, recorded crime, diagnoses, job adverts, or similar proxies as their underlying real-world quantity.
3. Preserve null, contradictory and missing observations.
4. Prefer multiple independent sources where practical.
5. Do not publish personal or re-identifiable information merely because it could improve prediction.
6. Unexpected findings should be retained even when they contradict the motivating hypothesis.
7. Every derived measure must retain lineage to the observations and source definitions from which it was calculated.

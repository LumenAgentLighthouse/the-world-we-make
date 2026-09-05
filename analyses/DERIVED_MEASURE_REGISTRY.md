# Derived measure registry

Derived measures are hypotheses or transformations over observed data. They are never substitutes for the underlying observations.

| derived_id | name | inputs | interpretation | main risks |
|---|---|---|---|---|
| local_production_retention | local production retained locally | production, local consumption, exports | approximate share of local output remaining for local use | inventories, re-export, boundary mismatch |
| local_consumption_coverage | local consumption covered by local production | local production, imports, local consumption | approximate local supply coverage | consumption estimates, stock changes, trade boundaries |
| rent_to_income | housing cost burden | rent, disposable income | local housing-cost pressure | household composition, gross/net definitions |
| price_to_income | property affordability | house price, income | property price relative to income | transaction mix, property type, household income |
| criminal_justice_intensity | justice-system activity relative to social conditions | recorded crime, arrests, prosecution, imprisonment, probation, population | descriptive intensity measure | reporting, enforcement policy, legal definitions |
| party_behaviour_divergence | distance between formal political identity and observed policy behaviour | party identity, votes, legislation, spending, policy actions | multidimensional divergence | coding choices, incomplete policy coverage |
| cultural_adoption_ratio | adoption relative to exposure | exposure, consumption, participation/adoption | distinguishes availability from uptake | denominator choice, digital measurement |
| cultural_return_flow | re-import of a locally altered cultural form | origin, destination, variant lineage, later origin observations | identifies feedback loops in cultural evolution | incomplete variant histories |
| vocabulary_borrowing_share | share of newly documented words with external origin | new words, etymology/origin classifications | descriptive language-flow measure | dictionaries, documentation lag, disputed etymologies |

## Rules

- Publish the formula and numerator/denominator definitions with every computed value.
- Keep source observations available for re-computation.
- Never interpret a derived ratio as causal by default.
- Do not compare ratios across places unless definitions and denominators are defensibly comparable.
- Where a denominator can be zero, undefined, or estimated, preserve that state rather than forcing a value.

# Variable registry

Machine-readable variable definitions should eventually live here alongside the human-readable catalogue. IDs are stable even when definitions are revised; revisions should be recorded rather than silently overwriting meaning.

| variable_id | domain | variable_name | unit | preferred_frequency | sensitivity | causal_role |
|---|---|---|---|---|---|---|
| labour_unemployment_rate | employment | unemployment rate | % of labour force | annual/monthly | aggregate | outcome/context |
| electricity_access_share | energy | access to electricity | % population | annual | aggregate | infrastructure/context |
| fixed_broadband_subscriptions | technology | fixed broadband subscriptions | subscriptions | annual | aggregate | infrastructure/context |
| fixed_broadband_subscriptions_per_100 | technology | fixed broadband subscriptions per 100 people | subscriptions per 100 people | annual | aggregate | infrastructure/context |
| population_total | population | total population | persons | annual | aggregate | exposure/context |
| net_migration | population | net migration | persons | annual | aggregate | outcome/exposure |
| life_expectancy | health | life expectancy at birth | years | annual | aggregate | outcome |
| electricity_consumption_per_capita | energy | electricity consumption per capita | kWh/person | annual | aggregate | exposure |
| co2_emissions_per_capita | environment | CO2 emissions per capita | tonnes/person | annual | aggregate | exposure |
| urban_population_share | built_environment | urban population share | % population | annual | aggregate | context |

## Registry rules

- A variable ID identifies a concept, not a particular source column.
- Source-specific definitions remain in the source catalogue.
- Do not silently merge variables with different denominators, populations, age ranges, currencies, geographic systems or estimation methods.
- When a source reports a total and a rate, register them as distinct variables.
- Derived variables must identify their parent variables and transformation.
- Sensitive variables require an explicit aggregation/ethics review before publication.

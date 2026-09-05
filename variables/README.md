# Variable Catalogue

The variable catalogue is the semantic contract for the dataset. A variable should describe an observable quantity or explicitly defined derived measure, not a vague concept.

## Initial domains

- population
- migration
- fertility
- mortality
- households
- housing
- employment
- job opportunities
- education
- careers
- health
- medical conditions
- healthcare
- drugs
- alcohol
- crime
- policing
- criminal justice
- economy
- markets
- household finances
- property
- businesses
- charities/interventions
- government/institutions
- politics
- law
- transport
- environment
- weather
- ecology
- energy
- agriculture
- food
- production
- trade
- material flows
- technology
- innovation
- news
- information
- search behaviour
- place engagement
- culture
- media
- language
- cultural flows
- place outputs

## Variable design rules

Every variable should document:

1. What exactly is being measured?
2. What is the unit?
3. What is the population/base/denominator?
4. At what geographic resolution can it be observed?
5. At what temporal resolution?
6. What is the source?
7. What definition did the source use?
8. What changed between historical versions?
9. What biases or coverage limitations are known?
10. Is the measure observed, estimated, inferred or derived?
11. What superficially similar measures must not be substituted for it?

## Important paired distinctions

These should remain separate variables whenever possible:

- incidence / prevalence / diagnosis / mortality
- employed people / vacancies / advertised jobs / filled jobs
- population / households / household size
- housing stock / occupied housing / available housing
- crime / reported crime / recorded crime / arrests / prosecutions / convictions
- drug consumption / treatment / seizures / overdose
- search interest / attention / consumption / spending
- cultural exposure / consumption / adoption / production / influence
- party identity / policy behaviour / inferred alignment
- physical growth / population growth
- origin / ownership / production location / language / influence

## Cultural and language variables

For cultural phenomena, favour measurements that permit reconstruction of a lifecycle and feedback loops: emergence, arrival, adoption, alteration, local reproduction, re-export, return, decline, transformation and revival.

For words and expressions, retain earliest evidence, borrowing direction, frequency, semantic change, grammatical adaptation, geographic spread and reciprocal borrowing.

## Derived variables

Derived metrics should never overwrite their inputs. Store the formula, inputs, assumptions, version and calculation date. A derived relationship must remain distinguishable from an observed fact.
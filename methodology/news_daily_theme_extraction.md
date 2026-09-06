# Daily news theme extraction

The project should treat news as an information/attention layer rather than as a direct census of reality.

## Sources

Primary historical sources include Europeana Newspapers, Delpher, Chronicling America, the British Newspaper Archive, Trove, BelgicaPress and Gallica/Europeana Newspapers OCR. For 1979-present, GDELT provides a global machine-readable layer of events, themes, entities, locations and tone.

## Daily record design

For each publication date and geographic unit, derive counts or normalized shares for themes such as weather, food, agriculture, labour, housing, crime, health, migration, war/conflict, politics, markets, technology, transport, education, culture, religion, sport, disasters and local civic life.

Retain: source title, publication date, place of publication, place mentioned, article identifier, OCR confidence when available, theme, theme score/count, language, section/page, extraction method and source URL/identifier.

Do not convert article frequency directly into real-world incidence. A theme is an observation of attention/representation. Compare it with physical, administrative and survey observations to test whether changes in news attention track changes in the underlying world.

## Historical handling

OCR errors, missing issues, title survival, censorship, editorial policy, ownership, language and digitisation selection all create structured bias. Missing newspaper records must remain missing rather than being treated as zero attention.

## Relationship layer

Daily news themes should be linkable to weather, disasters, prices, migration, disease, crime, elections, strikes, transport disruption, technological adoption and cultural diffusion. This creates a route for discovering whether attention precedes, follows or diverges from measurable changes elsewhere in the dataset.

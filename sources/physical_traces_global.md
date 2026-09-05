# Global Physical Traces of Human Activity

These sources add measurable physical traces of human activity to the dataset. They are intentionally treated as observations, not direct measures of behaviour or causal explanations.

## 1. Night-time light emissions

### NASA Black Marble / VIIRS
- **Source:** NASA VIIRS Black Marble
- **Coverage:** Global
- **Temporal coverage:** 2012-present
- **Frequency:** Daily, monthly and yearly products
- **Spatial resolution:** Approximately 500 m for the daily products
- **Useful variables:** nighttime radiance; corrected nighttime light; quality flags; cloud/snow/observation quality
- **Potential interpretation:** human activity intensity, electrification, infrastructure use, disruption, recovery, urban expansion and temporal shocks
- **Important caveats:** light is not equivalent to economic activity; industrial lighting, gas flaring, seasonal effects, cloud/snow and changes in sensor/product processing can affect measurements.
- **Primary source:** https://earthdata.nasa.gov/data/catalog/lpcloud-vnp46a2-002
- **Product:** VNP46A2 / related Black Marble products
- **License/access:** Public NASA Earth science data

### World Bank Space2Stats Black Marble
- **Source:** World Bank Space2Stats
- **Coverage:** Global administrative areas, including ADM2
- **Temporal coverage:** 2012-2025 in the current catalogue
- **Frequency:** Monthly and annual
- **Useful variables:** sum, mean and distributional nighttime-light statistics plus quality measures
- **Why useful here:** pre-aggregated data substantially reduces the barrier to joining satellite observations to the project's place/time model.
- **Source:** https://datacatalog.worldbank.org/search/dataset/0066940/space2stats-monthly-annual-black-marble-nighttime-lights
- **License:** CC BY 4.0

## 2. Wastewater epidemiology and metabolite traces

Wastewater can provide population-level measurements of substances entering sewer systems, including infectious-disease markers, pharmaceutical residues, illicit-drug metabolites, alcohol metabolites and other chemical indicators.

- **Potential variables:** concentration, estimated mass load, detection/non-detection, sampling frequency, population served, catchment size, analyte, laboratory method and uncertainty.
- **Potential domains:** health, drugs/alcohol, pharmaceuticals, population behaviour, infectious disease, environmental exposure.
- **Critical distinction:** wastewater concentration/load is a measurement of material entering a sampled sewer catchment; it is not automatically equivalent to prevalence, consumption, incidence or individual behaviour.
- **Required metadata:** catchment boundaries, population served, flow, rainfall/overflows, sampling method, storage time, analytical method, limit of detection and normalisation method.
- **Global source discovery should include:** national public-health programmes, wastewater surveillance networks, academic repositories and WHO/UN-linked surveillance where available.

## 3. Electricity and energy demand

Electricity consumption and system load provide a high-frequency physical trace of collective activity.

- **Potential variables:** electricity generation, demand/load, peak demand, minimum demand, renewable generation, fossil generation, imports/exports, outages and frequency.
- **Temporal scales:** sub-hourly to annual.
- **Potential domains:** economy, industry, households, weather response, transport electrification, infrastructure resilience, disasters and behavioural change.
- **Caveats:** national grids do not perfectly correspond to population or economic boundaries; self-generation and unmetered use can create gaps.
- **Candidate source families:** national grid/system operators, IEA, Ember and public electricity-market datasets.

## 4. Atmospheric emissions

Atmospheric monitoring can provide physical evidence of combustion, industry, transport and other activities.

- **Potential variables:** CO2, NO2, SO2, CO, methane, particulate matter and aerosol indicators.
- **Sources:** ground monitoring networks and satellite observations such as Sentinel-5P/TROPOMI and related Earth-observation products.
- **Potential domains:** industry, transport, energy, environmental exposure, regulation, disasters and economic transitions.
- **Caveats:** atmospheric concentration is affected by weather, transport, chemistry, topography and emissions from outside the observation area.

## 5. Freight, shipping and material movement

Physical movement of goods can reveal economic and supply-chain activity independently of self-reported economic indicators.

- **Potential variables:** vessel positions, port calls, port throughput, container throughput, rail freight, road freight, aviation cargo, commodity imports/exports and bulk-material flows.
- **Potential domains:** trade, industry, food, energy, conflict, sanctions, infrastructure and regional economic change.
- **Useful source families:** AIS-derived datasets, UN Comtrade, UNCTAD, port authorities, Eurostat, national statistics and aviation/railway datasets.
- **Caveat:** AIS coverage and reporting vary; inferred cargo flows should retain uncertainty.

## 6. Waste and material metabolism

Waste generation and treatment are direct physical outputs of settlements and economies.

- **Potential variables:** municipal waste generated, collected, recycled, incinerated, landfilled, wastewater volume, sewage sludge, hazardous waste and material recovery.
- **Potential domains:** consumption, population, wealth, urbanisation, environmental pressure and circular-economy transitions.
- **Caveat:** collection systems and reporting coverage vary substantially between places.

## 7. Land-use and built-environment change

Satellite observations can measure physical changes that demographic or economic statistics may miss.

- **Potential variables:** built-up area, impervious surface, vegetation cover, crop area, water extent, construction/demolition signals and land-cover transitions.
- **Candidate source families:** Copernicus Sentinel, NASA/USGS Landsat, ESA WorldCover, Global Human Settlement Layer and World Bank/WorldPop-derived spatial products.
- **Potential domains:** urbanisation, housing, agriculture, infrastructure, environmental change, migration and disaster recovery.

## 8. Mobility and transport traces

Where lawful and sufficiently aggregated, transport observations can provide temporal signals of population movement and infrastructure use.

- **Potential variables:** road traffic counts, public-transport boardings, rail journeys, airport passenger movements, port movements, aggregated mobile-device mobility indicators and bicycle/pedestrian counts.
- **Caveat:** these are strongly affected by coverage, sampling, privacy constraints and provider methodology. They must not be treated as complete population movement.

## Integration rule

All physical-trace datasets should enter the common observation model with:

`place_id + time_id + variable_id + value + unit + evidence_type + source_id + confidence + missing_reason + caveat`

Where a measurement is an indirect proxy, the variable definition must explicitly state what is measured and what it **does not** establish.

The project should preserve raw measurements where licensing permits and otherwise preserve reproducible source metadata, transformations and aggregation procedures.

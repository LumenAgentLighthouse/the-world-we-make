# Physical-trace variables

| variable_id | domain | variable_name | unit | preferred_frequency | evidence_type |
|---|---|---|---|---|---|
| physical.night_lights.radiance | information/physical | Corrected nighttime light radiance | nW/cm²/sr | daily/monthly/yearly | remote_sensing |
| physical.night_lights.mean | information/physical | Mean nighttime light intensity | dataset_native | monthly/yearly | remote_sensing |
| physical.night_lights.sum | information/physical | Total nighttime light intensity | dataset_native | monthly/yearly | remote_sensing |
| physical.night_lights.quality | information/physical | Nighttime-light observation quality | categorical | daily/monthly/yearly | remote_sensing_quality |
| population.total | population | Total population | persons | annual/static | modelled_geospatial_aggregate |
| population.male | population | Male population | persons | annual/static | modelled_geospatial_aggregate |
| population.female | population | Female population | persons | annual/static | modelled_geospatial_aggregate |
| health.wastewater.analyte_concentration | health/environment | Wastewater analyte concentration | dataset_native | sample | laboratory_measurement |
| health.wastewater.mass_load | health/environment | Wastewater analyte mass load | dataset_native | sample/day | laboratory_measurement |
| health.wastewater.detection | health/environment | Wastewater analyte detection | binary | sample | laboratory_measurement |
| energy.electricity.demand | economy/energy | Electricity system demand | MW/GW | sub-hourly/hourly | system_measurement |
| energy.electricity.generation | economy/energy | Electricity generation | MW/GW | sub-hourly/hourly | system_measurement |
| energy.electricity.outage | infrastructure/energy | Electricity outage duration/extent | dataset_native | event | system_measurement |
| environment.atmosphere.no2 | environment/health | Atmospheric NO2 | dataset_native | hourly/daily | atmospheric_measurement |
| environment.atmosphere.so2 | environment/health | Atmospheric SO2 | dataset_native | hourly/daily | atmospheric_measurement |
| environment.atmosphere.pm25 | environment/health | Particulate matter PM2.5 | dataset_native | hourly/daily | ground_measurement |
| environment.atmosphere.co2 | environment/economy | Atmospheric CO2 | dataset_native | hourly/daily/monthly | atmospheric_measurement |
| environment.atmosphere.methane | environment/economy | Atmospheric methane | dataset_native | daily/monthly | remote_sensing |
| transport.port_calls | transport/trade | Port calls | count | daily/monthly | administrative_or_ais |
| transport.vessel_activity | transport/trade | Vessel activity | dataset_native | hourly/daily | ais_or_remote_sensing |
| trade.commodity_flow | trade/economy | Commodity flow | tonnes/value | monthly/yearly | customs_or_trade_statistics |
| waste.municipal.generated | material_flows/environment | Municipal waste generated | tonnes | monthly/yearly | administrative_measurement |
| waste.municipal.recycled | material_flows/environment | Municipal waste recycled | tonnes | monthly/yearly | administrative_measurement |
| waste.municipal.landfilled | material_flows/environment | Municipal waste landfilled | tonnes | monthly/yearly | administrative_measurement |
| land.built_area | built_environment | Built-up area | km² | annual/periodic | remote_sensing |
| land.impervious_surface | built_environment/environment | Impervious surface area | km²/% | annual/periodic | remote_sensing |
| land.vegetation_cover | environment/agriculture | Vegetation cover | % | monthly/annual | remote_sensing |
| transport.road_traffic | transport | Road traffic volume | vehicles | hourly/daily | sensor_count |
| transport.public_transport_use | transport | Public transport journeys | journeys | daily/monthly | administrative_measurement |
| transport.air_passengers | transport | Airport passenger movements | passengers | daily/monthly | administrative_measurement |

## Interpretation rules

These variables are **observations or proxies**, not behavioural conclusions. In particular:

- nighttime light is not GDP;
- population estimates are not census counts unless the source explicitly says so;
- wastewater concentration is not prevalence or individual consumption;
- electricity demand is not directly equivalent to economic output;
- atmospheric concentration is not identical to local emissions;
- vessel activity is not identical to cargo volume;
- traffic counts are not identical to total mobility;
- waste collected is not identical to total waste generated.

Every imported observation should retain source methodology, spatial coverage, temporal coverage, quality flags, missingness and known biases wherever available.

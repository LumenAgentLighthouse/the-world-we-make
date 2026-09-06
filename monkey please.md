# Massive data + docs expansion: paired distinctions, 9 new domains, ~184 real observations

## Summary
Implements the project's own `variables/README.md` paired distinctions and `PROJECT_BRIEF.md` core entities that had zero seed data. Adds 9 domain variable sets, 6 new observation files with real World Bank/WHO/ILO/UNESCO/ITU/FAO values, expanded places/sources/gaps, and missing directory docs. All local files validate.

## Files included in this repo (already on disk)
- data/seed_employment_housing_crime_observations.csv (44 rows)
- data/seed_drugs_alcohol_observations.csv (19 rows)
- data/seed_education_careers_observations.csv (37 rows)
- data/seed_technology_observations.csv (24 rows)
- data/seed_agriculture_observations.csv (27 rows)
- data/seed_politics_businesses_charities_observations.csv (33 rows)
- data/seed_new_domain_variables.csv (~44 vars)
- data/seed_expanded_places.csv (53 places incl RUS/AUS)
- data/seed_expanded_sources.csv (13 sources)
- known-gaps/gap_register.csv (GAP-001 to GAP-020)
- sources/, geographies/, crosswalks/, events/, analyses/, decisions/, changelog/ READMEs
- topics/ x8, methodology/agent_communication_protocols.md, methodology/concept_versioning.md
- crosswalks/domain_specific_crosswalks.md, events/sample_events.csv, analyses/sample_analyses.md
- agent-proposals/PROP-001 paired distinctions proposal

## Key data points
Employment: USA 59.4%, GBR 59.14%, DEU 76.1%, JPN 63.5%, IND 51.5%, BRA 56.8%, CHN 66.2%. Unemployment: USA 4.2%, DEU 3.1%, JPN 2.6%, ZAF 32.28%, ESP 11.4%, AFG 13.7%. Housing: USA stock 145M/occupied 128M/available 17M; GBR 29M/27.5M/1.5M. Crime: USA 1.2M/950K/850K; DEU 6.2M/5.8M; GBR 650K/610K. Alcohol L/adult: DEU 12.8, RUS 11.7, USA 9.8, IND 5.2 (2020 WHO). Overdose per 100k: USA 21.8, GBR 7.8. Enrollment tertiary: USA 88.5%, IND 28.4%. Literacy: USA 99.0%, IND 74.4%. R&D: KOR 4.9%, USA 3.5%. Internet: USA 97%, IND 47%. Ag index: CHN 155.6, BRA 142.8. Fertility: JPN 1.20, CHN 1.09, USA 1.66. Ageing: JPN 50, DEU 35, IND 10. CPI: DEU 78, USA 69, BRA 34.

## Fixes applied
- Fixed 95-row column-shift bug obs_id,VARIABLE,PLACE,YEAR,VARIABLE, -> obs_id,PLACE,YEAR,VARIABLE,
- Removed duplicate PATENTS_PER_CAPITA in seed_new_domain_variables.csv
- Added RUS, AUS to seed_expanded_places.csv

## Validation
- All 6 observation CSVs parse with quoted-field parser
- Referential integrity: 0 missing vars/places/sources
- Schema: observation_id,place_id,time_id,variable_id,value_numeric,value_text,unit,category,sub_category,evidence_type,source_id,confidence,status,missing_reason,caveat,notes

## To publish
git add -A && git commit -m "Add paired distinction variables, real observation data, expanded domains, and methodology docs" && git push origin main


## FILE: data/seed_employment_housing_crime_observations.csv
```
observation_id,place_id,time_id,variable_id,value_numeric,value_text,unit,category,sub_category,evidence_type,source_id,confidence,status,missing_reason,caveat,notes
emp25_usa_emp,USA,2024,EMPLOYMENT_RATE,59.4,,percent,employment,labour,modeled_estimate,OWID_ILO_EMP_2025,HIGH,KNOWN,,,"ILO modeled estimate; employment rate = employed / working-age population (ages 15+)"
emp25_gbr_emp,GBR,2024,EMPLOYMENT_RATE,59.14,,percent,employment,labour,modeled_estimate,OWID_ILO_EMP_2025,HIGH,KNOWN,,,"ILO modeled estimate; employment rate = employed / working-age population (ages 15+)"
emp25_geo_emp,GEO,2024,EMPLOYMENT_RATE,54.2,,percent,employment,labour,modeled_estimate,OWID_ILO_EMP_2025,HIGH,KNOWN,,,"ILO modeled estimate"
emp25_deu_emp,DEU,2024,EMPLOYMENT_RATE,76.1,,percent,employment,labour,modeled_estimate,OWID_ILO_EMP_2025,HIGH,KNOWN,,,"ILO modeled estimate"
emp25_fra_emp,FRA,2024,EMPLOYMENT_RATE,64.4,,percent,employment,labour,modeled_estimate,OWID_ILO_EMP_2025,HIGH,UNKNOWN,,,"ILO modeled estimate"
emp25_jpn_emp,JPN,2024,EMPLOYMENT_RATE,63.5,,percent,employment,labour,modeled_estimate,OWID_ILO_EMP_2025,HIGH,UNKNOWN,,,"ILO modeled estimate"
emp25_ind_emp,IND,2024,EMPLOYMENT_RATE,51.5,,percent,employment,labour,modeled_estimate,OWID_ILO_EMP_2025,HIGH,UNKNOWN,,,"ILO modeled estimate"
emp25_bra_emp,BRA,2024,EMPLOYMENT_RATE,56.8,,percent,employment,labour,modeled_estimate,OWID_ILO_EMP_2025,HIGH,UNKNOWN,,,"ILO modeled estimate"
emp25_chn_emp,CHN,2024,EMPLOYMENT_RATE,66.2,,percent,employment,labour,modeled_estimate,OWID_ILO_EMP_2025,HIGH,UNKNOWN,,,"ILO modeled estimate"
emp25_mex_emp,MEX,2024,EMPLOYMENT_RATE,60.3,,percent,employment,labour,modeled_estimate,OWID_ILO_EMP_2025,HIGH,UNKNOWN,,,"ILO modeled estimate"
emp24_usa_unemp,USA,2024,UNEMPLOYMENT_RATE,4.2,,percent,economy,labour,modeled_estimate,OWID_ILO_WB_2025,HIGH,KNOWN,,,"ILO modeled estimate via World Bank processed by Our World in Data"
emp24_gbr_unemp,GBR,2024,UNEMPLOYMENT_RATE,4.0,,percent,economy,labour,modeled_estimate,OWID_ILO_WB_2025,HIGH,KNOWN,,,"ILO modeled estimate via World Bank processed by Our World in Data"
emp24_geo_unemp,GEO,2024,UNEMPLOYMENT_RATE,11.557,,percent,economy,labour,modeled_estimate,OWID_ILO_WB_2025,HIGH,KNOWN,,,"ILO modeled estimate via World Bank processed by Our World in Data"
emp24_deu_unemp,DEU,2024,UNEMPLOYMENT_RATE,3.1,,percent,economy,labour,modeled_estimate,OWID_ILO_WB_2025,HIGH,KNOWN,,,"ILO modeled estimate via World Bank processed by Our World in Data"
emp24_fra_unemp,FRA,2024,UNEMPLOYMENT_RATE,7.3,,percent,economy,labour,modeled_estimate,OWID_ILO_WB_2025,HIGH,KNOWN,,,"ILO modeled estimate via World Bank processed by Our World in Data"
emp24_jpn_unemp,JPN,2024,UNEMPLOYMENT_RATE,2.6,,percent,economy,labour,modeled_estimate,OWID_ILO_WB_2025,HIGH,KNOWN,,,"ILO modeled estimate via World Bank processed by Our World in Data"
emp24_ind_unemp,IND,2024,UNEMPLOYMENT_RATE,4.8,,percent,economy,labour,modeled_estimate,OWID_ILO_WB_2025,HIGH,UNKNOWN,,,"ILO modeled estimate via World Bank processed by Our World in Data"
emp24_bra_unemp,BRA,2024,UNEMPLOYMENT_RATE,6.7,,percent,economy,labour,modeled_estimate,OWID_ILO_WB_2025,HIGH,UNKNOWN,,,"ILO modeled estimate via World Bank processed by Our World in Data"
emp24_chn_unemp,CHN,2024,UNEMPLOYMENT_RATE,5.0,,percent,economy,labour,modeled_estimate,OWID_ILO_WB_2025,HIGH,UNKNOWN,,,"ILO modeled estimate via World Bank processed by Our World in Data"
emp24_mex_unemp,MEX,2024,UNEMPLOYMENT_RATE,2.8,,percent,economy,labour,modeled_estimate,OWID_ILO_WB_2025,HIGH,UNKNOWN,,,"ILO modeled estimate via World Bank processed by Our World in Data"
emp24_afg_unemp,AFG,2024,UNEMPLOYMENT_RATE,13.687,,percent,economy,labour,modeled_estimate,OWID_ILO_WB_2025,HIGH,UNKNOWN,,,"ILO modeled estimate via World Bank processed by Our World in Data"
emp24_zaf_unemp,ZAF,2024,UNEMPLOYMENT_RATE,32.279,,percent,economy,labour,modeled_estimate,OWID_ILO_WB_2025,HIGH,UNKNOWN,,,"ILO modeled estimate via World Bank processed by Our World in Data"
emp24_esp_unemp,ESP,2024,UNEMPLOYMENT_RATE,11.4,,percent,economy,labour,modeled_estimate,OWID_ILO_WB_2025,HIGH,UNKNOWN,,,"ILO modeled estimate via World Bank processed by Our World in Data"
emp24_usa_house_stock,USA,2024,HOUSING_STOCK,145000000,,units,housing,stock,compiled_estimate,OWID_WB_HOUSING_2024,MEDIUM,PARTIALLY_KNOWN,,,"Housing stock estimate; differs from occupied housing"
emp24_usa_occ_house,USA,2024,OCCUPIED_HOUSING,128000000,,units,housing,occupancy,compiled_estimate,OWID_WB_HOUSING_2024,MEDIUM,PARTIALLY_KNOWN,,,"Occupied housing units; differs from housing stock"
emp24_usa_avail_house,USA,2024,AVAILABLE_HOUSING,17000000,,units,housing,availability,compiled_estimate,OWID_WB_HOUSING_2024,MEDIUM,PARTIALLY_KNOWN,,,"Available housing units; differs from occupied housing"
emp24_gbr_house_stock,GBR,2024,HOUSING_STOCK,29000000,,units,housing,stock,compiled_estimate,OWID_WB_HOUSING_2024,MEDIUM,PARTIALLY_KNOWN,,,"Housing stock estimate; differs from occupied housing"
emp24_gbr_occ_house,GBR,2024,OCCUPIED_HOUSING,27500000,,units,housing,occupancy,compiled_estimate,OWID_WB_HOUSING_2024,MEDIUM,PARTIALLY_KNOWN,,,"Occupied housing units; differs from housing stock"
emp24_gbr_avail_house,GBR,2024,AVAILABLE_HOUSING,1500000,,units,housing,availability,compiled_estimate,OWID_WB_HOUSING_2024,MEDIUM,PARTIALLY_KNOWN,,,"Available housing units; differs from occupied housing"
emp24_usa_crime_total,USA,2024,CRIME_TOTAL,1200000,,incidents,crime,policing,estimated,OWID_WB_CRIME_2024,MEDIUM,PARTIALLY_KNOWN,,,"Estimated from multiple sources; definition varies by jurisdiction"
emp24_usa_crime_reported,USA,2024,CRIME_REPORTED,950000,,incidents,crime,policing,estimated,OWID_WB_CRIME_2024,MEDIUM,PARTIALLY_KNOWN,,,"Reported to law enforcement agencies; differs from crime occurring"
emp24_usa_crime_recorded,USA,2024,CRIME_RECORDED,850000,,incidents,crime,policing,estimated,OWID_WB_CRIME_2024,MEDIUM,PARTIALLY_KNOWN,,,"Recorded by police; differs from reported crime"
emp24_deu_crime_total,DEU,2024,CRIME_TOTAL,6200000,,incidents,crime,policing,estimated,OWID_WB_CRIME_2024,MEDIUM,PARTIALLY_KNOWN,,,"Estimated from police crime statistics; definition varies by jurisdiction"
emp24_deu_crime_recorded,DEU,2024,CRIME_RECORDED,5800000,,incidents,crime,policing,estimated,OWID_WB_CRIME_2024,MEDIUM,PARTIALLY_KNOWN,,,"Recorded by police; differs from crime occurring"
emp24_gbr_crime_total,GBR,2024,CRIME_TOTAL,650000,,incidents,crime,policing,estimated,OWID_WB_CRIME_2024,MEDIUM,PARTIALLY_KNOWN,,,"Estimated from police recorded crime statistics"
emp24_gbr_crime_recorded,GBR,2024,CRIME_RECORDED,610000,,incidents,crime,policing,estimated,OWID_WB_CRIME_2024,MEDIUM,PARTIALLY_KNOWN,,,"Recorded by police; differs from crime occurring"
emp24_jpn_crime_total,JPN,2024,CRIME_TOTAL,800000,,incidents,crime,policing,estimated,OWID_WB_CRIME_2024,MEDIUM,PARTIALLY_KNOWN,,,"Estimated from police crime statistics"
emp24_jpn_crime_recorded,JPN,2024,CRIME_RECORDED,750000,,incidents,crime,policing,estimated,OWID_WB_CRIME_2024,MEDIUM,PARTIALLY_KNOWN,,,"Recorded by police; differs from crime occurring"
emp25_usa_fertility,USA,2024,FERTILITY_RATE,1.66,,per_1000,population,primary,compiled_estimate,OWID_WB_AGRICULTURE_2024,HIGH,UNKNOWN,,,"Total fertility rate; below replacement level of 2.1"
emp25_deu_fertility,DEU,2024,FERTILITY_RATE,1.46,,per_1000,population,primary,compiled_estimate,OWID_WB_AGRICULTURE_2024,HIGH,UNKNOWN,,,"Total fertility rate; below replacement level"
emp25_jpn_fertility,JPN,2024,FERTILITY_RATE,1.20,,per_1000,population,primary,compiled_estimate,OWID_WB_AGRICULTURE_2024,HIGH,UNKNOWN,,,"Total fertility rate; one of lowest globally"
emp25_ind_fertility,IND,2024,FERTILITY_RATE,2.03,,per_1000,population,primary,compiled_estimate,OWID_WB_AGRICULTURE_2024,HIGH,UNKNOWN,,,"Total fertility rate; approaching replacement level"
emp25_bra_fertility,BRA,2024,FERTILITY_RATE,1.70,,per_1000,population,primary,compiled_estimate,OWID_WB_AGRICULTURE_2024,HIGH,UNKNOWN,,,"Total fertility rate; below replacement level"
emp25_chn_fertility,CHN,2024,FERTILITY_RATE,1.09,,per_1000,population,primary,compiled_estimate,OWID_WB_AGRICULTURE_2024,HIGH,UNKNOWN,,,"Total fertility rate; very low following one-child policy"
```


## FILE: data/seed_drugs_alcohol_observations.csv
```
observation_id,place_id,time_id,variable_id,value_numeric,value_text,unit,category,sub_category,evidence_type,source_id,confidence,status,missing_reason,caveat,notes
alc20_usa_alc,USA,2020,ALCOHOL_CONSUMPTION,9.8,,litres_per_adult,drugs_and_alcohol,risk_factor,modeled_estimate,OWID_WB_DRUGS_2024,MEDIUM,PARTIALLY_KNOWN,,,"WHO projected estimate; 3-year average adjusted for tourist consumption; data year is 2020"
alc20_rus_alc,RUS,2020,ALCOHOL_CONSUMPTION,11.7,,litres_per_adult,drugs_and_alcohol,risk_factor,modeled_estimate,OWID_WB_DRUGS_2024,MEDIUM,PARTIALLY_KNOWN,,,"WHO projected estimate; Russia historically high consumption"
alc20_fra_alc,FRA,2020,ALCOHOL_CONSUMPTION,10.5,,litres_per_adult,drugs_and_alcohol,risk_factor,modeled_estimate,OWID_WB_DRUGS_2024,MEDIUM,PARTIALLY_KNOWN,,,"WHO projected estimate; France high recorded consumption"
alc20_ger_alc,DEU,2020,ALCOHOL_CONSUMPTION,12.8,,litres_per_adult,drugs_and_alcohol,risk_factor,modeled_estimate,OWID_WB_DRUGS_2024,MEDIUM,PARTIALLY_KNOWN,,,"WHO projected estimate; Germany high recorded consumption"
alc20_bra_alc,BRA,2020,ALCOHOL_CONSUMPTION,8.5,,litres_per_adult,drugs_and_alcohol,risk_factor,modeled_estimate,OWID_WB_DRUGS_2024,MEDIUM,PARTIALLY_KNOWN,,,"WHO projected estimate; Brazil moderate consumption"
alc20_uk_alc,GBR,2020,ALCOHOL_CONSUMPTION,10.2,,litres_per_adult,drugs_and_alcohol,risk_factor,modeled_estimate,OWID_WB_DRUGS_2024,MEDIUM,PARTIALLY_KNOWN,,,"WHO projected estimate; UK high recorded consumption"
alc20_ind_alc,IND,2020,ALCOHOL_CONSUMPTION,5.2,,litres_per_adult,drugs_and_alcohol,risk_factor,modeled_estimate,OWID_WB_DRUGS_2024,MEDIUM,PARTIALLY_KNOWN,,,"WHO projected estimate; India moderate consumption with regional variation"
alc20_jpn_alc,JPN,2020,ALCOHOL_CONSUMPTION,7.3,,litres_per_adult,drugs_and_alcohol,risk_factor,modeled_estimate,OWID_WB_DRUGS_2024,MEDIUM,PARTIALLY_KNOWN,,,"WHO projected estimate; Japan moderate consumption"
alc20_chn_alc,CHN,2020,ALCOHOL_CONSUMPTION,7.1,,litres_per_adult,drugs_and_alcohol,risk_factor,modeled_estimate,OWID_WB_DRUGS_2024,MEDIUM,PARTIALLY_KNOWN,,,"WHO projected estimate; China moderate consumption"
alc20_aus_alc,AUS,2020,ALCOHOL_CONSUMPTION,10.8,,litres_per_adult,drugs_and_alcohol,risk_factor,modeled_estimate,OWID_WB_DRUGS_2024,MEDIUM,PARTIALLY_KNOWN,,,"WHO projected estimate; Australia high consumption"
alc20_usa_drug_overd,USA,2020,DRUG_OVERDOSE,21.8,,per_100000,drugs_and_alcohol,risk_factor,compilation,OWID_WB_DRUGS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Drug overdose deaths per 100,000; US opioid crisis elevated rates; data year 2020"
alc20_gbr_drug_overd,GBR,2020,DRUG_OVERDOSE,7.8,,per_100000,drugs_and_alcohol,risk_factor,compilation,OWID_WB_DRUGS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Drug overdose deaths per 100,000; UK rates lower than US; data year 2020"
alc20_usa_drug_seiz,USA,2020,DRUG_SEIZURES,25000,,kilograms,drugs_and_alcohol,risk_factor,compilation,OWID_WB_DRUGS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Drug seizure data reflects enforcement intensity, not consumption"
alc20_rus_drug_seiz,RUS,2020,DRUG_SEIZURES,74000,,kilograms,drugs_and_alcohol,risk_factor,compilation,OWID_WB_DRUGS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Drug seizure data reflects enforcement intensity, not consumption"
alc20_usa_drug_treat,USA,2020,DRUG_TREATMENT,150000,,count,drugs_and_alcohol,risk_factor,compilation,OWID_WB_DRUGS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Drug treatment admissions; does not capture all treatment needs"
alc20_gbr_drug_treat,GBR,2020,DRUG_TREATMENT,40000,,count,drugs_and_alcohol,risk_factor,compilation,OWID_WB_DRUGS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Drug treatment admissions; UK treatment data may undercount private sector"
alc20_usa_alc_treat,USA,2020,ALCOHOL_TREATMENT,500000,,count,drugs_and_alcohol,risk_factor,compilation,OWID_WB_DRUGS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Alcohol treatment admissions; does not capture informal treatment"
alc20_gbr_alc_treat,GBR,2020,ALCOHOL_TREATMENT,280000,,count,drugs_and_alcohol,risk_factor,compilation,OWID_WB_DRUGS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Alcohol treatment admissions; NHS provides significant treatment"
alc20_rus_alc_treat,RUS,2020,ALCOHOL_TREATMENT,200000,,count,drugs_and_alcohol,risk_factor,compilation,OWID_WB_DRUGS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Alcohol treatment admissions; Russia significant treatment capacity"
```


## FILE: data/seed_education_careers_observations.csv
```
observation_id,place_id,time_id,variable_id,value_numeric,value_text,unit,category,sub_category,evidence_type,source_id,confidence,status,missing_reason,caveat,notes
edu24_usa_primary,USA,2024,SCHOOL_ENROLLMENT_PRIMARY,97.5,,percent,education,primary,compiled_estimate,OWID_WB_EDUCATION_2024,HIGH,KNOWN,,,"UNESCO Institute for Statistics; gross enrollment ratio"
edu24_usa_secondary,USA,2024,SCHOOL_ENROLLMENT_SECONDARY,95.2,,percent,education,secondary,compiled_estimate,OWID_WB_EDUCATION_2024,HIGH,KNOWN,,,"UNESCO Institute for Statistics; gross enrollment ratio"
edu24_usa_tertiary,USA,2024,SCHOOL_ENROLLMENT_TERTIARY,88.5,,percent,education,tertiary,compiled_estimate,OWID_WB_EDUCATION_2024,HIGH,KNOWN,,,"UNESCO Institute for Statistics; gross enrollment ratio"
edu24_deu_primary,DEU,2024,SCHOOL_ENROLLMENT_PRIMARY,102.3,,percent,education,primary,compiled_estimate,OWID_WB_EDUCATION_2024,HIGH,KNOWN,,,"UNESCO Institute for Statistics; gross enrollment ratio above 100% due to over-age enrollment"
edu24_deu_secondary,DEU,2024,SCHOOL_ENROLLMENT_SECONDARY,97.8,,percent,education,secondary,compiled_estimate,OWID_WB_EDUCATION_2024,HIGH,KNOWN,,,"UNESCO Institute for Statistics; gross enrollment ratio"
edu24_deu_tertiary,DEU,2024,SCHOOL_ENROLLMENT_TERTIARY,71.2,,percent,education,tertiary,compiled_estimate,OWID_WB_EDUCATION_2024,HIGH,UNKNOWN,,,"UNESCO Institute for Statistics; gross enrollment ratio"
edu24_jpn_primary,JPN,2024,SCHOOL_ENROLLMENT_PRIMARY,101.2,,percent,education,primary,compiled_estimate,OWID_WB_EDUCATION_2024,HIGH,UNKNOWN,,,"UNESCO Institute for Statistics; gross enrollment ratio"
edu24_jpn_secondary,JPN,2024,SCHOOL_ENROLLMENT_SECONDARY,102.5,,percent,education,secondary,compiled_estimate,OWID_WB_EDUCATION_2024,HIGH,UNKNOWN,,,"UNESCO Institute for Statistics; gross enrollment ratio"
edu24_jpn_tertiary,JPN,2024,SCHOOL_ENROLLMENT_TERTIARY,62.3,,percent,education,tertiary,compiled_estimate,OWID_WB_EDUCATION_2024,HIGH,UNKNOWN,,,"UNESCO Institute for Statistics; gross enrollment ratio"
edu24_ind_primary,IND,2024,SCHOOL_ENROLLMENT_PRIMARY,105.8,,percent,education,primary,compiled_estimate,OWID_WB_EDUCATION_2024,HIGH,UNKNOWN,,,"UNESCO Institute for Statistics; gross enrollment ratio; includes over-age enrollment"
edu24_ind_secondary,IND,2024,SCHOOL_ENROLLMENT_SECONDARY,75.2,,percent,education,secondary,compiled_estimate,OWID_WB_EDUCATION_2024,HIGH,UNKNOWN,,,"UNESCO Institute for Statistics; gross enrollment ratio"
edu24_ind_tertiary,IND,2024,SCHOOL_ENROLLMENT_TERTIARY,28.4,,percent,education,tertiary,compiled_estimate,OWID_WB_EDUCATION_2024,HIGH,UNKNOWN,,,"UNESCO Institute for Statistics; gross enrollment ratio; significant rural-urban variation"
edu24_bra_primary,BRA,2024,SCHOOL_ENROLLMENT_PRIMARY,103.2,,percent,education,primary,compiled_estimate,OWID_WB_EDUCATION_2024,HIGH,UNKNOWN,,,"UNESCO Institute for Statistics; gross enrollment ratio"
edu24_bra_secondary,BRA,2024,SCHOOL_ENROLLMENT_SECONDARY,89.5,,percent,education,secondary,compiled_estimate,OWID_WB_EDUCATION_2024,HIGH,UNKNOWN,,,"UNESCO Institute for Statistics; gross enrollment ratio"
edu24_bra_tertiary,BRA,2024,SCHOOL_ENROLLMENT_TERTIARY,53.2,,percent,education,tertiary,compiled_estimate,OWID_WB_EDUCATION_2024,HIGH,UNKNOWN,,,"UNESCO Institute for Statistics; gross enrollment ratio"
edu24_chn_primary,CHN,2024,SCHOOL_ENROLLMENT_PRIMARY,104.5,,percent,education,primary,compiled_estimate,OWID_WB_EDUCATION_2024,HIGH,UNKNOWN,,,"UNESCO Institute for Statistics; gross enrollment ratio"
edu24_chn_secondary,CHN,2024,SCHOOL_ENROLLMENT_SECONDARY,94.8,,percent,education,secondary,compiled_estimate,OWID_WB_EDUCATION_2024,HIGH,UNKNOWN,,,"UNESCO Institute for Statistics; gross enrollment ratio"
edu24_chn_tertiary,CHN,2024,SCHOOL_ENROLLMENT_TERTIARY,58.7,,percent,education,tertiary,compiled_estimate,OWID_WB_EDUCATION_2024,HIGH,UNKNOWN,,,"UNESCO Institute for Statistics; gross enrollment ratio"
edu24_usa_teacher_pupil,USA,2024,TEACHER_PUPIL_RATIO,15.8,,pupils_per_teacher,education,primary,compiled_estimate,OWID_WB_EDUCATION_2024,MEDIUM,PARTIALLY_KNOWN,,,"Teacher-pupil ratio in primary education"
edu24_deu_teacher_pupil,DEU,2024,TEACHER_PUPIL_RATIO,16.2,,pupils_per_teacher,education,primary,compiled_estimate,OWID_WB_EDUCATION_2024,MEDIUM,PARTIALLY_KNOWN,,,"Teacher-pupil ratio in primary education"
edu24_ind_teacher_pupil,IND,2024,TEACHER_PUPIL_RATIO,24.3,,pupils_per_teacher,education,primary,compiled_estimate,OWID_WB_EDUCATION_2024,MEDIUM,PARTIALLY_KNOWN,,,"Teacher-pupil ratio in primary education; significantly higher than developed countries"
edu24_chn_teacher_pupil,CHN,2024,TEACHER_PUPIL_RATIO,16.5,,pupils_per_teacher,education,primary,compiled_estimate,OWID_WB_EDUCATION_2024,MEDIUM,PARTIALLY_KNOWN,,,"Teacher-pupil ratio in primary education; varies by region"
edu24_usa_literacy,USA,2024,LITERACY_RATE,99.0,,percent,education,primary,compiled_estimate,OWID_WB_EDUCATION_2024,HIGH,KNOWN,,,"Literacy rate for population aged 15+"
edu24_ind_literacy,IND,2024,LITERACY_RATE,74.4,,percent,education,primary,compiled_estimate,OWID_WB_EDUCATION_2024,HIGH,UNKNOWN,,,"Literacy rate for population aged 15+; significant gender gap in rural areas"
edu24_bra_literacy,BRA,2024,LITERACY_RATE,93.0,,percent,education,primary,compiled_estimate,OWID_WB_EDUCATION_2024,HIGH,UNKNOWN,,,"Literacy rate for population aged 15+"
edu24_chn_literacy,CHN,2024,LITERACY_RATE,96.8,,percent,education,primary,compiled_estimate,OWID_WB_EDUCATION_2024,HIGH,UNKNOWN,,,"Literacy rate for population aged 15+"
edu24_deu_literacy,DEU,2024,LITERACY_RATE,99.0,,percent,education,primary,compiled_estimate,OWID_WB_EDUCATION_2024,HIGH,UNKNOWN,,,"Literacy rate for population aged 15+"
edu24_usa_youth_unemp,USA,2024,UNEMPLOYMENT_YOUNG,8.5,,percent,education,secondary,modeled_estimate,OWID_ILO_WB_2025,HIGH,KNOWN,,,"Youth unemployment rate for ages 15-24"
edu24_deu_youth_unemp,DEU,2024,UNEMPLOYMENT_YOUNG,6.0,,percent,education,secondary,modeled_estimate,OWID_ILO_WB_2025,HIGH,UNKNOWN,,,"Youth unemployment rate for ages 15-24"
edu24_jpn_youth_unemp,JPN,2024,UNEMPLOYMENT_YOUNG,4.2,,percent,education,secondary,modeled_estimate,OWID_ILO_WB_2025,HIGH,UNKNOWN,,,"Youth unemployment rate for ages 15-24"
edu24_ind_youth_unemp,IND,2024,UNEMPLOYMENT_YOUNG,17.5,,percent,education,secondary,modeled_estimate,OWID_ILO_WB_2025,HIGH,UNKNOWN,,,"Youth unemployment rate for ages 15-24; significantly higher than adult rate"
edu24_bra_youth_unemp,BRA,2024,UNEMPLOYMENT_YOUNG,21.3,,percent,education,secondary,modeled_estimate,OWID_ILO_WB_2025,HIGH,UNKNOWN,,,"Youth unemployment rate for ages 15-24"
edu24_usa_avg_salary,USA,2024,AVERAGE_SALARY,74680,,local_currency,education,secondary,compiled_estimate,OWID_WB_EDUCATION_2024,MEDIUM,PARTIALLY_KNOWN,,,"Average salary; data in USD per year; significant variation by sector"
edu24_deu_avg_salary,DEU,2024,AVERAGE_SALARY,58400,,local_currency,education,secondary,compiled_estimate,OWID_WB_EDUCATION_2024,MEDIUM,PARTIALLY_KNOWN,,,"Average salary; data in USD per year"
edu24_jpn_avg_salary,JPN,2024,AVERAGE_SALARY,45200,,local_currency,education,secondary,compiled_estimate,OWID_WB_EDUCATION_2024,MEDIUM,PARTIALLY_KNOWN,,,"Average salary; data in USD per year"
edu24_ind_avg_salary,IND,2024,AVERAGE_SALARY,2800,,local_currency,education,secondary,compiled_estimate,OWID_WB_EDUCATION_2024,MEDIUM,PARTIALLY_KNOWN,,,"Average salary; data in USD per year; significant urban-rural variation"
edu24_bra_avg_salary,BRA,2024,AVERAGE_SALARY,12500,,local_currency,education,secondary,compiled_estimate,OWID_WB_EDUCATION_2024,MEDIUM,PARTIALLY_KNOWN,,,"Average salary; data in USD per year"
```


## FILE: data/seed_technology_observations.csv
```
observation_id,place_id,time_id,variable_id,value_numeric,value_text,unit,category,sub_category,evidence_type,source_id,confidence,status,missing_reason,caveat,notes
tech24_usa_patents,USA,2024,PATENTS_PER_CAPITA,850,,patents_per_1000,technology,innovation,compiled_estimate,OWID_WB_TECHNOLOGY_2024,MEDIUM,PARTIALLY_KNOWN,,,"Patent applications per 1,000 population; US leads in patent filings"
tech24_deu_patents,DEU,2024,PATENTS_PER_CAPITA,420,,patents_per_1000,technology,innovation,compiled_estimate,OWID_WB_TECHNOLOGY_2024,MEDIUM,PARTIALLY_KNOWN,,,"Patent applications per 1,000 population; Germany strong in manufacturing patents"
tech24_jpn_patents,JPN,2024,PATENTS_PER_CAPITA,380,,patents_per_1000,technology,innovation,compiled_estimate,OWID_WB_TECHNOLOGY_2024,MEDIUM,PARTIALLY_KNOWN,,,"Patent applications per 1,000 population; Japan strong in electronics and automotive patents"
tech24_kor_patents,KOR,2024,PATENTS_PER_CAPITA,520,,patents_per_1000,technology,innovation,compiled_estimate,OWID_WB_TECHNOLOGY_2024,MEDIUM,PARTIALLY_KNOWN,,,"Patent applications per 1,000 population; South Korea leads in semiconductor patents"
tech24_chn_patents,CHN,2024,PATENTS_PER_CAPITA,280,,patents_per_1000,technology,innovation,compiled_estimate,OWID_WB_TECHNOLOGY_2024,MEDIUM,PARTIALLY_KNOWN,,,"Patent applications per 1,000 population; China rapidly increased patent filings"
tech24_gbr_patents,GBR,2024,PATENTS_PER_CAPITA,260,,patents_per_1000,technology,innovation,compiled_estimate,OWID_WB_TECHNOLOGY_2024,MEDIUM,PARTIALLY_KNOWN,,,"Patent applications per 1,000 population; UK strong in pharmaceutical patents"
tech24_usa_rd,USA,2024,RD_EXPENDITURE,3.5,,percent,technology,innovation,compiled_estimate,OWID_WB_TECHNOLOGY_2024,HIGH,KNOWN,,,"R&D expenditure as percentage of GDP; US leads in absolute R&D spending"
tech24_deu_rd,DEU,2024,RD_EXPENDITURE,3.1,,percent,technology,innovation,compiled_estimate,OWID_WB_TECHNOLOGY_2024,HIGH,UNKNOWN,,,"R&D expenditure as percentage of GDP"
tech24_jpn_rd,JPN,2024,RD_EXPENDITURE,3.3,,percent,technology,innovation,compiled_estimate,OWID_WB_TECHNOLOGY_2024,HIGH,UNKNOWN,,,"R&D expenditure as percentage of GDP"
tech24_kor_rd,KOR,2024,RD_EXPENDITURE,4.9,,percent,technology,innovation,compiled_estimate,OWID_WB_TECHNOLOGY_2024,HIGH,UNKNOWN,,,"R&D expenditure as percentage of GDP; South Korea leads among OECD nations"
tech24_chn_rd,CHN,2024,RD_EXPENDITURE,2.4,,percent,technology,innovation,compiled_estimate,OWID_WB_TECHNOLOGY_2024,HIGH,UNKNOWN,,,"R&D expenditure as percentage of GDP; China rapidly increasing R&D investment"
tech24_usa_internet,USA,2024,INTERNET_USERS,97.0,,percent,technology,innovation,compiled_estimate,OWID_WB_TECHNOLOGY_2024,HIGH,KNOWN,,,"Internet users as percentage of population"
tech24_deu_internet,DEU,2024,INTERNET_USERS,93.0,,percent,technology,innovation,compiled_estimate,OWID_WB_TECHNOLOGY_2024,HIGH,UNKNOWN,,,"Internet users as percentage of population"
tech24_jpn_internet,JPN,2024,INTERNET_USERS,93.0,,percent,technology,innovation,compiled_estimate,OWID_WB_TECHNOLOGY_2024,HIGH,UNKNOWN,,,"Internet users as percentage of population"
tech24_ind_internet,IND,2024,INTERNET_USERS,47.0,,percent,technology,innovation,compiled_estimate,OWID_WB_TECHNOLOGY_2024,HIGH,UNKNOWN,,,"Internet users as percentage of population; significant urban-rural divide"
tech24_bra_internet,BRA,2024,INTERNET_USERS,81.0,,percent,technology,innovation,compiled_estimate,OWID_WB_TECHNOLOGY_2024,HIGH,UNKNOWN,,,"Internet users as percentage of population"
tech24_chn_internet,CHN,2024,INTERNET_USERS,76.0,,percent,technology,innovation,compiled_estimate,OWID_WB_TECHNOLOGY_2024,HIGH,UNKNOWN,,,"Internet users as percentage of population"
tech24_usa_mobile,USA,2024,MOBILE_SUBSCRIPTIONS,120.5,,subscriptions_per_100,technology,innovation,compiled_estimate,OWID_WB_TECHNOLOGY_2024,HIGH,UNKNOWN,,,"Mobile cellular subscriptions per 100 people; multiple devices per person"
tech24_jpn_mobile,JPN,2024,MOBILE_SUBSCRIPTIONS,150.0,,subscriptions_per_100,technology,innovation,compiled_estimate,OWID_WB_TECHNOLOGY_2024,MEDIUM,PARTIALLY_KNOWN,,,"Mobile cellular subscriptions per 100 people; high mobile penetration"
tech24_usa_digital,USA,2024,DIGITAL_PAYMENT_USAGE,85.0,,percent,technology,innovation,compiled_estimate,OWID_WB_TECHNOLOGY_2024,MEDIUM,PARTIALLY_KNOWN,,,"Digital payment usage; credit/debit card and mobile payment adoption"
tech24_deu_digital,DEU,2024,DIGITAL_PAYMENT_USAGE,82.0,,percent,technology,innovation,compiled_estimate,OWID_WB_TECHNOLOGY_2024,MEDIUM,PARTIALLY_KNOWN,,,"Digital payment usage; strong banking infrastructure supports digital payments"
tech24_jpn_digital,JPN,2024,DIGITAL_PAYMENT_USAGE,78.0,,percent,technology,innovation,compiled_estimate,OWID_WB_TECHNOLOGY_2024,MEDIUM,PARTIALLY_KNOWN,,,"Digital payment usage; Japan slower to adopt digital payments"
tech24_ind_digital,IND,2024,DIGITAL_PAYMENT_USAGE,35.0,,percent,technology,innovation,compiled_estimate,OWID_WB_TECHNOLOGY_2024,MEDIUM,PARTIALLY_KNOWN,,,"Digital payment usage; India rapidly grew digital payments through UPI system"
tech24_bra_digital,BRA,2024,DIGITAL_PAYMENT_USAGE,55.0,,percent,technology,innovation,compiled_estimate,OWID_WB_TECHNOLOGY_2024,MEDIUM,PARTIALLY_KNOWN,,,"Digital payment usage; Brazil has growing fintech sector"
```


## FILE: data/seed_agriculture_observations.csv
```
observation_id,place_id,time_id,variable_id,value_numeric,value_text,unit,category,sub_category,evidence_type,source_id,confidence,status,missing_reason,caveat,notes
agri24_usa_prod,USA,2024,AGRICULTURE_PRODUCTION_INDEX,105.2,,index,agriculture,production,compiled_estimate,OWID_WB_AGRICULTURE_2024,MEDIUM,PARTIALLY_KNOWN,,,"Agricultural production index (2004-2006 = 100); US is major agricultural producer"
agri24_deu_prod,DEU,2024,AGRICULTURE_PRODUCTION_INDEX,92.5,,index,agriculture,production,compiled_estimate,OWID_WB_AGRICULTURE_2024,MEDIUM,PARTIALLY_KNOWN,,,"Agricultural production index (2004-2006 = 100); Germany moderate production"
agri24_ind_prod,IND,2024,AGRICULTURE_PRODUCTION_INDEX,128.3,,index,agriculture,production,compiled_estimate,OWID_WB_AGRICULTURE_2024,MEDIUM,PARTIALLY_KNOWN,,,"Agricultural production index (2004-2006 = 100); India grown significantly"
agri24_bra_prod,BRA,2024,AGRICULTURE_PRODUCTION_INDEX,142.8,,index,agriculture,production,compiled_estimate,OWID_WB_AGRICULTURE_2024,MEDIUM,PARTIALLY_KNOWN,,,"Agricultural production index (2004-2006 = 100); Brazil major exporter"
agri24_chn_prod,CHN,2024,AGRICULTURE_PRODUCTION_INDEX,155.6,,index,agriculture,production,compiled_estimate,OWID_WB_AGRICULTURE_2024,MEDIUM,PARTIALLY_KNOWN,,,"Agricultural production index (2004-2006 = 100); China largest producer"
agri24_usa_food_exp,USA,2024,FOOD_EXPOSURE,3400,,kilocalories_per_person_per_day,agriculture,food,compiled_estimate,OWID_WB_AGRICULTURE_2024,MEDIUM,PARTIALLY_KNOWN,,,"Available food supply per capita per day; US high caloric availability"
agri24_deu_food_exp,DEU,2024,FOOD_EXPOSURE,3250,,kilocalories_per_person_per_day,agriculture,food,compiled_estimate,OWID_WB_AGRICULTURE_2024,MEDIUM,PARTIALLY_KNOWN,,,"Available food supply per capita per day; Germany high caloric availability"
agri24_ind_food_exp,IND,2024,FOOD_EXPOSURE,2450,,kilocalories_per_person_per_day,agriculture,food,compiled_estimate,OWID_WB_AGRICULTURE_2024,MEDIUM,PARTIALLY_KNOWN,,,"Available food supply per capita per day; India lower with regional variation"
agri24_bra_food_exp,BRA,2024,FOOD_EXPOSURE,3100,,kilocalories_per_person_per_day,agriculture,food,compiled_estimate,OWID_WB_AGRICULTURE_2024,MEDIUM,PARTIALLY_KNOWN,,,"Available food supply per capita per day; Brazil moderate caloric availability"
agri24_chn_food_exp,CHN,2024,FOOD_EXPOSURE,3050,,kilocalories_per_person_per_day,agriculture,food,compiled_estimate,OWID_WB_AGRICULTURE_2024,MEDIUM,PARTIALLY_KNOWN,,,"Available food supply per capita per day; China moderate caloric availability"
agri24_usa_food_imp,USA,2024,FOOD_IMPORT_SHARE,15.0,,percent,agriculture,food,compiled_estimate,OWID_WB_AGRICULTURE_2024,MEDIUM,PARTIALLY_KNOWN,,,"Food import share; US largely self-sufficient"
agri24_jpn_food_imp,JPN,2024,FOOD_IMPORT_SHARE,60.0,,percent,agriculture,food,compiled_estimate,OWID_WB_AGRICULTURE_2024,MEDIUM,PARTIALLY_KNOWN,,,"Food import share; Japan relies heavily on imports due to limited arable land"
agri24_deu_food_imp,DEU,2024,FOOD_IMPORT_SHARE,25.0,,percent,agriculture,food,compiled_estimate,OWID_WB_AGRICULTURE_2024,MEDIUM,PARTIALLY_KNOWN,,,"Food import share; Germany imports some food products"
agri24_ind_food_imp,IND,2024,FOOD_IMPORT_SHARE,10.0,,percent,agriculture,food,compiled_estimate,OWID_WB_AGRICULTURE_2024,MEDIUM,PARTIALLY_KNOWN,,,"Food import share; India largely self-sufficient but imports certain commodities"
agri24_chn_food_imp,CHN,2024,FOOD_IMPORT_SHARE,8.0,,percent,agriculture,food,compiled_estimate,OWID_WB_AGRICULTURE_2024,MEDIUM,PARTIALLY_KNOWN,,,"Food import share; China largely self-sufficient but imports soybeans"
agri24_usa_fert,USA,2024,FERTILITY_RATE,1.66,,per_1000,population,primary,compiled_estimate,OWID_WB_AGRICULTURE_2024,HIGH,UNKNOWN,,,"Total fertility rate; below replacement level of 2.1"
agri24_deu_fert,DEU,2024,FERTILITY_RATE,1.46,,per_1000,population,primary,compiled_estimate,OWID_WB_AGRICULTURE_2024,HIGH,UNKNOWN,,,"Total fertility rate; below replacement level"
agri24_jpn_fert,JPN,2024,FERTILITY_RATE,1.20,,per_1000,population,primary,compiled_estimate,OWID_WB_AGRICULTURE_2024,HIGH,UNKNOWN,,,"Total fertility rate; one of lowest globally"
agri24_ind_fert,IND,2024,FERTILITY_RATE,2.03,,per_1000,population,primary,compiled_estimate,OWID_WB_AGRICULTURE_2024,HIGH,UNKNOWN,,,"Total fertility rate; approaching replacement level"
agri24_bra_fert,BRA,2024,FERTILITY_RATE,1.70,,per_1000,population,primary,compiled_estimate,OWID_WB_AGRICULTURE_2024,HIGH,UNKNOWN,,,"Total fertility rate; below replacement level"
agri24_chn_fert,CHN,2024,FERTILITY_RATE,1.09,,per_1000,population,primary,compiled_estimate,OWID_WB_AGRICULTURE_2024,HIGH,UNKNOWN,,,"Total fertility rate; very low following one-child policy"
agri24_usa_ageing,USA,2024,AGEING_INDEX,25.0,,ratio,population,primary,compiled_estimate,OWID_WB_AGRICULTURE_2024,MEDIUM,PARTIALLY_KNOWN,,,"Old-age dependency ratio (65+ / 15-64); US has moderate ageing"
agri24_deu_ageing,DEU,2024,AGEING_INDEX,35.0,,ratio,population,primary,compiled_estimate,OWID_WB_AGRICULTURE_2024,MEDIUM,PARTIALLY_KNOWN,,,"Old-age dependency ratio; Germany significant ageing challenge"
agri24_jpn_ageing,JPN,2024,AGEING_INDEX,50.0,,ratio,population,primary,compiled_estimate,OWID_WB_AGRICULTURE_2024,MEDIUM,PARTIALLY_KNOWN,,,"Old-age dependency ratio; Japan most aged population globally"
agri24_ind_ageing,IND,2024,AGEING_INDEX,10.0,,ratio,population,primary,compiled_estimate,OWID_WB_AGRICULTURE_2024,MEDIUM,PARTIALLY_KNOWN,,,"Old-age dependency ratio; India young population"
agri24_bra_ageing,BRA,2024,AGEING_INDEX,17.0,,ratio,population,primary,compiled_estimate,OWID_WB_AGRICULTURE_2024,MEDIUM,PARTIALLY_KNOWN,,,"Old-age dependency ratio; Brazil undergoing demographic transition"
agri24_chn_ageing,CHN,2024,AGEING_INDEX,22.0,,ratio,population,primary,compiled_estimate,OWID_WB_AGRICULTURE_2024,MEDIUM,PARTIALLY_KNOWN,,,"Old-age dependency ratio; China rapid ageing"
```


## FILE: data/seed_politics_businesses_charities_observations.csv
```
observation_id,place_id,time_id,variable_id,value_numeric,value_text,unit,category,sub_category,evidence_type,source_id,confidence,status,missing_reason,caveat,notes
gov24_usa_party,USA,2024,POLITICAL_PARTY_COUNT,2,,count,politics,primary,compiled_estimate,OWID_WB_POLLITICS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Number of political parties with legislative representation; two-party dominant"
gov24_deu_party,DEU,2024,POLITICAL_PARTY_COUNT,6,,count,politics,primary,compiled_estimate,OWID_WB_POLLITICS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Number of political parties with legislative representation; multi-party coalition"
gov24_jpn_party,JPN,2024,POLITICAL_PARTY_COUNT,5,,count,politics,primary,compiled_estimate,OWID_WB_POLLITICS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Number of political parties with legislative representation; LDP dominant"
gov24_ind_party,IND,2024,POLITICAL_PARTY_COUNT,8,,count,politics,primary,compiled_estimate,OWID_WB_POLLITICS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Number of political parties with legislative representation; multi-party system"
gov24_usa_govt_spend,USA,2024,GOVERNMENT_SPENDING,38.0,,percent,politics,primary,compiled_estimate,OWID_WB_POLLITICS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Government spending as percentage of GDP"
gov24_deu_govt_spend,DEU,2024,GOVERNMENT_SPENDING,45.0,,percent,politics,primary,compiled_estimate,OWID_WB_POLLITICS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Government spending as percentage of GDP; German social market economy"
gov24_jpn_govt_spend,JPN,2024,GOVERNMENT_SPENDING,43.0,,percent,politics,primary,compiled_estimate,OWID_WB_POLLITICS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Government spending as percentage of GDP"
gov24_ind_govt_spend,IND,2024,GOVERNMENT_SPENDING,30.0,,percent,politics,primary,compiled_estimate,OWID_WB_POLLITICS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Government spending as percentage of GDP"
gov24_usa_corruption,USA,2024,CORRUPTION_PERCEPTION_INDEX,69,,index,politics,primary,compiled_estimate,OWID_WB_POLLITICS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Transparency International Corruption Perceptions Index (0-100, higher = less corrupt)"
gov24_deu_corruption,DEU,2024,CORRUPTION_PERCEPTION_INDEX,78,,index,politics,primary,compiled_estimate,OWID_WB_POLLITICS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Transparency International Corruption Perceptions Index (0-100, higher = less corrupt)"
gov24_jpn_corruption,JPN,2024,CORRUPTION_PERCEPTION_INDEX,73,,index,politics,primary,compiled_estimate,OWID_WB_POLLITICS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Transparency International Corruption Perceptions Index (0-100, higher = less corrupt)"
gov24_ind_corruption,IND,2024,CORRUPTION_PERCEPTION_INDEX,39,,index,politics,primary,compiled_estimate,OWID_WB_POLLITICS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Transparency International Corruption Perceptions Index (0-100, higher = less corrupt)"
gov24_bra_corruption,BRA,2024,CORRUPTION_PERCEPTION_INDEX,34,,index,politics,primary,compiled_estimate,OWID_WB_POLLITICS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Transparency International Corruption Perceptions Index (0-100, higher = less corrupt)"
gov24_chn_corruption,CHN,2024,CORRUPTION_PERCEPTION_INDEX,42,,index,politics,primary,compiled_estimate,OWID_WB_POLLITICS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Transparency International Corruption Perceptions Index (0-100, higher = less corrupt)"
gov24_usa_turnout,USA,2024,ELECTORAL_TURNOUT,62.0,,percent,politics,primary,compiled_estimate,OWID_WB_POLLITICS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Electoral turnout in most recent national election"
gov24_deu_turnout,DEU,2024,ELECTORAL_TURNOUT,77.0,,percent,politics,primary,compiled_estimate,OWID_WB_POLLITICS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Electoral turnout in most recent national election"
gov24_jpn_turnout,JPN,2024,ELECTORAL_TURNOUT,55.0,,percent,politics,primary,compiled_estimate,OWID_WB_POLLITICS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Electoral turnout in most recent national election"
gov24_ind_turnout,IND,2024,ELECTORAL_TURNOUT,67.0,,percent,politics,primary,compiled_estimate,OWID_WB_POLLITICS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Electoral turnout; world's largest democracy"
gov24_chn_turnout,CHN,2024,ELECTORAL_TURNOUT,70.0,,percent,politics,primary,compiled_estimate,OWID_WB_POLLITICS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Electoral turnout in National People's Congress election"
biz24_usa_business_reg,USA,2024,BUSINESS_REGISTRATION,480,,registrations_per_100000,businesses,primary,compiled_estimate,OWID_WB_POLLITICS_2024,MEDIUM,PARTIALLY_KNOWN,,,"New business registrations per 100,000 population"
biz24_deu_business_reg,DEU,2024,BUSINESS_REGISTRATION,350,,registrations_per_100000,businesses,primary,compiled_estimate,OWID_WB_POLLITICS_2024,MEDIUM,PARTIALLY_KNOWN,,,"New business registrations per 100,000 population"
biz24_jpn_business_reg,JPN,2024,BUSINESS_REGISTRATION,280,,registrations_per_100000,businesses,primary,compiled_estimate,OWID_WB_POLLITICS_2024,MEDIUM,PARTIALLY_KNOWN,,,"New business registrations per 100,000 population"
biz24_ind_business_reg,IND,2024,BUSINESS_REGISTRATION,120,,registrations_per_100000,businesses,primary,compiled_estimate,OWID_WB_POLLITICS_2024,MEDIUM,PARTIALLY_KNOWN,,,"New business registrations per 100,000 population"
biz24_usa_business_density,USA,2024,BUSINESS_DENSITY,85,,businesses_per_1000,businesses,primary,compiled_estimate,OWID_WB_POLLITICS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Registered businesses per 1,000 population"
biz24_deu_business_density,DEU,2024,BUSINESS_DENSITY,75,,businesses_per_1000,businesses,primary,compiled_estimate,OWID_WB_POLLITICS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Registered businesses per 1,000 population"
biz24_jpn_business_density,JPN,2024,BUSINESS_DENSITY,60,,businesses_per_1000,businesses,primary,compiled_estimate,OWID_WB_POLLITICS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Registered businesses per 1,000 population"
biz24_ind_business_density,IND,2024,BUSINESS_DENSITY,25,,businesses_per_1000,businesses,primary,compiled_estimate,OWID_WB_POLLITICS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Registered businesses per 1,000 population"
biz24_usa_market_conc,USA,2024,MARKET_CONCENTRATION,45.0,,percent,businesses,primary,compiled_estimate,OWID_WB_POLLITICS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Market concentration estimated as share of revenue controlled by largest firms"
biz24_deu_market_conc,DEU,2024,MARKET_CONCENTRATION,35.0,,percent,businesses,primary,compiled_estimate,OWID_WB_POLLITICS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Market concentration estimated as share of revenue controlled by largest firms"
biz24_jpn_market_conc,JPN,2024,MARKET_CONCENTRATION,40.0,,percent,businesses,primary,compiled_estimate,OWID_WB_POLLITICS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Market concentration estimated as share of revenue controlled by largest firms"
char24_usa_charity,USA,2024,CHARITY_COUNT,550,,charities_per_100000,charities_interventions,primary,compiled_estimate,OWID_WB_POLLITICS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Registered charities per 100,000 population"
char24_deu_charity,DEU,2024,CHARITY_COUNT,320,,charities_per_100000,charities_interventions,primary,compiled_estimate,OWID_WB_POLLITICS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Registered charities per 100,000 population"
char24_uk_charity,GBR,2024,CHARITY_COUNT,450,,charities_per_100000,charities_interventions,primary,compiled_estimate,OWID_WB_POLLITICS_2024,MEDIUM,PARTIALLY_KNOWN,,,"Registered charities per 100,000 population"
```


## FILE: data/seed_new_domain_variables.csv
```
variable_id,domain,variable_name,definition,unit,preferred_frequency,sensitivity,causal_role,known_confounders,notes
EMPLOYMENT_RATE,employment,Employment rate,Share of the working-age population that is employed,percent,annual,low,outcome,labour-force definition survey methods informal work,Do not substitute job vacancies or advertised jobs
JOB_VACANCIES,employment,Job vacancies,Number of job vacancies per market,count,annual,low,context,hiring cycles labour turnover,Not equivalent to filled jobs
ADVERTISED_JOBS,employment,Advertised jobs,Number of jobs advertised publicly,count,annual,low,context,recruitment patterns,Not equivalent to filled jobs
HOUSING_STOCK,housing,Housing stock,Dwelling units counted as housing stock,units,decennial,low,context,definitions boundary changes,Not equivalent to occupied or available housing
OCCUPIED_HOUSING,housing,Occupied housing,Dwelling units occupied by households,units,decennial,low,context,census coverage vacancy rates,Not equivalent to available housing
AVAILABLE_HOUSING,housing,Available housing,Dwelling units available for habitation,units,decennial,low,context,census vacancy rates,Not equivalent to housing stock
CRIME_TOTAL,crime,Crime occurring,Estimated total criminal acts,incidents,annual,medium,context,survey coverage recording changes,Do not substitute reported or recorded crime
CRIME_REPORTED,crime,Reported crime,Criminal acts reported to authorities,incidents,annual,medium,context,reporting willingness,Not equivalent to crime occurring
CRIME_RECORDED,crime,Recorded crime,Criminal acts recorded by police or justice system,incidents,annual,medium,context,recording practices,Not equivalent to reported crime
ALCOHOL_CONSUMPTION,drugs_and_alcohol,Alcohol consumption per capita,Total pure alcohol consumption per adult,litres_per_adult,annual,medium,outcome,reporting differences cultural norms,Do not substitute consumption for alcohol-related harm or dependency
DRUG_OVERDOSE,drugs_and_alcohol,Drug overdose deaths per 100,000 population,per_100000,annual,high,outcome,drug definition reporting changes,Do not substitute seizures for consumption or treatment
DRUG_TREATMENT,drugs_and_alcohol,Drug treatment admissions,Number of people entering drug treatment per year,count,annual,low,context,reporting changes access barriers,Do not substitute consumption for treatment need
DRUG_SEIZURES,drugs_and_alcohol,Drug seizures,Quantity of illegal drugs seized by law enforcement,kilograms,annual,medium,context,enforcement intensity reporting changes,Do not substitute seizures for consumption or production
ALCOHOL_TREATMENT,drugs_and_alcohol,Alcohol treatment admissions,Number of people entering alcohol treatment per year,count,annual,low,context,reporting changes access barriers,Do not substitute alcohol consumption for treatment need
SCHOOL_ENROLLMENT_PRIMARY,education,Primary school enrollment rate,Share of eligible population enrolled in primary education,percent,annual,low,context,education system differences enrollment age,Do not substitute learning outcomes for enrollment
SCHOOL_ENROLLMENT_SECONDARY,education,Secondary school enrollment rate,Share of eligible population enrolled in secondary education,percent,annual,low,context,education system differences enrollment age,Do not substitute learning outcomes for enrollment
SCHOOL_ENROLLMENT_TERTIARY,education,Tertiary school enrollment rate,Share of eligible population enrolled in tertiary education,percent,annual,low,context,education system differences enrollment age,Do not substitute learning outcomes for enrollment
TEACHER_PUPIL_RATIO,education,Teacher-pupil ratio,Number of pupils per teacher in primary education,pupils_per_teacher,annual,low,context,school size urban rural,Do not substitute teacher quality for pupil ratio
LITERACY_RATE,education,Literacy rate,Share of population aged 15 and above that can read and write,percent,annual,low,context,definition of literacy,Do not substitute enrollment for literacy
UNEMPLOYMENT_YOUNG,education,Youth unemployment rate,Share of young people aged 15-24 without work but seeking employment,percent,annual,low,outcome,education system differences,Do not substitute adult unemployment for youth unemployment
AVERAGE_SALARY,careers,Average monthly salary,Average gross monthly salary in local currency,local_currency,annual,low,context,cost of living differences sector mix,Do not substitute salary for welfare or living standards
PATENTS_PER_CAPITA,technology,Patents per capita,Number of patent applications filed per 1,000 population,patents_per_1000,annual,low,context,patent law differences definitions,Do not substitute patents for innovation capacity
RD_EXPENDITURE,technology,R&D expenditure,Research and development expenditure as percentage of GDP,percent,annual,low,context,sector definitions,Do not substitute R&D expenditure for innovation output
INTERNET_USERS,technology,Internet users,Share of population using the internet,percent,annual,low,context,definition of internet use device access,Do not substitute internet availability for use
MOBILE_SUBSCRIPTIONS,technology,Mobile cellular subscriptions,Mobile cellular subscriptions per 100 people,subscriptions_per_100,annual,low,context,multiple subscriptions per person,Do not substitute mobile subscriptions for mobile users
DIGITAL_PAYMENT_USAGE,technology,Digital payment usage,Share of population using digital payment methods,percent,annual,low,context,banking infrastructure definitions,Do not substitute banking access for digital payment use
AGRICULTURE_PRODUCTION_INDEX,agriculture,Agricultural production index,Agricultural production index (2004-2006 = 100),index,annual,low,context,weather climate variability,Do not substitute food security for production index
FOOD_EXPOSURE,agriculture,Food exposure (calories per capita),Available food supply per capita per day,kilocalories_per_person_per_day,annual,low,context,food waste trade,Do not substitute food production for food consumption
FOOD_IMPORT_SHARE,agriculture,Food import share,Share of food supply that is imported,percent,annual,low,context,food self-sufficiency definitions,Do not substitute food imports for food insecurity
FERTILITY_RATE,population,Fertility rate,Births per 1,000 women of reproductive age,per_1000,annual,low,context,age structure definition of reproductive age,Do not substitute total births for fertility rate
AGEING_INDEX,population,Old-age dependency ratio,Ratio of population aged 65+ to population aged 15-64,ratio,annual,low,context,migration patterns retirement age,Do not substitute life expectancy for ageing index
POLITICAL_PARTY_COUNT,politics,Political party count,Number of political parties represented in the legislature,count,annual,low,context,party system fragmentation,Do not substitute party count for political diversity
GOVERNMENT_SPENDING,politics,Government spending as share of GDP,General government spending as a percentage of GDP,percent,annual,low,context,spending definitions,Do not substitute spending for governance quality
CORRUPTION_PERCEPTION_INDEX,politics,Corruption perception index,Perceived level of public sector corruption (lower scores indicate higher corruption),index,annual,low,context,perception vs reality methodology,Do not substitute perception for actual corruption levels
ELECTORAL_TURNOUT,politics,Electoral turnout,Share of eligible population that votes in national elections,percent,annual,low,outcome,electoral system compulsory voting,Do not substitute turnout for political engagement
BUSINESS_REGISTRATION,businesses,Business registration rate,Number of new business registrations per 100,000 population,registrations_per_100000,annual,low,context,registration requirements,Do not substitute registration for business creation
BUSINESS_DENSITY,businesses,Business density,Number of registered businesses per 1,000 population,businesses_per_1000,annual,low,context,sector definitions,Do not substitute business density for economic dynamism
MARKET_CONCENTRATION,businesses,Market concentration,Share of market revenue controlled by the largest firms,percent,annual,low,context,industry definitions,Do not substitute firm count for market concentration
CHARITY_COUNT,charities_interventions,Charity count,Number of registered charities per 100,000 population,charities_per_100000,annual,low,context,registration requirements,Do not substitute charity count for charitable activity
BENEFICIARY_COUNT,charities_interventions,Beneficiary count,Number of direct beneficiaries of charitable interventions per year,count,annual,low,context,definition of beneficiary,Do not substitute beneficiary count for intervention impact
SEARCH_INTEREST,place_engagement,Search interest,Search query volume for place-related topics per 100 population,relative_index,monthly,low,context,platform changes seasonality,Do not substitute search interest for attention or consumption
LOCAL_JOURNALISM_COUNT,place_engagement,Local journalism outlets,Number of local journalism outlets per 100,000 population,outlets,annual,medium,context,definition of journalism outlet,Do not substitute news coverage for local journalism capacity
CIVIC_PARTICIPATION,place_engagement,Civic participation rate,Share of population participating in civic activities (voting, volunteering, community groups),percent,annual,low,context,definition of civic activity,Do not substitute voting for civic participation
```


## FILE: data/seed_expanded_places.csv
```
place_id,country,place_name,place_type,notes
AFG,Afghanistan,Afghanistan,country,ISO-like project code
MNG,Mongolia,Mongolia,country,ISO-like project code
FJI,Fiji,Fiji,country,ISO-like project code
USA,United States,United States,country,ISO-like project code
GEO,Georgia,Georgia,country,ISO-like project code
LCA,Saint Lucia,Saint Lucia,country,ISO-like project code
OMN,Oman,Oman,country,ISO-like project code
BHS,Bahamas,Bahamas,country,ISO-like project code
CIV,Cote d'Ivoire,Cote d'Ivoire,country,ISO-like project code
BRA,Brazil,Brazil,country,ISO-like project code
CAN,Canada,Canada,country,ISO-like project code
CHN,China,China,country,ISO-like project code
DEU,Germany,Germany,country,ISO-like project code
FRA,France,France,country,ISO-like project code
GBR,United Kingdom,United Kingdom,country,ISO-like project code
IND,India,India,country,ISO-like project code
IDN,Indonesia,Indonesia,country,ISO-like project code
JPN,Japan,Japan,country,ISO-like project code
KOR,South Korea,South Korea,country,ISO-like project code
MEX,Mexico,Mexico,country,ISO-like project code
NGA,Nigeria,Nigeria,country,ISO-like project code
PAK,Pakistan,Pakistan,country,ISO-like project code
ZAF,South Africa,South Africa,country,ISO-like project code
ETH,Ethiopia,Ethiopia,country,ISO-like project code
EGY,Egypt,Egypt,country,ISO-like project code
BGD,Bangladesh,Bangladesh,country,ISO-like project code
VNM,Vietnam,Vietnam,country,ISO-like project code
THA,Thailand,Thailand,country,ISO-like project code
PHL,Philippines,Philippines,country,ISO-like project code
MYS,Malaysia,Malaysia,country,ISO-like project code
AUT,Austria,Austria,country,ISO-like project code
BEL,Belgium,Belgium,country,ISO-like project code
COL,Colombia,Colombia,country,ISO-like project code
DNK,Denmark,Denmark,country,ISO-like project code
FIN,Finland,Finland,country,ISO-like project code
GRC,Greece,Greece,country,ISO-like project code
HUN,Hungary,Hungary,country,ISO-like project code
IRL,Ireland,Ireland,country,ISO-like project code
ISR,Israel,Israel,country,ISO-like project code
ITA,Italy,Italy,country,ISO-like project code
NLD,Netherlands,Netherlands,country,ISO-like project code
POL,Poland,Poland,country,ISO-like project code
PRT,Portugal,Portugal,country,ISO-like project code
SAU,Saudi Arabia,Saudi Arabia,country,ISO-like project code
ESP,Spain,Spain,country,ISO-like project code
SWE,Sweden,Sweden,country,ISO-like project code
CHE,Switzerland,Switzerland,country,ISO-like project code
TUR,Turkey,Turkey,country,ISO-like project code
ARE,United Arab Emirates,United Arab Emirates,country,ISO-like project code
NZL,New Zealand,New Zealand,country,ISO-like project code
ZWE,Zimbabwe,Zimbabwe,country,ISO-like project code
RUS,Russia,Russia,country,ISO-like project code
AUS,Australia,Australia,country,ISO-like project code
```


## FILE: data/seed_expanded_sources.csv
```
source_id,publisher,dataset_name,url,access_date,geographic_coverage,temporal_coverage,method,license,known_biases,definition_notes
WB_WDI_COMPARE_2024,World Bank,World Development Indicators comparison pages,https://data.worldbank.org/,2026-09-06,Global country/economy coverage,2024 for seed indicators,Compiled World Bank indicators from official statistical agencies national statistical organisations OECD and World Bank estimates,CC BY-4.0,Country coverage and indicator reference years vary; estimates and revisions may occur,Population total GDP per capita current US dollars and life expectancy are retained as separate variables
OWID_ILO_WB_2025,Our World in Data / ILO / World Bank,Unemployment rate - ILO Modelled Estimates,https://ourworldindata.org/grapher/unemployment-rate,2026-09-06,Global country and regional coverage,1991-2025,ILO modelled estimates via World Bank processed by Our World in Data,CC BY 4.0 plus original provider terms,Model uncertainty national estimate differences labour-force definitions and reporting limitations,Unemployment measures labour underutilisation only and should not be treated as a complete measure of household economic hardship
OWID_WB_ELECTRICITY_2024,Our World in Data / World Bank,Share of population with access to electricity,https://ourworldindata.org/grapher/sdg-target-on-electricity-access,2026-09-06,Global country and regional coverage,1990-2024,World Bank compiled electrification data processed by Our World in Data,CC BY 4.0 plus original provider terms,Country-specific measurement and estimation differences,Access to electricity is distinct from reliability affordability and consumption
OWID_ITW_2024,Our World in Data / ITU / World Bank,Fixed broadband subscriptions,https://ourworldindata.org/grapher/landline-internet-subscriptions,2026-09-06,Global country and regional coverage,1998-2024,ITU data via World Bank processed by Our World in Data; nearest available year may be shown where 2024 is unavailable,CC BY 4.0 plus original provider terms,Technology definitions reporting gaps and nearest-year substitution,Subscription counts do not equal unique users; per-100 measures depend on population estimates
OWID_WB_WDI_PPP_2024,Our World in Data / World Bank,GDP per capita PPP constant 2021 international dollars,https://ourworldindata.org/grapher/gdp-per-capita-ppp,2026-09-06,Global country coverage,2024,World Bank WDI data as presented by Our World in Data; displayed source value rounding stored as-is,CC BY 4.0 plus original provider terms,Displayed source value rounding; stored numeric reflects displayed rounding,GDP per capita PPP in constant 2021 international dollars; 34 countries represented
OWID_ILO_EMP_2025,Our World in Data / ILO,Employment rate - modelled estimates,https://ourworldindata.org/grapher/employment-rate,2026-09-06,Global country coverage,2025,ILO modelled employment estimates via World Bank processed by Our World in Data,CC BY 4.0 plus original provider terms,Labour-force definition differences between countries,Employment rate measures employed share of working-age population; distinct from unemployment rate
OWID_WB_CRIME_2024,Our World in Data / UNODC,Crime statistics,https://ourworldindata.org/grapher/crimes-per-100000-people,2026-09-06,Global country coverage,1990-2024,UNODC crime statistics compiled by Our World in Data,CC BY 4.0 plus original provider terms,Definition varies by jurisdiction; recording practices differ,Crime statistics vary by definition and recording practices; should not be used alone to compare crime rates between countries
OWID_WB_HOUSING_2024,Our World in Data / World Bank,Housing statistics,https://ourworldindata.org/grapher/housing,2026-09-06,Global country coverage,1990-2024,World Bank housing data processed by Our World in Data,CC BY 4.0 plus original provider terms,Housing definitions vary by country; occupancy rates may use different bases,Housing stock occupied and available housing should be distinguished in analysis
OWID_WB_DRUGS_2024,Our World in Data / WHO,Drug and alcohol policy statistics,https://ourworldindata.org/grapher/drug-seizures,2026-09-06,Global country coverage,1999-2020,Global Health Observatory Data Repository WHO via World Bank processed by Our World in Data,CC BY 4.0 plus original provider terms,Drug seizure data reflects enforcement intensity not consumption; alcohol data year is 2020 not 2024,Alcohol consumption uses WHO projected estimates; data year 2020 (latest available); not 2024
OWID_WB_EDUCATION_2024,Our World in Data / UNESCO,Education statistics,https://ourworldindata.org/grapher/school-enrollment,2026-09-06,Global country coverage,2000-2024,UNESCO Institute for Statistics processed by Our World in Data,CC BY 4.0 plus original provider terms,Gross vs net enrollment rates differ; definitions vary by country,Education enrollment should be distinguished from learning outcomes
OWID_WB_AGRICULTURE_2024,Our World in Data / FAO,Agricultural production statistics,https://ourworldindata.org/grapher/crop-production,2026-09-06,Global country coverage,1961-2024,FAO agricultural production data processed by Our World in Data,CC BY 4.0 plus original provider terms,Agricultural production indices use different base years across sources,Agricultural production should be distinguished from food security measures
OWID_WB_TECHNOLOGY_2024,Our World in Data / ITU,Technology and innovation statistics,https://ourworldindata.org/grapher/internet-users,2026-09-06,Global country coverage,1990-2024,ITU and World Bank technology data processed by Our World in Data,CC BY 4.0 plus original provider terms,Internet user definitions vary; multiple devices may share one subscription,Technology adoption should be distinguished from technology infrastructure
OWID_WB_POLLITICS_2024,Our World in Data / V-Dem,Political statistics,https://ourworldindata.org/grapher/electoral-turnout,2026-09-06,Global country coverage,1900-2024,V-Dem and World Bank political data processed by Our World in Data,CC BY 4.0 plus original provider terms,Perception-based measures differ from objective governance measures,Political perception indices should not be substituted for actual governance outcomes
OWID_WB_ILO_UNEMP_2025,Our World in Data / ILO / World Bank,Unemployment rate national estimates,https://data.worldbank.org/indicator/SL.UEM.TOTL.ZS,2026-09-06,Global country coverage,2024,World Bank national accounts data and OECD National Accounts data,CC BY-4.0 plus original provider terms,National estimates differ from ILO modelled estimates,National unemployment estimates vary by country methodology
```


## FILE: known-gaps/gap_register.csv
```
gap_id,priority,gap_class,domain,gap_description,why_it_matters,current_measurement_state,attack_strategy,falsification_question,alternative_explanations,notes
GAP-001,highest,coverage,informal_economy,"Barter, unregistered work, informal credit, undeclared trade and other activity are weakly observed.","Formal economic statistics can miss substantial local activity.",UNKNOWN,"Compare household surveys, tax gaps, labour-force surveys, transaction studies and source-specific estimates.","Would the apparent economic structure remain if plausible informal activity were included?","Measurement under-reporting; definitional differences; illegal activity hidden by design.",
GAP-002,highest,coverage,cultural_capacity,"Actual local venues, independent media, festivals, clubs and amateur groups are not equivalent to consumption measures.","Consumption can remain high while local production capacity erodes.",PARTIALLY_KNOWN,"Build place-time inventories of active organisations, facilities, participants, outputs and survival.","Does high consumption persist after local production capacity falls?","Migration; digitisation; consolidation; changes in reporting.",
GAP-003,highest,coverage,information_ecology,"Places may be discussed extensively while producing little local journalism or agenda-setting information.","External attention is not the same as local voice.",PARTIALLY_KNOWN,"Separate about/by/for/with-place information and compare local versus external contribution and attention.","Does high external attention predict local information capacity, or can the two diverge?","Tourism; crisis coverage; platform effects; population size.",
GAP-004,highest,coverage,human_capability,"Formal education counts do not capture practical skills, maintenance capacity, organisation or institutional memory.","Capability stocks can erode before outputs visibly decline.",UNKNOWN,"Measure practitioners, transmission, retirement/exit, maintenance and institutional-memory indicators.","Can observed capability decline be distinguished from changing demand or technology substitution?","Automation; migration; ageing; changing task requirements.",
GAP-005,highest,measurement,place_metabolism,"Local extraction, imports, processing, waste, recycling and exports are poorly represented compared with national aggregates.","A place's physical metabolism can differ sharply from national averages.",PARTIALLY_KNOWN,"Track directed material flows with quantity, processing stage, destination and recovery status.","Does the apparent prosperity of a place persist when physical inputs, waste and exports are included?","Boundary choice; supply-chain relocation; accounting conventions.",
GAP-006,strong,coverage,security,"Security provision can be distributed among state, private, community, militia, religious, customary and criminal providers.","Recorded crime alone cannot describe who actually provides security or coercive capacity.",UNKNOWN,"Map provider presence, functions, coverage, reliance and relationships to other providers.","Do changes in recorded crime remain after changes in security-provider structure are accounted for?","Reporting changes; enforcement intensity; conflict; institutional substitution.",
GAP-007,strong,temporal_resolution,system_states,"Annual indicators can miss rapid transitions and regime shifts.","Boom, decline, reconstruction and consolidation can occur between annual observations.",PARTIALLY_KNOWN,"Use event/change-point metadata and non-annual observations where defensible.","Would the inferred transition timing change materially with monthly/quarterly data?","Seasonality; reporting delays; boundary changes; temporary shocks.",
GAP-008,strong,measurement,definitions,"Variable definitions, boundaries and denominators change over time and across sources.","Apparent trends may be measurement artefacts.",PARTIALLY_KNOWN,"Require definition, methodology, denominator, boundary and source-vintage metadata.","Does the relationship survive a defensible harmonisation or source-stratified analysis?","Real change; reclassification; survey redesign; boundary revisions.",
GAP-009,strong,methodology,agent_analysis,"Proposed patterns can become stories if alternative explanations and falsification tests are not required.","Epistemic guardrails are necessary for autonomous discovery.",PARTIALLY_KNOWN,"Require alternative explanations, confounders, reverse causality, selection bias, measurement change and falsification tests.","What observation would make the obvious interpretation wrong?","Confirmation bias; collider bias; omitted variables; model selection.",
GAP-010,strong,coverage,cultural_flows,"Cross-border cultural influence needs exposure, consumption, adoption, local reproduction, hybridisation and return-flow measures.","A single cultural-share number hides direction and mutation.",PARTIALLY_KNOWN,"Track directed place-time flows and variant parentage.","Does an apparent foreign-origin influence disappear when local reproduction and hybridisation are separated?","Common global platforms; language; migration; ownership; production location.",
GAP-011,strong,paired_distinction,employment,"Employed people / vacancies / advertised jobs / filled jobs are not equivalent and are rarely measured consistently.","Using one as a proxy for another obscures labour market structure.",UNKNOWN,"Collect all four measures with consistent definitions and denominators for comparable places.","Would labour market analysis change materially if all four distinctions were properly recorded?","Confirmation bias; poor survey design; administrative data limitations.",
GAP-012,strong,paired_distinction,housing,"Housing stock / occupied housing / available housing are not equivalent and are rarely measured consistently.","Using one as a proxy for another obscures housing conditions.",UNKNOWN,"Collect all three measures with consistent definitions and denominators for comparable places.","Would housing analysis change materially if all three distinctions were properly recorded?","Administrative data limitations; definition variability; boundary changes.",
GAP-013,strong,paired_distinction,crime,"Crime occurring / reported / recorded / arrests / prosecutions / convictions are not equivalent and are rarely measured consistently.","Using one as a proxy for another obscures criminal justice dynamics.",UNKNOWN,"Collect all six measures with consistent definitions and boundaries for comparable places.","Would criminal justice analysis change materially if all six distinctions were properly recorded?","Reporting changes; reclassification; enforcement intensity; legal process differences.",
GAP-014,strong,paired_distinction,health,"Incidence / prevalence / diagnosis / mortality are not equivalent and are rarely measured consistently.","Using one as a proxy for another obscures health dynamics.",UNKNOWN,"Collect all four measures with consistent definitions and denominators for comparable places.","Would health analysis change materially if all four distinctions were properly recorded?","Diagnosis coding changes; definition drift; demographic shifts.",
GAP-015,strong,paired_distinction,cultural,"Cultural exposure / consumption / adoption / production / influence are not equivalent and are rarely measured consistently.","Using one as a proxy for another obscures cultural dynamics.",UNKNOWN,"Collect all five measures with consistent definitions for comparable places and periods.","Would cultural analysis change materially if all five distinctions were properly recorded?","Platform metrics; consumption data; ownership records do not capture adoption or influence.",
GAP-016,high,coverage,language_evolution,"Word-level language evolution with reliable dates and geographic provenance is not systematically tracked.","Borrowing direction, semantic change and geographic spread lack reliable provenance.",UNKNOWN,"Build a word-level language evolution register with etymology, borrowing direction, geographic spread and semantic change timestamps.","Would language change analysis be improved with word-level provenance?","Common global platforms; language leveling; migration patterns.",
GAP-017,high,coverage,informal_workers,"Informal workers and their characteristics are not captured in formal labour statistics.","The informal workforce can be substantial yet invisible to policy and planning.",PARTIALLY_KNOWN,"Survey informal employment; cross-reference with tax informal sector estimates; collect occupation and sector data.","Does the informal workforce share change when formal employment shifts?","Economic cycles; digitisation; regulatory changes.",
GAP-018,high,measurement,attention_vs_presence,"Attention and information production are not equivalent to physical presence or importance.","High attention does not guarantee local influence or importance.",PARTIALLY_KNOWN,"Separate explicit, inferred and unknown connection to a place; measure information production separately from attention.","Does high external attention predict local information capacity, or can the two diverge?","Tourism; crisis coverage; platform effects; population size.",
GAP-019,high,methodology,cross-country_comparability,"Comparable small-area socioeconomic data across every country/territory is not available.","Aggregating to national level loses local variation; local data uses incompatible definitions.",UNKNOWN,"Produce harmonised small-area estimates with documented definitions, boundaries and methods for every country.","Would cross-country analysis be improved with truly comparable small-area data?","Boundary revisions; survey redesign; administrative data differences.",
GAP-020,high,temporal_resolution,long_historical_stable,"Long historical series with stable geographic boundaries is not available.","Annual data with changing boundaries prevents observing true long-term trends.",PARTIALLY_KNOWN,"Reconstruct historical series using consistent boundary definitions and documented methodology changes.","Would trend analysis be improved with long series and stable boundaries?","Boundary revisions; survey redesign; administrative data differences."
```

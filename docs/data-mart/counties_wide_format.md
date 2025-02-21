# counties_wide_format

This table is mostly a restructured version of counties_long_format so that each row represents a whole county. The only other difference is the addition of two columns `offshore_wind_capacity_mw_via_ports` and `offshore_wind_interest_type`. See below for details.

## Column Descriptions

**Unique Key Column(s):** `county_id_fips`

Aggregates of fossil infrastructure projects only include pre-construction projects (as of the data release date, see the EIP data source page for details). This provides a forward-looking lens to the data.

{% content-ref url="../sources/README.md" %}
[Data Sources](../sources/README.md)
{% endcontent-ref %}

Fossil generation aggregates include coal, oil, and gas power plants.

"renewable_and_battery" aggregates include solar and wind power plants **and** battery storage facilities.

|Subject|Column|Description|Source|Notes|
|----|----|----|----|----|
|Identifiers|`county_id_fips`|County FIPS ID|Census||
|Location|`county`|County name|Census||
||`state_id_fips`|State FIPS ID|Census||
||`state`|US State name|Census||
||`county_land_area_km2`|Total land area of a county with units of square kilometers.|Census TIGER||
||`unprotected_land_area_km2`|Total county area minus protected area (GAP 1 or 2). See Protected Land Area section below.|USGS PAD||
||`federal_fraction_unprotected_land`|Fraction of unprotected land area managed by Federal agencies.|USGS PAD||
|Resource Aggregates|`county_total_co2e_tonnes_per_year`|Total CO2e emissions, across all sources and both proposed and existing, in metric tonnes per year.|PUDL, LBNL, EIP||
||`fossil_existing_capacity_mw`|Generation capacity, in megawatts, of existing fossil power plants.|PUDL||
||`fossil_existing_co2e_tonnes_per_year`|Annual CO2 equivalent emissions from existing fossil power plants, in metric tonnes.|derived from PUDL||
||`fossil_existing_facility_count`|Number of existing fossil power plants.|PUDL||
||`fossil_proposed_capacity_mw`|Generation capacity, in megawatts, of proposed fossil power plants.|LBNL||
||`fossil_proposed_co2e_tonnes_per_year`|Annual CO2 equivalent emissions from proposed fossil power plants, in metric tonnes.|derived from LBNL||
||`fossil_proposed_facility_count`|Number of proposed fossil power plants.|LBNL||
||`renewable_and_battery_existing_capacity_mw`|Combined generation and storage capacity, in megawatts, of existing renewable power and storage facilities.|PUDL||
||`renewable_and_battery_existing_co2e_tonnes_per_year`|Annual CO2 equivalent emissions from renewable generation and battery storage facilities, in metric tonnes.|derived from PUDL||
||`renewable_and_battery_existing_facility_count`|Number of existing renewable generation or battery storage facilities.|PUDL||
||`renewable_and_battery_proposed_capacity_mw`|Combined generation and storage capacity, in megawatts, of proposed renewable power and storage facilities.|LBNL||
||`renewable_and_battery_proposed_facility_count`|Number of proposed renewable generation or battery storage facilities.|LBNL||
||`infra_total_proposed_co2e_tonnes_per_year`|Annual CO2 equivalent emissions from all proposed fossil infrastructure projects, in metric tonnes.|EIP||
||`infra_total_proposed_facility_count`|Number of proposed fossil infrastructure facilities across all sectors.|EIP||
||`infra_total_proposed_nox_tonnes_per_year`|Annual NOx emissions from all proposed fossil infrastructure projects, in metric tonnes.|EIP||
||`infra_total_proposed_pm2_5_tonnes_per_year`|Annual PM2.5 emissions from all proposed fossil infrastructure projects, in metric tonnes.|EIP||
||`battery_storage_existing_capacity_mw`|Storage capacity, in megawatts, of existing battery storage facilities.|PUDL||
||`battery_storage_existing_facility_count`|Number of existing battery storage facilities.|PUDL||
||`battery_storage_proposed_capacity_mw`|Storage capacity, in megawatts, of proposed battery storage facilities.|LBNL||
||`battery_storage_proposed_facility_count`|Number of proposed battery storage facilities.|LBNL||
||`coal_existing_capacity_mw`|Generation capacity, in megawatts, of existing coal power plants.|PUDL||
||`coal_existing_co2e_tonnes_per_year`|Annual CO2 equivalent emissions from existing coal power plants, in metric tonnes.|derived from PUDL||
||`coal_existing_facility_count`|Number of existing coal power plants.|PUDL||
||`coal_proposed_capacity_mw`|Generation capacity, in megawatts, of proposed coal power plants.|LBNL||
||`coal_proposed_co2e_tonnes_per_year`|Annual CO2 equivalent emissions from proposed fossil power plants, in metric tonnes.|derived from LBNL||
||`coal_proposed_facility_count`|Number of proposed coal power plants.|LBNL||
||`gas_existing_capacity_mw`|Generation capacity, in megawatts, of existing gas power plants.|PUDL||
||`gas_existing_co2e_tonnes_per_year`|Annual CO2 equivalent emissions from existing gas power plants, in metric tonnes.|derived from PUDL||
||`gas_existing_facility_count`|Number of existing gas power plants.|PUDL||
||`gas_proposed_capacity_mw`|Generation capacity, in megawatts, of proposed gas power plants.|LBNL||
||`gas_proposed_co2e_tonnes_per_year`|Annual CO2 equivalent emissions from proposed gas power plants, in metric tonnes.|derived from LBNL||
||`gas_proposed_facility_count`|Number of proposed gas power plants.|LBNL||
||`offshore_wind_existing_capacity_mw`|Generation capacity, in megawatts, of existing offshore wind power plants.|PUDL||
||`offshore_wind_existing_facility_count`|Number of existing offshore wind power plants.|PUDL||
||`offshore_wind_proposed_capacity_mw`|Generation capacity, in megawatts, of propsed offshore wind power plants. When a wind farm has multiple cable landing locations, the capacity is split equally between landing locations. Note that this is the only proposed capacity column NOT sourced from LBNL.|original work||
||`offshore_wind_proposed_facility_count`|Number of proposed offshore wind power plants.|original work||
||`offshore_wind_capacity_mw_via_ports`|Total generation capacity, in megawatts, of propsed offshore wind power plants with an assembly/manufacturing port in this county. Capacity has NOT been split between multiple port locations, so the sum of this column is deliberately greater than total proposed offshore wind capacity.|original work||
||`offshore_wind_interest_type`|Describes the relationship of this county to offshore wind. One of `Proposed lease area`, `Contracted project`,  `Lease area in proximity`, or NULL.|original work||
||`oil_existing_capacity_mw`|Generation capacity, in megawatts, of existing oil and diesel power plants.|PUDL||
||`oil_existing_co2e_tonnes_per_year`|Annual CO2 equivalent emissions from existing oil power plants, in metric tonnes.|derived from PUDL||
||`oil_existing_facility_count`|Number of existing oil power plants.|PUDL||
||`onshore_wind_existing_capacity_mw`|Generation capacity, in megawatts, of existing onshore wind power plants.|PUDL||
||`onshore_wind_existing_facility_count`|Number of existing onshore wind power plants.|PUDL||
||`onshore_wind_proposed_capacity_mw`|Generation capacity, in megawatts, of proposed onshore wind power plants.|LBNL||
||`onshore_wind_proposed_facility_count`|Number of proposed onshore wind power plants.|LBNL||
||`solar_existing_capacity_mw`|Generation capacity, in megawatts, of existing solar power plants.|PUDL||
||`solar_existing_co2e_tonnes_per_year`|Annual CO2 equivalent emissions from existing solar power plants, in metric tonnes. The few non-zero values of this column come from solar thermal facilities that also burn gas.|derived from PUDL||
||`solar_existing_facility_count`|Number of existing solar power plants.|PUDL||
||`solar_proposed_capacity_mw`|Generation capacity, in megawatts, of proposed solar power plants.|LBNL||
||`solar_proposed_facility_count`|Number of proposed solar power plants.|LBNL||
||`infra_gas_proposed_co2e_tonnes_per_year`|Annual CO2 equivalent emissions from proposed gas infrastructure, in metric tonnes.|EIP||
||`infra_gas_proposed_facility_count`|Number of existing infrastructure facilities in the gas sector, excluding LNG.|EIP||
||`infra_gas_proposed_nox_tonnes_per_year`|Annual NOx emissions from all proposed gas infrastructure projects, in metric tonnes.|EIP||
||`infra_gas_proposed_pm2_5_tonnes_per_year`|Annual PM2.5 emissions from all proposed gas infrastructure projects, in metric tonnes.|EIP||
||`infra_lng_proposed_co2e_tonnes_per_year`|Annual CO2 equivalent emissions from proposed LNG infrastructure, in metric tonnes.|EIP||
||`infra_lng_proposed_facility_count`|Number of existing infrastructure facilities in the LNG sector.|EIP||
||`infra_lng_proposed_nox_tonnes_per_year`|Annual NOx emissions from all proposed LNG infrastructure projects, in metric tonnes.|EIP||
||`infra_lng_proposed_pm2_5_tonnes_per_year`|Annual PM2.5 emissions from all proposed LNG infrastructure projects, in metric tonnes.|EIP||
||`infra_oil_proposed_co2e_tonnes_per_year`|Annual CO2 equivalent emissions from proposed oil infrastructure, in metric tonnes.|EIP||
||`infra_oil_proposed_facility_count`|Number of existing infrastructure facilities in the oil sector, excluding natural-gas-specific facilties.|EIP||
||`infra_oil_proposed_nox_tonnes_per_year`|Annual NOx emissions from all proposed oil infrastructure projects, in metric tonnes.|EIP||
||`infra_oil_proposed_pm2_5_tonnes_per_year`|Annual PM2.5 emissions from all proposed oil infrastructure projects, in metric tonnes.|EIP||
||`infra_petrochemicals_and_plastics_proposed_co2e_tonnes_per_year`|Annual CO2 equivalent emissions from proposed petrochemical and plastics infrastructure, in metric tonnes.|EIP||
||`infra_petrochemicals_and_plastics_proposed_facility_count`|Number of existing infrastructure facilities in the petrochemicals and plastics sector, excluding fertilizers.|EIP||
||`infra_petrochemicals_and_plastics_proposed_nox_tonnes_per_year`|Annual NOx emissions from all proposed petrochemical and plastics infrastructure projects, in metric tonnes.|EIP||
||`infra_petrochemicals_and_plastics_proposed_pm2_5_tonnes_per_year`|Annual PM2.5 emissions from all proposed petrochemical and plastics infrastructure projects, in metric tonnes.|EIP||
||`infra_synthetic_fertilizers_proposed_co2e_tonnes_per_year`|Annual CO2 equivalent emissions from proposed fertilizer infrastructure, in metric tonnes.|EIP||
||`infra_synthetic_fertilizers_proposed_facility_count`|Number of existing infrastructure facilities in the fertilizers sector.|EIP||
||`infra_synthetic_fertilizers_proposed_nox_tonnes_per_year`|Annual NOx emissions from all proposed fossil infrastructure projects, in metric tonnes.|EIP||
||`infra_synthetic_fertilizers_proposed_pm2_5_tonnes_per_year`|Annual PM2.5 emissions from all proposed fossil infrastructure projects, in metric tonnes.|EIP||
|Regulatory|`ordinance`|Summary text of the local ordinances in the given county, if any.|RELDI||
||`has_ordinance`|True/false indicator of the presence of any local ordinances in the county.|derived from RELDI||
||`ordinance_earliest_year_mentioned`|Approximate year the local ordinance was enacted. This was automatically extracted from the ordinance text so is not perfectly accurate.|derived from RELDI||
||`ordinance_jurisdiction_name`|Name of the jurisdiction with a local ordinance. This is usually a county or town within that county. "multiple" if more than one jurisdiction within the county has an ordinance.|RELDI||
||`ordinance_jurisdiction_type`|Category of jurisdiction: county, town, or city. "multiple" if more than one jurisdiction type within the county has an ordinance.|derived from RELDI||
||`state_permitting_text`|Summary text of the wind permitting rules of the given state.|NCSL||
||`state_permitting_type`|Category of the state's wind permitting jurisdiction: state, local, or hybrid.|NCSL||
||`has_solar_ban_nrel`|True when a county has banned solar development according to NREL's ordinance database.|NREL|See 'NREL Ordinance Interpretation' section below|
||`has_wind_ban_nrel`|True when a county has banned wind development according to NREL's ordinance database.|NREL|See 'NREL Ordinance Interpretation' section below|
||`has_de_facto_ban_nrel`|True when a wind/solar ban is based on technical criteria like setback distances, as opposed to an outright ban.|NREL|See 'NREL Ordinance Interpretation' section below|
||`has_ban`|True when any of `has_solar_ban_nrel`, `has_wind_ban_nrel`, or `has_ordinance` are True|NREL/RELDI||
|Environmental Justice|`total_tracts`|Number of Census tracts contained in this county|Justice40||
||`justice40_dbcp_index`|Proprietary environmental justice score. See Justice40 section below.|Justice40||
||`n_distinct_qualifying_tracts`|Number of distinct tracts that meet Justice40's criterion for "disadvantaged" within this county|Justice40||
||`n_tracts_agriculture_loss_low_income_not_students`|Number of tracts with high predicted climate-driven agriculture loss and low income (excepting students)|Justice40||
||`n_tracts_asthma_low_income_not_students`|Number of tracts with high asthma rates and low income (excepting students)|Justice40||
||`n_tracts_below_poverty_and_low_high_school`|Number of tracts with high poverty rates and low high school graduation rates|Justice40||
||`n_tracts_below_poverty_line_less_than_high_school_islands`|Number of tracts with high poverty rates and low high school graduation rates (island territories only)|Justice40||
||`n_tracts_building_loss_low_income_not_students`|Number of tracts with high predicted climate-driven building loss and low income (excepting students)|Justice40||
||`n_tracts_diabetes_low_income_not_students`|Number of tracts with high diabetes rates and low income (excepting students)|Justice40||
||`n_tracts_diesel_particulates_low_income_not_students`|Number of tracts with high diesel emissions and low income (excepting students)|Justice40||
||`n_tracts_energy_burden_low_income_not_students`|Number of tracts with high energy burden and low income (excepting students)|Justice40||
||`n_tracts_hazardous_waste_proximity_low_income_not_students`|Number of tracts with close proximity to hazardous waste sites and low income (excepting students)|Justice40||
||`n_tracts_heart_disease_low_income_not_students`|Number of tracts with high heart disease rates and low income (excepting students)|Justice40||
||`n_tracts_housing_burden_low_income_not_students`|Number of tracts with high housing burden and low income (excepting students)|Justice40||
||`n_tracts_lead_paint_and_median_home_price_low_income_not_studen`|Number of tracts with high lead paint exposure, high home prices, and low income (excepting students)|Justice40||
||`n_tracts_life_expectancy_low_income_not_students`|Number of tracts with low life expectancy and low income (excepting students)|Justice40||
||`n_tracts_linguistic_isolation_and_low_high_school`|Number of tracts with high linguistic isolation and low high school graduation rates|Justice40||
||`n_tracts_local_to_area_income_ratio_and_low_high_school`|Number of tracts with low ratios of local to regional income and low high school graduation rates|Justice40||
||`n_tracts_local_to_area_income_ratio_less_than_high_school_islan`|Number of tracts with low ratios of local to regional income and low high school graduation rates (island territories only)|Justice40||
||`n_tracts_pm2_5_low_income_not_students`|Number of tracts with high particulate matter pollution and low income (excepting students)|Justice40||
||`n_tracts_population_loss_low_income_not_students`|Number of tracts with high predicted climate-driven population loss and low income (excepting students)|Justice40||
||`n_tracts_risk_management_plan_proximity_low_income_not_students`|Number of tracts with close proximity to RMP sites and low income (excepting students)|Justice40||
||`n_tracts_superfund_proximity_low_income_not_students`|Number of tracts with close proximity to superfund sites and low income (excepting students)|Justice40||
||`n_tracts_traffic_low_income_not_students`|Number of tracts with high traffic exposure and low income (excepting students)|Justice40||
||`n_tracts_unemployment_and_low_high_school`|Number of tracts with high unemployment and low high school graduation rates|Justice40||
||`n_tracts_unemployment_less_than_high_school_islands`|Number of tracts with high unemployment and low high school graduation rates (island territories only)|Justice40||
||`n_tracts_wastewater_low_income_not_students`|Number of tracts with high wastewater pollution and low income (excepting students)|Justice40||

## Modeling Decisions

With the exception of the two columns mentioned above, this is a restructured version of counties_long_format. See the entry for that table for description of methodology:
{% page-ref page="counties_long_format.md" %}
The following are in addition to, not instead of, those modeling decisions.

### Definition of "Renewables" includes Battery Storage

The columns prefixed with `renewables_` contain aggregates of both generation and storage assets. The generation sources are solar photovoltaic, onshore wind, and offshore wind techonologies. The only included storage type is battery storage. Batteries are included here because

* batteries increase capacity factors of wind & solar plants
* batteries allow arbitrage against tariffs, enabling higher project values
* batteries are also additional local economic development (more tax base)

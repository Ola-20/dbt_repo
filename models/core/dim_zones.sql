{#
    create dim_zones.sql from seeded csv table taxi_zone_lookup.csv
#}

{{ config(materialized='table') }}

select 
    locationid, 
    borough, 
    zone, 
    replace(service_zone,'Boro','Green') as service_zone 
from {{ ref('taxi_zone_lookup') }}

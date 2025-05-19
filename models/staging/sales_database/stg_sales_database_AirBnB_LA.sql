{{ config(
    materialized='table'
) }}
select
    id as id,
    host_id  as host_id,
    neighbourhood as neighbourhood_cleansed,
    room_type  as room_type,
    price  as price,
    minimum_nights  as minimum_nights,
    number_of_reviews  as number_of_reviews,
    availability_365  as availability_365
from {{ source('sales_database','AirBnB_LA') }}
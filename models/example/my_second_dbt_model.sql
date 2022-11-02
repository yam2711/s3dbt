{{ config (
    materialized="table"
)}} 

with a as (
select *
from {{ref('my_first_dbt_model')}}
),

final as(
    select top 1000 * from a 
)


select * from final

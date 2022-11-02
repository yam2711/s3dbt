{{ config (
    materialized="table"
)}} 

with a as (
select *
from {{ref('my_first_dbt_model')}}
),

final as(
    select  top 100 * from a 
    where endstationname IN ('Vesey Pl & River Terrace', 'Madison St & Clinton St', 'Franklin St & W Broadway')
    
    )


select * from final

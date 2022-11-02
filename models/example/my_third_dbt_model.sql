{{ config (
    materialized="table"
)}} 

with b as (
select *
from {{ref('my_second_dbt_model')}}
),

final as(
    SELECT (2022-AVG(birthyear)) AS Averagebirthyear FROM b


)

select * from final

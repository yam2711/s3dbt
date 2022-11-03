{{ config (
    materialized="table"
)}} 

with a as (
select *
from {{ref('my_first_dbt_model')}}
),

b as (
    select * from Analytics.public.ldsdata4
),

final as(
    
    select a.endstationname, b.endstationlongitude,  a.birthyear,
    a.gender, a.usertype, a.bikeid
    from a 
    inner join b                                                                                                                                                                                               
    on a.bikeid = b.bikeid
    
    )


select top 100 * from final
 where endstationname IN ('Vesey Pl & River Terrace', 'Madison St & Clinton St', 'Franklin St & W Broadway')

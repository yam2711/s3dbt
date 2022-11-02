
{{ config (
    materialized="table"
)}} 


SELECT * FROM ANALYTICS.PUBLIC.citibiketripdata
WHERE startstationname LIKE 'W%' 


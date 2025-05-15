{{ config(materialized = 'table',
    pre_hook = "TRUNCATE TABLE {{source('datafeed_shared_schema','department')}}"
    ) }}
with rishi as (

    select * from {{source('datafeed_shared_schema','department')}}

)
select * from rishi 

{{ config(materialized='incremental',
            incremental_startegy = 'append') }}


with rishi as (
    select * from {{source('datafeed_shared_schema','NEXT_DEP')}} where id in (1,2,3)
)

select * from rishi 
{{ config(materialized='table') }}

with rishi as (
    select * from {{source('datafeed_shared_schema','PREV_DEP')}}
)

select * from rishi 
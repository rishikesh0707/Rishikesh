{{ config(materialized='table') }}

with dunhill as (
    select * from {{source('datafeed_shared_schema','NEXT_DEP')}}
)

select * from dunhill
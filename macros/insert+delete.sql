{{ config(materialized='incremental',
            unique_key = 'id',
            incremental_startegy = 'insert+delete') }}


with rishi as (
    select * from {{source('datafeed_shared_schema','NEXT_DEP')}} 
)

select * from rishi 
{{ config(materialized='view') }}

with cte as (
    select * from {{source('datafeed_shared_schema','STUDENTS')}}

)

select * from cte 
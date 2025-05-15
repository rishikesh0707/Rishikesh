{{ config(materialized='table') }}

with rk as (
    select * from {{source('datafeed_shared_schema','STUDENTS_JUNE')}}
)

select * from rk 
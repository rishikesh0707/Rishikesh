{{config(materialized='table')}}

with rishi as (
    select studentid as id,
    name,
    course,
    feepaid as total_paid
     from {{source('datafeed_shared_schema','STUDENTS')}}
)

select * from rishi 
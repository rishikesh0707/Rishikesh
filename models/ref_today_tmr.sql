{{ config(materialized='table') }}

with rishi as (
    select * from {{ ref('today_tmr')}}
)

select * from rishi where dbt_valid_to is null

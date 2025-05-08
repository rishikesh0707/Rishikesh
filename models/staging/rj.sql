{{ config(materialized='view') }}

with lj as (
    select n.first_name,
           p.loc 
           from {{source('datafeed_shared_schema','NEXT_DEP')}} n 
           right join PREV_DEP p on n.id = p.id 
)

select * from lj
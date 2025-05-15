{{ config(materialized='view') }}

with rs as (

select id,
first_name,
age,
sum(salary) as total_salary from {{ref('test_singular')}}
group by id,first_name,age )

select * from rs  
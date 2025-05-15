select id,
first_name,
age,
sum(salary) as total_salary from {{ref('test_singular')}}
group by 1 having total_salary < 20000
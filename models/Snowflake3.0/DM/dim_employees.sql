{{
    config(
        materialized='table'
    )
}}
with stg_employees as (
    select * from {{ ref('stg_employees') }}
),

stg_address as (
    select * from {{ ref('stg_address') }}
),

final as (
select
e.id ,
e.name ,
e.age ,
e.position ,
e.salary ,
e.hire_date,
a.street ,
a.city ,
a.state ,
a.postal_code ,
a.country 
from RAW.DBT_Source.Employee e
left join RAW.DBT_Source.Address a on e.id = a.id
)

select * from final
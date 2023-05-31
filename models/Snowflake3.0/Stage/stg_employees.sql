{{
    config(
        materialized='table'
    )
}}

with Source as (
    select * from {{ source('Snowflake3.0', 'Employee') }}
),

stg_employees as 
(
    select * from Source
)

select * from stg_employees
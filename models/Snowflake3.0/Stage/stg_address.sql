{{
    config(
        materialized='table'
    )
}}

with source as (
    select * from {{ source('Snowflake3.0', 'Address') }}
),

stg_address as (
    select * from source
)

select* from stg_address
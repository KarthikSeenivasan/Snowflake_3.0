{{
    config(
        materialized='table'
    )
}}
with source as (
    select * from {{ ref('stg_employees') }}
),

final as (
    select * from source
)

select * from final
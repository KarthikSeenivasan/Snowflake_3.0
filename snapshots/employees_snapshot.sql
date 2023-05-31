{% snapshot emplys_snapshot %}

{{
    config(
      target_database='raw',
      target_schema='snapshots',
      unique_key='id',

      strategy='check',
      check_cols='all',
    )
}}

select * from {{ ref('dim_employees') }}
{% endsnapshot %}
{% snapshot seed_snapshot %}
    {{
        config(
            unique_key='id',
            strategy='check',
            target_database='analytics',
            target_schema='dave_snapshots',
            check_cols='all'
        )
    }}

    select * from {{ ref('baby_seed') }}



 
 {% endsnapshot %}
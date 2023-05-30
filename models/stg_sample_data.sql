with

sample_data as (
    select * from {{ ref('sample_data') }}
)

select
    id,
    'dave' as person_name,
    'another col' as another_col

from sample_data

where
    id = 1
    and true
    and not false

select 
    id as sample_id, 
    type as observation_type,
    value as observed_value,
    date as observation_date

from {{ ref('sample_data') }}
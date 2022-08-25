select 
    *,
    true as is_observed 

from {{ ref('sample_data_1') }}
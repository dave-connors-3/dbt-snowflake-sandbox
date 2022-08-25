select

    {{ dbt_utils.surrogate_key([
        'id', 
        'type'
        ]) 
    }} as hash_key,
    {{ integer_surrogate_key([
        'id', 
        'type'
        ]) 
    }} as int_key,
    *

from {{ ref('sample_data_2') }} 


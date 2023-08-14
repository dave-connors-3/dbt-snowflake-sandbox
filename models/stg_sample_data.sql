select * 
    from {{ ref('sample_data') }}

where id = 1


with

source1 as (

    select
        'source1' as source_name,
        c_custkey as source_id
    
    from {{ source('sf_tpch', 'customer') }}
    order by c_custkey
),

source2 as (

    select
        'source2' as source_name,
        c_custkey as source_id
    
    from {{ source('sf_tpch', 'customer') }}
    order by c_custkey
  

),

unioned as(

    select * from source1
    union all
    select * from source2

),

final as (

    select 
        {{ dbt_utils.surrogate_key(['source_name', 'source_id']) }} as surrogate_key,
        md5_number_lower64(cast(coalesce(cast(source_name as 
    varchar
), '') || '-' || coalesce(cast(source_id as 
    varchar
), '') as 
    varchar
)) as surrogate_key_int,
        source_name,
        source_id
    
    from unioned

)

select * from final
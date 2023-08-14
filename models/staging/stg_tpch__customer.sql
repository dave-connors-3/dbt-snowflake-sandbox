
with source as (

    select * from {{ source('tpch_sf10', 'customer') }}

),

renamed as (

    select
        c_custkey as customer_id,
        c_name,
        c_address,
        c_nationkey,
        c_phone,
        c_acctbal,
        c_mktsegment,
        c_comment

    from source

)

select * from renamed

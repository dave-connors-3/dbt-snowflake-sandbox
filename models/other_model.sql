with

simple_model as (
    select * from {{ ref('simple_model') }}
)

select * from simple_model
where id = 1
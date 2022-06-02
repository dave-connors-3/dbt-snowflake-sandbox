with data as (

    select 1 as id

    union all

    select 2 as id
)

select * from data


-- {{ target.name in ['dev', 'default', 'ci'] }}
-- {{ target.database }}
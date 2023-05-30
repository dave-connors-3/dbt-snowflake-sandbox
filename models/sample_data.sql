with data as (

    select 
        1 as id,
        'dave' as person

    union all

    select 
        2 as id,
        'nate' as person

    
    union all

    select 
        3 as id,
        '{{ var('person') }}' as person

)

select * from data


-- {{ target.name in ['dev', 'default', 'ci'] }}
-- {{ target.database }}

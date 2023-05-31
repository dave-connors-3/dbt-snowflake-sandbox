with data as (

    select 
        1 as id,
        'dave' as person,
        '{{ var('another_person') }}' as another_person

    union all

    select 
        2 as id,
        'nate' as person,
        '{{ var('another_person') }}' as another_person

    
    union all

    select 
        3 as id,
        '{{ var('person') }}' as person,
        '{{ var('another_person') }}' as another_person

)

select * from data


-- {{ target.name in ['dev', 'default', 'ci'] }}
-- {{ target.database }}

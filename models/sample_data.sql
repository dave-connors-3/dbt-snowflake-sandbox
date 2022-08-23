with data as (

    {% for i in range(1, 101) %}
    {% if i % 3 == 0 %}
        {% set type = 'blind' %}
    {% elif i % 2 == 0 %}
        {% set type = 'double blind' %}
    {% else %}    
        {% set type = 'randomized' %}
    {% endif %}

    select {{ i }} as id, '{{ type }}' as type, {{ 2*i }} as value, dateadd(year, -1, current_date()) + {{ i }} as date 

    {% if not loop.last %}

    union all
        
    {% endif %}
        
    {% endfor %}

)

select * from data


-- {{ target.name in ['dev', 'default', 'ci'] }}
-- {{ target.database }}
{% test assert_data_types(model, column_name, data_type, precision) %}
    
    select 
        *
    from {{ model.database }}.information_schema.columns 
    where 
        table_name = '{{ model.name | upper }}'
        and table_schema = '{{ model.schema | upper }}'
        and column_name = '{{ column_name | upper }}'
        {{ get_data_type_filter(data_type, precision) }}
        
{% endtest %}
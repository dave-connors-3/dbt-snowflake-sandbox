{% macro get_data_type_filter(data_type, precision) %}
    {%- if data_type == 'varchar' -%}
        {%- set compare_type = 'TEXT' -%}
    {%- else -%}
        {%- set compare_type = data_type | upper -%}
    {%- endif -%}

    {%- if data_type == 'varchar' -%}
        {%- set compare_col = 'character_maximum_length' -%}
    {%- else -%}
        {%- set compare_col = 'numeric_precision' -%}
    {%- endif -%}

    and (data_type <> '{{ compare_type }}'
    or {{ compare_col }} <> {{ precision }})
{% endmacro %}
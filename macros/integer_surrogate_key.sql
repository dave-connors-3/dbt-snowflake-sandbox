{% macro integer_surrogate_key(field_list) %}
    
    {%- set fields = [] -%}
    {%- for field in field_list -%}
    
        {%- set _ = fields.append(
        "coalesce(cast(" ~ field ~ " as varchar), '')"
        ) -%}

    {%- if not loop.last %}
        {%- set _ = fields.append("'-'") -%}
    {%- endif -%}

    {%- endfor -%}

    md5_number_lower64({{ fields | join(' || ') }})

{%- endmacro -%}
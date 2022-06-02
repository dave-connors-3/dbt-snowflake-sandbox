{% macro generate_database_name(custom_database_name, node) -%}

    {%- set default_database = target.database -%}
    {% if not custom_database_name and node.is_relational and not node.is_ephemeral %}
        {{ exceptions.raise_compiler_error(
            'Object must have a custom database configured:' ~ node.fqn
        )}}
    {% endif%}

    {%- if target.name in ['dev', 'default', 'ci'] -%}

        {{ default_database }}

    {%- else -%}

        {{ custom_database_name | trim }}

    {%- endif -%}

{%- endmacro %}
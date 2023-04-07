{% macro get_money(dollars, cents) %}
    ${{ dollars }}.{{ cents }}
{% endmacro %}
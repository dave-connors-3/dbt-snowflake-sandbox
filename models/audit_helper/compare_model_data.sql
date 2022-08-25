{% set old_etl_relation=ref('sample_data_1') -%}

{% set dbt_relation=ref('sample_data_2') %}

{{ audit_helper.compare_relations(
    a_relation=old_etl_relation,
    b_relation=dbt_relation
) }}
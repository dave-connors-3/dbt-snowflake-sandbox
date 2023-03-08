{% set prod_model %}
  select
    *
  from analytics.dbt_dconnors_prod.stg_sample_data
{% endset %}

{% set dev_model %}
  select
    *
  from {{ ref('stg_sample_data') }}
{% endset %}

{{ audit_helper.compare_queries(
    a_query=prod_model,
    b_query=dev_model,
    primary_key="id"
) }}
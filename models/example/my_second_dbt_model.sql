
-- Use the `ref` function to select from other models
{{ config(schema='marketing_sql') }}
select *
from {{ ref('my_first_dbt_model') }}
where id = 1

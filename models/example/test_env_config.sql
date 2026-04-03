{{ config(
    materialized='table',
    database=env_var('DBT_DATABASENAME', target.database),
    schema=env_var('DBT_SCHEMANAME', 'default_testing_schema')
) }}

/* 
   This model doesn't need any source tables. 
   It just returns the values of your environment variables 
   so you can verify they are workingdd.
*/

select
    '{{ env_var("DBT_DATABASENAME", "NOT_FOUND") }}' as env_var_database,
    '{{ env_var("DBT_SCHEMANAME", "NOT_FOUND") }}' as env_var_schema,
    current_timestamp() as run_at

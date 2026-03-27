{% macro generate_schema_name(custom_schema_name, node) -%}
    {%- set default_schema = target.schema -%}

    {# If a custom schema is provided, use ONLY that name and ignore the target #}
    {%- if custom_schema_name is not none -%}
        {{ custom_schema_name | trim }}
    
    {# If no custom schema, just use the default (e.g., PROD) #}
    {%- else -%}
        {{ default_schema }}
    {%- endif -%}
{%- endmacro %}

{%- macro limit_data_in_dev(col_name, dev_days_of_data=3) -%}
    {%- if target.name == 'dev' -%}
    where {{ col_name}} >= date_sub(current_date, INTERVAL {{ dev_days_of_data}} DAY)
    {% endif %}
{%- endmacro %}
#macro 1
{% macro ethereum_conversion(column_name) %}

sum( {{ column_name }})/1e18

{% endmacro %}

#macro 2
{% macro stablecoin_conversion(column_name) %}

sum( {{ column_name }})/1e6

{% endmacro %}

#macro 3
{% macro conversion1(column_name, factor) %}

sum( {{column_name }})/1e{{factor}}

{% endmacro %}

#macro 4
{% macro conversion(column_name, factor) %}

sum( {{column_name }}/power(10, {{ factor}} ) )

{% endmacro %}
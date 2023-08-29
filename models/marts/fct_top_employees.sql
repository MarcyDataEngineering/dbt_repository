{{
  config(
    materialized = "table",
  )
}}

SELECT * FROM {{ ref('int_emp_sat_train') }}
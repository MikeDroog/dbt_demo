{{
    config(
        materialized='view'
    )
}}

SELECT *
FROM {{ ref('customers') }}
WHERE 1=1
AND gender = 'Male'
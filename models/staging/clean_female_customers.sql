SELECT *
FROM {{ ref('customers') }}
WHERE 1=1
AND gender = 'Female'
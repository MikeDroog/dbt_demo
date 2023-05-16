{{
  config(
    post_hook=("alter table {{ this }} add row access policy public.demo_policy on (GENDER)")
  )
}}

WITH male_customers AS (
    SELECT * 
    FROM {{ ref('clean_male_customers') }}
    WHERE 1=1
),

female_customers AS (
    SELECT * 
    FROM {{ ref('clean_female_customers') }}
    WHERE 1=1
),

final AS (
    SELECT *
    FROM male_customers
    union
    SELECT *
    FROM female_customers
)

SELECT *
FROM final
WHERE 1=1



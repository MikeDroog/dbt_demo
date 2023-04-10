SELECT *
FROM {{ source('tpch_sf1', 'customer') }}

-- tpch_sf1 is gotten from inside the .yml file, not the name itself
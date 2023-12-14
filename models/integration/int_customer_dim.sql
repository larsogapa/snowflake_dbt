{% set variable = 'variable' %}

WITH  customer as (
    SELECT 
    C.C_CUSTKEY AS CUSTOMER_NK,
    C.C_NAME AS NAME,
    C.C_ADDRESS AS ADDRESS,
    N.N_NAME AS NATION,
    R.R_NAME AS REGION,
    C.C_PHONE AS PHONE,
    C.C_ACCTBAL AS ACCTBAL,
    C.C_COMMENT AS COMMENT
    FROM {{ref('stg_customer')}} C
    LEFT JOIN {{ref('stg_nation')}} N
    ON C.C_NATIONKEY = N.N_NATIONKEY
    LEFT JOIN {{ref('stg_region')}} R
    ON N.N_REGIONKEY = R.R_REGIONKEY

)

SELECT * FROM customer

{% set variable2 = 'variable2'%} 
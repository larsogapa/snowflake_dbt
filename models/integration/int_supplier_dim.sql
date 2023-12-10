with supplier as (
    SELECT 
    S.S_SUPPKEY AS SUPPLIER_NK,
    S.S_NAME AS NAME,
    S.S_ADDRESS AS ADDRESS,
    N.N_NAME AS NATION,
    R.R_NAME AS REGION,
    S.S_PHONE AS PHONE,
    S.S_ACCTBAL AS ACCTBAL,
    S.S_COMMENT AS COMMENT
    FROM {{ref('stg_supplier')}} S
    LEFT JOIN {{ref('stg_nation')}} N
    ON S.S_NATIONKEY = N.N_NATIONKEY
    LEFT JOIN {{ref('stg_region')}} R
    ON N.N_REGIONKEY = R.R_REGIONKEY   
)

select * from supplier